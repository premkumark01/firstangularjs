		
					<div class="content col-md-9" ng-controller="productController">
						<button data-toggle="modal" data-target="#myModalSave"
							type="button" class="btn btn-success">Add New Product</button>
						<br> <br>

						<div class="alert alert-success alert-dismissible"
							ng-show="message">
							<a href="#!/product" class="close" ng-click="messageClose()">&times;</a> <strong>Success!</strong>
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
			