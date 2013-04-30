@photogur = angular.module('photogur', ['ngResource'])

@photogur.config(($routeProvider, $locationProvider) ->
	$locationProvider.html5Mode(true)

	$routeProvider
	.when("/", 					{templateUrl: "pictures/index", controller: "PicturesController"})
	.when("/pictures", 			{templateUrl: "pictures/index", controller: "PicturesController"})
	.when("/pictures/new", 		{templateUrl: "pictures/new", controller: "PicturesController"})
	.when("/pictures/:id", 		{templateUrl: "pictures/show", controller: "PictureController"})
	.when("/pictures/:id/edit", {templateUrl: "pictures/edit", controller: "PictureController"})
	.otherwise({template:"Page not found by Angular."})
)

@photogur.run(['$window', '$templateCache', ($window, $templateCache) ->
	#Load the hamlc templates into the angular template cache when angular starts up.
	#This means angular doesn't need to download each template from the server
	#when a page is requested.
	$templateCache.put(name, templateFunction) for name, templateFunction of $window.JST
])