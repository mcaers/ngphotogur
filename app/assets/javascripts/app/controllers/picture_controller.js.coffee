@photogur.controller("PictureController", ($scope, $routeParams, Picture) ->

	# console.log("The id is", $routeParams.id)

	# $scope.picture = Picture.get({id: $routeParams.id})
	$scope.picture = Picture.get($routeParams, $.noop, (data) ->
		alert("Could not retrieve the picture")
	)	 
)