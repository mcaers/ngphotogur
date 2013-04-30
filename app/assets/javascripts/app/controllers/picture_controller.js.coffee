@photogur.controller("PictureController", ($scope, $routeParams, Picture) ->

	# console.log("The id is", $routeParams.id)

	# $scope.picture = Picture.get({id: $routeParams.id})
	$scope.picture = Picture.get($routeParams, $.noop, (data) ->
		$scope.errorMessage = "Could not retrieve the picture."
	)	

	$scope.updatePicture = ->
		Picture.update($scope.picture)
)