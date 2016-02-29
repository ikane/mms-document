'use strict';

var mmsDocument = angular.module("mmsDocument", ["ngAnimate", "ngTouch", "ui.bootstrap", "ngRoute"]);

mmsDocument.config(function($routeProvider) {
	$routeProvider
		.when('/', {controller:'MainController', templateUrl:'resources/app/partials/mms-document-search.html'})
		.when('/mms-document-detail', {controller:'MmsDocumentDetailsController', templateUrl:'resources/app/partials/mms-document-details.html'})
		.otherwise({redirectTo:'/'})
		;
});

mmsDocument.controller('MainController', MainController);
mmsDocument.controller('MmsDocumentDetailsController', MmsDocumentDetailsController);

function MainController($scope, $http) {
	
	$http.get('mmsdocuments')
		.success(function(data) {
			console.log(data);
			$scope.mmsdocuments = data;
		})
		.error(function(data) {
			alert('An error occured, check logs');
			console.log(data);
		})
		;
}

function MmsDocumentDetailsController($scope, $http) {
	
}