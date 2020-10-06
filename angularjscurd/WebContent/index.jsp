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
<body ng-controller="myCtrl">

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




					<nav class="navbar navbar-default ">
						<div class="container-fluid">
							<div class="navbar-header">
								<a class="navbar-brand" href="#">WebSiteName</a>
							</div>
							<ul class="nav navbar-nav">
								<li class="active"><a href="#">Home</a></li>
								<li><a href="#">Page 1</a></li>
								<li><a href="#">Page 2</a></li>
								<li><a href="#">Product</a></li>
								<li><a href="#">About Us</a></li>
								<li><a href="#">Blog</a></li>
							</ul>
							<div class="navbar-form navbar-left" >
								<div class="form-group">
									<input type="text" class="form-control" placeholder="Search" ng-model="search.$">
								</div>
								<button type="submit" class="btn btn-default">Submit</button>
							</div>
							<ul class="nav navbar-nav navbar-right">
								<li><a href="#"><span class="glyphicon glyphicon-user"></span>
										Sign Up</a></li>
								<li><a href="#"><span
										class="glyphicon glyphicon-log-in"></span> Login</a></li>
							</ul>
						</div>
					</nav>












				</div>
			</div>
			<div class="col-md-12 content-area">
				<div class="row">
					<div class="sidebar col-md-3">
						<ul class="">
							<li class="active"><a href="#">Home</a></li>
							<li><a href="#">Page 1</a></li>
							<li><a href="#">Page 2</a></li>
							<li><a href="#">Page 3</a></li>
						</ul>

					</div>
					<div class="content col-md-9">
						<button data-toggle="modal" data-target="#myModalSave"
							type="button" class="btn btn-success">Add New Product</button>
						<br> <br>

						<div class="alert alert-success alert-dismissible"
							ng-show="message">
							<a href="#" class="close" ng-click="messageClose()">&times;</a> <strong>Success!</strong>
							{{message}} action.
						</div>


						<table class="table table-striped table-bordered">
							<thead>
								<tr>
									<th>Id</th>
									<th>Product Name</th>
									<th>Price</th>
									<th>Quantity</th>
									<th colspan="2">Action</th>
								</tr>
							</thead>
							<tbody>
								<tr ng-repeat="product in products | filter:search">
									<td>{{$index + 1}}</td>
									<td>{{product.pname}}</td>
									<td>{{product.price}}</td>
									<td>{{product.qty}}</td>
									<td><button data-toggle="modal" data-target="#myModalEdit"
											type="button" class="btn btn-primary"
											ng-click="selectProduct(product)">Edit</button></td>
									<td><button data-toggle="modal"
											data-target="#myModalDelete" type="button"
											class="btn btn-danger" ng-click="selectProduct(product)">Delete</button></td>
								</tr>
							</tbody>
						</table>

						<!-- Modal -->
						<div id="myModalSave" class="modal fade" role="dialog">
							<div class="modal-dialog">

								<!-- Modal content-->
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal">&times;</button>
										<h4 class="modal-title">Insert Product</h4>
									</div>
									<div class="modal-body">

										<form>
											<div class="form-group">
												<label for="pname">Product Name:</label> <input
													ng-model="newProduct.pname" type="text"
													class="form-control" id="pname">
											</div>
											<div class="form-group">
												<label for="price">Price:</label> <input
													ng-model="newProduct.price" type="text"
													class="form-control" id="price">
											</div>
											<div class="form-group">
												<label for="qty">Quantity:</label> <input
													ng-model="newProduct.qty" type="text" class="form-control"
													id="qty">
											</div>

											<button ng-click="saveProduct()" data-dismiss="modal"
												type="submit" class="btn btn-success">Submit</button>
										</form>



									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-default"
											data-dismiss="modal">Close</button>
									</div>
								</div>

							</div>
						</div>






						<!-- Edit Modal -->
						<div id="myModalEdit" class="modal fade" role="dialog">
							<div class="modal-dialog">

								<!-- Modal content-->
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal">&times;</button>
										<h4 class="modal-title">Edit Product</h4>
									</div>
									<div class="modal-body">

										<form>
											<div class="form-group">
												<label for="pname">Product Name:</label> <input
													ng-model="clickedProduct.pname" type="text"
													class="form-control" id="pname">
											</div>
											<div class="form-group">
												<label for="price">Price:</label> <input
													ng-model="clickedProduct.price" type="text"
													class="form-control" id="price">
											</div>
											<div class="form-group">
												<label for="qty">Quantity:</label> <input
													ng-model="clickedProduct.qty" type="text"
													class="form-control" id="qty">
											</div>

											<button ng-click="updateProduct()" data-dismiss="modal"
												type="submit" class="btn btn-success">Submit</button>
										</form>



									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-default"
											data-dismiss="modal">Close</button>
									</div>
								</div>

							</div>
						</div>





						<!-- Delete Modal -->
						<div id="myModalDelete" class="modal fade" role="dialog">
							<div class="modal-dialog">

								<!-- Modal content-->
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal">&times;</button>
										<h4 class="modal-title">Delete Product</h4>
									</div>
									<div class="modal-body">You are now delete
										{{clickedProduct.pname}}</div>
									<div class="modal-footer">
										<button ng-click="deleteProduct()" type="button"
											class="btn btn-success" data-dismiss="modal">OK</button>
										<button type="button" class="btn btn-default"
											data-dismiss="modal">Close</button>
									</div>
								</div>

							</div>
						</div>






					</div>
				</div>
			</div>
			<div class="col-md-12 footer-area">footer</div>



		</div>
	</div>


</body>
</html>