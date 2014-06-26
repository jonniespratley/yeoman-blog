'use strict'
angular.module('learningYeomanCh3App').factory "PostsService", ($resource, $q, $route, Post) ->
	api =
		query: () ->
			dfd = $q.defer()
			Post.query().$promise.then(
				(posts)->
					dfd.resolve(posts)
				,
				(error)->
					dfd.reject(error)
			)
			return dfd.promise
		get: (id) ->
			dfd = $q.defer()
			throw new Error('Must provide ID!') unless id
			Post.get({id: id}).$promise.then(
				(post) ->
					dfd.resolve(post)
				,
				(error)->
					dfd.reject(error)
			)
			return dfd.promise