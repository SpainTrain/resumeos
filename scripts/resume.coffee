
###		###

###		when('/resume/references/:key', {controller: RelationCtrl, template: 'relation.html'}).
		when('/resume/projects/:key', {controller: RelationCtrl, template: 'relation.html'}).
		when('/resume/experience/:key', {controller: RelationCtrl, template: 'relation.html'}).
		when('/resume/education/:key', {controller: RelationCtrl, template: 'relation.html'}).###
resumeos_mod = angular.module('resumeos',[])
resumeos_mod.config ($routeProvider) ->
	$routeProvider.
		when('/resume', {controller: ListAllCtrl, template: 'list-all.html'}).
		when('/resume/skills', {controller: SkillsCtrl, template: 'list-skills.html'}).
		when('/resume/references', {controller: RefCtrl, template: 'list-refs.html'}).
		when('/resume/projects', {controller: ProjectsCtrl, template: 'list-projects.html'}).
		when('/resume/experience', {controller: ExpCtrl, template: 'list-exp.html'}).
		when('/resume/education', {controller: EduCtrl, template: 'list-edu.html'}).
		when('/resume/:section/:key', {controller: RelationCtrl, template: 'relation.html'}).
		otherwise({redirectTo: '/resume'})
		return this

@ContactCtrl = ($scope) ->
	$scope.contact = contact
	return this

@ListAllCtrl = ($scope, $location, $rootScope) ->
	$rootScope.cmd = "ls ~#{$location.path()}"
	$rootScope.back_target = "#/resume/"
	$scope.sections = sections
	return this

init_sect_ctrl = ($scope, $location, $rootScope) ->
	[basepath..., sect_name] = $location.path().split("/")
	$rootScope.back_target = "##{basepath.join('/')}"
	$scope[sect_name] = sections[sect_name].elements
	$rootScope.cmd = "ls ~#{$location.path()}"
	return this

@SkillsCtrl = ($scope, $location, $rootScope) ->
	init_sect_ctrl($scope, $location, $rootScope)
	return this

@RefCtrl = ($scope, $location, $rootScope) ->
	init_sect_ctrl($scope, $location, $rootScope)
	return this

@ProjectsCtrl = ($scope, $location, $rootScope) ->
	init_sect_ctrl($scope, $location, $rootScope)
	$scope.orgs = {}
	$scope.orgs[org.key] = org  for org in sections.experience.elements.concat sections.education.elements
	return this

@ExpCtrl = ($scope, $location, $rootScope) ->
	init_sect_ctrl($scope, $location, $rootScope)
	return this

@EduCtrl = ($scope, $location, $rootScope) ->
	init_sect_ctrl($scope, $location, $rootScope)
	return this

@RelationCtrl = ($scope, $location, $routeParams, $rootScope) ->
	$rootScope.cmd = "~/resume/bin/find_related #{$routeParams.key}"
	[basepath..., sect_name, route_key] = $location.path().split("/")
	$rootScope.back_target = "##{basepath.join('/')}/#{sect_name}"
	
	$scope.orgs = {}
	$scope.orgs[org.key] = org  for org in sections.experience.elements.concat sections.education.elements

	switch sect_name
		when "skills"
			curr_skill_tags = [route_key]
			$scope.education = (degree for degree in sections.education.elements when route_key in degree.skill_tags)
			$scope.experience = (job for job in sections.experience.elements when route_key in job.skill_tags)
			$scope.projects = (proj for proj in sections.projects.elements when route_key in proj.skill_tags)
			$scope.references = (ref for ref in sections.references.elements when route_key in ref.skill_tags)
		when "education", "experience"
			$scope[sect_name] = (item for item in sections[sect_name].elements when item.key is route_key)
			curr_skill_tags = $scope[sect_name][0].skill_tags
			$scope.projects = (proj for proj in sections.projects.elements when proj.org_key is route_key)
		when "projects"
			$scope.projects = (proj for proj in sections.projects.elements when proj.key is route_key)
			curr_skill_tags = $scope.projects[0].skill_tags
			org_key = $scope.projects[0].org_key
			$scope.education = (degree for degree in sections.education.elements when degree.key is org_key)
			$scope.experience = (job for job in sections.experience.elements when job.key is org_key)
		else
			console?.error("Why is section name #{sect_name}? Not valid!")

	$scope.skills = []
	for skill in curr_skill_tags
		do (skill) ->
			fam_added = {}
			fam_for_new_scope = null
			for skill_fam in sections.skills.elements
				do (skill, skill_fam) ->
					if skill_fam[skill]?
						if fam_added[skill_fam.name] isnt true
							fam_for_new_scope = {name: skill_fam.name, elements: {}}
							fam_added[skill_fam.name] = true
							$scope.skills.push fam_for_new_scope
						fam_for_new_scope[skill] = skill_fam[skill]
	return this
