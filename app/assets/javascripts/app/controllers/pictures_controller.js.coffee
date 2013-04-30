@photogur.controller("PicturesController", ($scope, Picture) ->
	
	$scope.pictures = Picture.query(
		(data) ->
			console.log("Success!!")
		,
		(data) ->
			alert("Could not retrieve Picture data.")
	)
	

	$scope.savePicture = ->
		Picture.save($scope.newPicture,
			(data) ->
				console.log("This works")
			,(response) ->
				$scope.errors = response.data.errors
				window.michelle = $scope.errors
		)
)






# $scope.name = "homer"

	# console.log "Pictures Controller is Live"
	# window.testdebug = $scope
	# $scope.$watch('name', ->
	# 	console.log "Name changed to #{$scope.name}"                                         
	# 	)

	# $scope.isHomer = ->
	# 	return $scope.name.toLowerCase() == 'homer'