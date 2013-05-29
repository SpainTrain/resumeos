'use strict'

# Declare app level module which depends on filters, and services
App = angular.module('app', [
  'app.controllers'
  'resumeos.data'
])

App.config([
  '$routeProvider'
  '$locationProvider'

($routeProvider, $locationProvider) ->

  $routeProvider.when('/resume',
      controller: ListAllCtrl
      templateUrl: 'partials/list-all.html'
    ).when('/resume/skills',
      controller: SkillsCtrl
      templateUrl: 'list-skills.html'
    ).when('/resume/references',
      controller: RefCtrl
      templateUrl: 'list-refs.html'
    ).when('/resume/projects',
      controller: ProjectsCtrl
      templateUrl: 'list-projects.html'
    ).when('/resume/experience',
      controller: ExpCtrl
      templateUrl: 'list-exp.html'
    ).when('/resume/education',
      controller: EduCtrl
      templateUrl: 'list-edu.html'
    ).when('/resume/:section/:key',
      controller: RelationCtrl
      templateUrl: 'relation.html'
    ).otherwise({redirectTo: '/resume'})

  # $routeProvider
  #   .when('/resume', { templateUrl: 'partials/carousel.html'})
  #   .otherwise({redirectTo: '/resume'})

  # Without server side support html5 must be disabled.
  $locationProvider.html5Mode(false)
])