/**
 * 
 */


var application=angular.module('BabySitterManagement', ['ngRoute']);




application.controller('RegistrationController', function($scope){
	$scope.toddlerId=1;
	$scope.successRegistration="Registation Successfull";
	
});

application.controller('ErrorController', function($scope){
	$scope.errorMessage="Oops Something went wrong";
	
});

application.controller('UpdateController', function($scope){
	
});

