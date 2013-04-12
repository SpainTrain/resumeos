resumeos_mod = angular.module('resumeos',['resumeos.data'])
resumeos_mod.config( ($routeProvider) ->
  $routeProvider.when('/resume',
      controller: ListAllCtrl
      template: 'list-all.html'
    ).when('/resume/skills',
      controller: SkillsCtrl
      template: 'list-skills.html'
    ).when('/resume/references',
      controller: RefCtrl
      template: 'list-refs.html'
    ).when('/resume/projects',
      controller: ProjectsCtrl
      template: 'list-projects.html'
    ).when('/resume/experience',
      controller: ExpCtrl
      template: 'list-exp.html'
    ).when('/resume/education',
      controller: EduCtrl
      template: 'list-edu.html'
    ).when('/resume/:section/:key',
      controller: RelationCtrl
      template: 'relation.html'
    ).otherwise({redirectTo: '/resume'})
  return this
)

@ContactCtrl = ($scope, contact) ->
  $scope.contact = contact
  return this

@ListAllCtrl = ($scope, $location, $rootScope, sections) ->
  $rootScope.cmd = "ls ~#{$location.path()}"
  $rootScope.back_target = "#/resume/"
  $scope.sections = sections
  return this

###
# Turn object into an array
###
arrayify = (obj) ->
  toreturn = []
  for own key, val of obj
    toreturn.push {key: key, val: val}
  return toreturn

###
# Common initialization for section controllers
###
init_sect_ctrl = ($scope, $location, $rootScope, sections) ->
  [basepath..., sect_name] = $location.path().split("/")
  $rootScope.back_target = "##{basepath.join('/')}"
  $scope[sect_name] = sections[sect_name].elements
  $rootScope.cmd = "ls ~#{$location.path()}"
  return this

@SkillsCtrl = ($scope, $location, $rootScope, sections) ->
  init_sect_ctrl($scope, $location, $rootScope, sections)
  $scope.arrayify = arrayify
  return this

@RefCtrl = ($scope, $location, $rootScope, sections) ->
  init_sect_ctrl($scope, $location, $rootScope, sections)
  return this

@ProjectsCtrl = ($scope, $location, $rootScope, sections) ->
  init_sect_ctrl($scope, $location, $rootScope, sections)
  $scope.orgs = {}
  for org in sections.experience.elements.concat sections.education.elements
    $scope.orgs[org.key] = org
  return this

@ExpCtrl = ($scope, $location, $rootScope, sections) ->
  init_sect_ctrl($scope, $location, $rootScope, sections)
  return this

@EduCtrl = ($scope, $location, $rootScope, sections) ->
  init_sect_ctrl($scope, $location, $rootScope, sections)
  return this

@RelationCtrl = ($scope, $location, $routeParams, $rootScope, sections) ->
  $rootScope.cmd = "~/resume/bin/find_related #{$routeParams.key}"
  [basepath..., sect_name, route_key] = $location.path().split("/")
  $rootScope.back_target = "##{basepath.join('/')}/#{sect_name}"
    
  $scope.orgs = {}
  for org in sections.experience.elements.concat sections.education.elements
    $scope.orgs[org.key] = org

  edu = sections.education
  exp = sections.experience
  prj = sections.projects
  refs = sections.references

  switch sect_name
    when "skills"
      curr_skill_tags = [route_key]
      $scope.education =
        for degree in edu.elements when route_key in degree.skill_tags
          degree
      $scope.experience =
        for job in exp.elements when route_key in job.skill_tags
          job
      $scope.projects =
        for proj in prj.elements when route_key in proj.skill_tags
          proj
      $scope.references =
        for ref in refs.elements when route_key in ref.skill_tags
          ref
    when "education", "experience"
      $scope[sect_name] =
        for item in sections[sect_name].elements when item.key is route_key
          item
      curr_skill_tags = $scope[sect_name][0].skill_tags
      $scope.projects =
        for proj in sections.projects.elements when proj.org_key is route_key
          proj
    when "projects"
      $scope.projects =
        for proj in sections.projects.elements when proj.key is route_key
          proj
      curr_skill_tags = $scope.projects[0].skill_tags
      org_key = $scope.projects[0].org_key
      $scope.education =
        for degree in sections.education.elements when degree.key is org_key
          degree
      $scope.experience =
        for job in sections.experience.elements when job.key is org_key
          job
    else
      console?.error("Why is section name #{sect_name}? Not valid!")

  new_skill_fam = {name: "All", elements: {}}
  $scope.skills = [new_skill_fam]

  for skill_fam in sections.skills.elements
    for skill_tag in curr_skill_tags
      if skill_fam.elements[skill_tag]?
        new_skill_fam.elements[skill_tag] = skill_fam.elements[skill_tag]

  $scope.arrayify = arrayify

  return this
