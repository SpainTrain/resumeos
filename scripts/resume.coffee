
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

@BackBtnCtrl = ($scope, $location) ->
	loc_arr = $location.path().split("/")
	loc_arr.pop()
	$scope.back_target = "##{loc_arr.join('/')}"
	return this

@ContactCtrl = ($scope) ->
	$scope.contact = contact
	return this

@ListAllCtrl = ($scope, $location, $rootScope) ->
	$rootScope.cmd = "ls ~#{$location.path()}"
	$scope.sections = sections
	return this

@SkillsCtrl = ($scope, $location, $rootScope) ->
	$rootScope.cmd = "ls ~#{$location.path()}"
	$scope.skills = sections.skills.elements
	return this

@RefCtrl = ($scope, $location, $rootScope) ->
	$rootScope.cmd = "ls ~#{$location.path()}"
	$scope.references = sections.references.elements
	return this

@ProjectsCtrl = ($scope, $location, $rootScope) ->
	$rootScope.cmd = "ls ~#{$location.path()}"
	$scope.projects = sections.projects.elements
	$scope.orgs = {}
	$scope.orgs[org.key] = org  for org in sections.experience.elements.concat sections.education.elements
	return this

@ExpCtrl = ($scope, $location, $rootScope) ->
	$rootScope.cmd = "ls ~#{$location.path()}"
	$scope.experience = sections.experience.elements
	return this

@EduCtrl = ($scope, $location, $rootScope) ->
	$rootScope.cmd = "ls ~#{$location.path()}"
	$scope.education = sections.education.elements
	return this

@RelationCtrl = ($scope, $location, $routeParams, $rootScope) ->
	$rootScope.cmd = "~/resume/bin/find_related #{$routeParams.key}"
	$scope.sections = sections
	$scope.location = $location
	[basepath..., $scope.sect_name, $scope.key] = $location.path().split("/")
	
	$scope.orgs = {}
	$scope.orgs[org.key] = org  for org in sections.experience.elements.concat sections.education.elements

	switch $scope.sect_name
		when "skills"
			$scope.education = (degree for degree in sections.education.elements when $scope.key in degree.skill_tags)
			$scope.experience = (job for job in sections.experience.elements when $scope.key in job.skill_tags)
			$scope.projects = (proj for proj in sections.projects.elements when $scope.key in proj.skill_tags)
			$scope.references = (ref for ref in sections.references.elements when $scope.key in ref.skill_tags)
	return this
