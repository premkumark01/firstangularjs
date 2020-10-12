<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html ng-app="myApp">
<head>
<meta charset="ISO-8859-1">
<title>AngularJs</title>

<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/angular.js"></script>
<script src="js/angular-route.min.js"></script>
<script src="js/app.js"></script>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">


<style type="text/css">
.header, .footer-area {
	border: 1px solid #DDD;
	padding: 20px;
	margin-top: 10px;
	box-shadow: 0px 0px 10px #DDD;
}

.content-area, .menu {
	margin-top: 10px;
}

.sidebar, .content {
	border: 1px solid #DDD;
	padding: 20px;
	box-shadow: 0px 0px 10px #DDD;
}
</style>
</head>
<body >
 

	<div class="container">
		<div class="row">



			<div class="header col-md-12">
				<h1>
					<a href="">Angularjs</a>
				</h1>
			</div>
			<div class="menu col-md-12">
				<div class="row">

					<!-- <nav class="navbar navbar-default">
						<div class="container-fluid">

							<ul class="nav navbar-nav">
								<li class="active"><a href="#">Home</a></li>
								<li><a href="#">Product</a></li>
								<li><a href="#">About Us</a></li>
								<li><a href="#">Blog</a></li>
							</ul>
						</div>
					</nav>
 -->

<!-- <a ng-href="#!/">Home</a>
<a ng-href="#!/aboutus">About Us</a>
<a ng-href="#!/news">News</a> -->


				<nav class="navbar navbar-default ">
						<div class="container-fluid">
							<ul class="nav navbar-nav">
								<li class="active"><a ng-href="#!/">Home</a></li>
								<li><a href="#!/product">Product</a></li>
								<li><a ng-href="#!/aboutus">About Us</a></li>
								<li><a ng-href="#!/blog">Blog</a></li>
							</ul>
							<div class="navbar-form navbar-left" >
								<div class="form-group">
									<input type="text" class="form-control" placeholder="Search" ng-model="search.$">
								</div>
								<button type="submit" class="btn btn-default">Submit</button>
							</div>
							<ul class="nav navbar-nav navbar-right">
								<li><a ng-href="#!/register""><span class="glyphicon glyphicon-user"></span>
										Sign Up</a></li>
								<li><a href="#"><span
										class="glyphicon glyphicon-log-in"></span> Login</a></li>
							</ul>
						</div>
					</nav> 



<div class="col-md-12 content-area">
				<div class="row">
					<div class="sidebar col-md-3">
						<ul class="">
							<li class="active"><a ng-href="#!/">Home</a></li>
								<li><a href="#!/product">Product</a></li>
								<li><a ng-href="#!/aboutus">About Us</a></li>
								<li><a ng-href="#!/blog">Blog</a></li>
						</ul>

					</div>

<div ng-view></div>
	</div>
			</div>





				</div>
			</div>
	
			<div class="col-md-12 footer-area">footer</div>



		</div>
	</div>


</body>
</html>