'use strict'

angular.module('learningYeomanCh3App', [
	'ngCookies'
	'ngResource'
	'ngSanitize'
	'ngRoute'
])
	.config ($routeProvider) ->
		$routeProvider
			
			.when '/',
				templateUrl: 'views/main.html'
				controller: 'MainCtrl'
			
			.when '/about',
				templateUrl: 'views/about.html'
				controller: 'AboutCtrl'
			
			.when '/posts',
				templateUrl: 'views/posts.html'
				controller: 'PostsCtrl'
				resolve: 
					posts: (PostsService) ->
						return PostsService.fetch()
			
			.when '/posts/view/:postId*',
				templateUrl: 'views/post-detail.html'
				controller: 'PostDetailCtrl'
				resolve: 
					post: (PostsService) ->
						return PostsService.get()
			
			.when '/posts/edit/:postId',
				templateUrl: 'views/post-edit.html'
				controller: 'PostEditCtrl'
				resolve:
					post: (PostsService) ->
						return PostsService.get()

			.when '/posts/new',
				templateUrl: 'views/post-edit.html'
				controller: 'PostNewCtrl'


			.otherwise
				redirectTo: '/'


#App Controller
angular.module('learningYeomanCh3App').controller 'AppCtrl', ($rootScope, $log, $route, $location, $routeParams, $cookieStore, config) ->
	$rootScope.name = 'chapter3App'
	
	App = angular.copy(config)
	App.session = $cookieStore.get('App.session')
	App.location = $location
	App.routeParams = $routeParams
	
	window.App = $rootScope.App = App
	$log.info $rootScope
	
	