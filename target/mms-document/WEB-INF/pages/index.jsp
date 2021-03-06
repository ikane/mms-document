<!DOCTYPE html>

<html data-ng-app="mmsDocument">
	<head>
		<meta charset="utf-8">
    	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    
		<title>MMS Document Application</title>
		<meta name="description" content="MMS Document Application">
    	<meta name="author" content="MMS VERIFONE">
    	<link rel="shortcut icon" href="resources/favicon.ico">
		
		<!-- Vendor style -->
		<link rel="stylesheet" href="resources/css/bootstrap.min.css">
		<link rel="stylesheet" href="resources/css/ng-tags-input.min.css">
		<link rel="stylesheet" href="resources/css/ng-tags-input.bootstrap.min.css">
		
<!-- 		<link rel="styleSheet" href="resources/angular-ui-grid/ui-grid.min.css"/>    -->
		<link rel="styleSheet" href="https://cdn.rawgit.com/angular-ui/bower-ui-grid/master/ui-grid.min.css"/>   
		
		<!-- Custom style -->
		<link rel="stylesheet" href="resources/css/mms-document.css">
	</head>
	
	<body data-ng-controller="MainController">
		
		<div class="container">
			
			<!-- Static navbar -->
		      <nav class="navbar navbar-inverse" role="navigation">
		          <div class="navbar-header">
		              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
		                  <span class="sr-only">Toggle navigation</span>
		                  <span class="icon-bar"></span>
		                  <span class="icon-bar"></span>
		                  <span class="icon-bar"></span>
		              </button>
		              <a class="navbar-brand" href="/#/" style="color: #00aeef;font-weight: 600;">MMS-DOCUMENT</a>
		          </div>
		          <div class="navbar-collapse collapse">
		              <ul class="nav navbar-nav">
		                  <li class="active"><a href="#search"><span class="glyphicon glyphicon-home"></span>Home</a></li>
		                  <li><a href="#/info"><span class="glyphicon glyphicon-info-sign"></span>Information</a></li>
		              </ul>
		          </div><!--/.nav-collapse -->
		      </nav>
		
		      <div data-ng-view></div>
		
		</div> <!-- /container main-->
		
		
		
		
		<!-- Vendor scripts -->
		<script type="text/javascript" src="resources/js/angular.min.js"></script>
		<script type="text/javascript" src="resources/js/angular-animate.min.js"></script>
		<script type="text/javascript" src="resources/js/angular-touch.min.js"></script>
		<script type="text/javascript" src="resources/js/angular-route.min.js"></script>
		<script type="text/javascript" src="resources/js/jquery-1.12.1.min.js"></script>
		<script type="text/javascript" src="resources/js/ui-bootstrap-tpls-1.2.1.min.js"></script>
		
<!-- 		<script src="resources/js/angular-ui-grid/ui-grid.min.js"></script> -->
		<script src="https://cdn.rawgit.com/angular-ui/bower-ui-grid/master/ui-grid.min.js"></script>
		
		<!-- shim is needed to support non-HTML5 FormData browsers (IE8-9)-->
		<script src="resources/js/ng-file-upload-shim.min.js"></script>
		<script src="resources/js/ng-file-upload-all.min.js"></script>
		<script type="text/javascript" src="resources/js/ng-tags-input.min.js"></script>
		
		<!-- Custom scripts -->
		<script type="text/javascript" src="resources/app/app.js"></script>
		
	</body>
</html>
