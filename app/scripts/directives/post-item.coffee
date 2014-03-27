'use strict'
angular.module('learningYeomanCh3App').directive('postItem', () ->
	require: '^ngModel'
	restrict: 'E'
	replace: true
	scope: 
		ngModel: '='
	#templateUrl: 'views/post-item.html'
	template: '''
		<div class="media post" data-id="{{post._id}}">
		<a class="pull-left" ng-href="#/posts/{{post._id}}"> <img class="media-object img-thumbnail" alt="{{post.title}}" ng-src="{{post.image}}" /> </a>
		<div class="media-body">
			<div class="pull-right actions">
				<div class="btn-group">
					<a ng-href="#/posts/{{post._id}}/edit" class="btn btn-default btn-m edit"> <i class="glyphicon glyphicon-pencil"></i> </a>
					<a ng-href="#/posts/{{post._id}}/delete" class="btn btn-danger btn-m delete"> <i class="glyphicon glyphicon-remove"></i> </a>
				</div>
			</div>
			<h4 class="media-heading">{{post.title}}</h4>
			<p>
				{{post.body}}
			</p>
			</div>
		</div>	
	'''
	link: (scope, element, attrs) ->
		#element.on('mouseover').find('.actions').fadeToggle()
	)