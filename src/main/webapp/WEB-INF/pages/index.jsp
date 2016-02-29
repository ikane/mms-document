<!DOCTYPE html>

<html data-ng-app="mmsDocument">
	<head>
		<title>MMS Document Application</title>
		
		<!-- Vendor style -->
		<link href="resources/css/bootstrap.min.css" rel="stylesheet">
		
		<!-- Custom style -->
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
		              <a class="navbar-brand" href="#">MMS-DOCUMENT</a>
		          </div>
		          <div class="navbar-collapse collapse">
		              <ul class="nav navbar-nav">
		                  <li class="active"><a href="#search">Search</a></li>
		                  <li><a href="#info">Information</a></li>
		              </ul>
		          </div><!--/.nav-collapse -->
		      </nav>
		
		      <div data-ng-view></div>
		
		</div> <!-- /container main-->
		
		<!-- 
		<nav class="navbar navbar-inverse navbar-fixed-top">
		  <div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">MMS DOCUMENT</a>
			</div>
		  </div>
		</nav>
		
		<div class="jumbotron">
		  <div class="container">
			<h1>Title</h1>
			<p>				
				Welcome Welcome!
		    </p>
		    <p>
				<a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a>
		    </p>
		  </div>
		</div>
 
		
		<div class="container">
 
  			<div class="row">
  
				<table class="table">
					<tr>
						<td>Title</td>
						<td>Description</td>
						<td>Creation Date</td>
					</tr>
					
					<tr data-ng-repeat="doc in mmsdocuments">
						<td>{{doc.title}}</td>
						<td>{{doc.description}}</td>
						<td>{{doc.creationDate | date:'dd/MM/yyyy'}}</td>
					</tr>
				</table>
				
			</div>
		</div>
		 
		
		<hr>
		 
		<footer>
			<p>© MMS Verifone 2016</p>
		</footer>
		-->
		
		
		<!-- Vendor scripts -->
		<script type="text/javascript" src="resources/js/angular.min.js"></script>
		<script type="text/javascript" src="resources/js/angular-animate.min.js"></script>
		<script type="text/javascript" src="resources/js/angular-touch.min.js"></script>
		<script type="text/javascript" src="resources/js/angular-route.min.js"></script>
		<script type="text/javascript" src="resources/js/ui-bootstrap-tpls-1.2.1.min.js"></script>
		
		<!-- Custom scripts -->
		<script type="text/javascript" src="resources/app/app.js"></script>
		
		
	</body>
</html>
