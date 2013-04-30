@photogur.controller("PicturesController", ($scope, Picture) ->
	

	$scope.pictures = Picture.query()
	window.Picture = Picture
	)

# $scope.name = "homer"

	# console.log "Pictures Controller is Live"
	# window.testdebug = $scope
	# $scope.$watch('name', ->
	# 	console.log "Name changed to #{$scope.name}"                                         
	# 	)

	# $scope.isHomer = ->
	# 	return $scope.name.toLowerCase() == 'homer'