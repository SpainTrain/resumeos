resumeos_mod = angular.module('resumeos',[])
resumeos_mod.config ($routeProvider) ->
	$routeProvider.
		when('/resume', {controller: ListAllCtrl, template: 'list-all.html'}).
		when('/resume/skills', {controller: SkillsCtrl, template: 'list-skills.html'}).
		when('/resume/references', {controller: RefCtrl, template: 'list-refs.html'}).
		when('/resume/projects', {controller: ProjectsCtrl, template: 'list-projects.html'}).
		when('/resume/experience', {controller: ExpCtrl, template: 'list-exp.html'}).
		when('/resume/education', {controller: EduCtrl, template: 'list-edu.html'}).
		otherwise({redirectTo: '/resume'})
		return this

@ContactCtrl = ($scope) ->
	$scope.contact = contact
	return this

@ListAllCtrl = ($scope, $location) ->
	$scope.sections = sections
	return this

@SkillsCtrl = ($scope) ->
	$scope.skills = sections.skills.elements
	return this

@RefCtrl = ($scope) ->
	$scope.references = sections.references.elements
	return this

@ProjectsCtrl = ($scope) ->
	$scope.projects = sections.projects.elements
	return this

@ExpCtrl = ($scope) ->
	$scope.experience = sections.experience.elements
	return this

@EduCtrl = ($scope) ->
	$scope.education = sections.education.elements
	return this
