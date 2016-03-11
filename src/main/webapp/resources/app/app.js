'use strict';

var mmsDocument = angular.module("mmsDocument", ["ngAnimate", "ngTouch", "ui.bootstrap", "ngRoute", "ui.grid", "ngFileUpload", "ngTagsInput"]);


mmsDocument.config(function($routeProvider) {
	$routeProvider
		.when('/', {controller:'MainController', templateUrl:'resources/app/partials/mms-document-search.html'})
		.when('/mms-document-detail', {controller:'MmsDocumentDetailsController', templateUrl:'resources/app/partials/mms-document-details.html'})
		.when('/info', {controller:'MainController', templateUrl:'resources/app/partials/mms-document-info.html'})
		.otherwise({redirectTo:'/'})
		;
});

mmsDocument.controller('MainController', MainController);
mmsDocument.controller('MmsDocumentDetailsController', MmsDocumentDetailsController);

function MainController($scope, $http) {
	
	function init() {
		
		$scope.mmsDocumentData = [];
		
		$scope.gridOptions = {};
		$scope.gridOptions.data = 'mmsDocumentData';
		
		/*  class="glyphicon glyphicon-eye-open green" */
		$scope.gridOptions.columnDefs = [
		                                 {name:'idDocument', enableCellEdit: false},
		                                 {name:'title'},
		                                 {name:'description', enableCellEdit: false},
		                                 {name:'creationDate', cellFilter:'date', type:'date', enableFiltering:false},
		                                 {name:'Hyperlink', cellTemplate:'<div>' + '<a href="download?filename={{row.entity.title}}" target="_blank">{{row.entity.title}}</a>' + '</div>' }
		                               ];
	}
	
	$http.get('mmsdocuments')
		.success(function(data) {
			//console.log(data);
			$scope.mmsDocumentData = data;
		})
		.error(function(data) {
			alert('An error occured, check logs');
			console.log(data);
		})
		;
	
	//Initialization
	init();
}


function MmsDocumentDetailsController($scope, $http, Upload) {
	
	$scope.mmsDocument={};
	
	$scope.saveDocument = function() {
		//mmsDocumentFile
		
		//alert('saving...');
		console.log("saving document...");
		
		if ($scope.mmsDocumentForm.mmsDocumentFile.$valid && $scope.mmsDocumentFile) {
	        $scope.upload($scope.mmsDocumentFile);
	    }
	};
	
	// upload on file select or drop 
    $scope.upload = function (file) {
    	
    	var tags = [];
    	for (var i = 0; i < $scope.mmsDocument.tags.length; i++) {
    		var tag = $scope.mmsDocument.tags[i];
    		console.log(tag.text);
    		tags.push(tag.text);
    	}
    	
        Upload.upload({
            url: 'uploadMmsDocument',
            data: {file: file, 'documentTitle': $scope.mmsDocument.title, 'documentDescription': $scope.mmsDocument.description, 'documentTags': tags.join()}
        }).then(function (resp) {
            console.log('Success ' + resp.config.data.file.name + 'uploaded. Response: ' + resp.data);
        }, function (resp) {
            console.log('Error status: ' + resp.status);
        }, function (evt) {
            var progressPercentage = parseInt(100.0 * evt.loaded / evt.total);
            console.log('progress: ' + progressPercentage + '% ' + evt.config.data.file.name);
        });
    };	
}
