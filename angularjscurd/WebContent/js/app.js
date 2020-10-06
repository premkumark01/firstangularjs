var myApp=angular.module("myApp",[]);

myApp.controller('myCtrl',function($scope,$http){
	$scope.message="";
	$scope.error_message="";
	
	
	//get All products
	$scope.getAllproduct=function(){
		$http({
			method:"GET",
			url:'http://localhost:8080/angularjscurd/webresources/products/'
		}).then(
				function(response){
					
					$scope.products=response.data;
					
				},
				function(reason){
					$scope.error_message=reason.data;
				}
		)
	}
	
	$scope.getAllproduct();
	
	
	//save product
	$scope.newProduct={};
	$scope.saveProduct=function(){
		$http({
			method:'POST',
			url:'http://localhost:8080/angularjscurd/webresources/products/',
			data:angular.toJson($scope.newProduct),
			header : {
				'Content-Type' : 'application/json'
			}
		}).then(
				function(response){
					
					$scope.message="product Saved Successfully";
					$scope.getAllproduct();
					
				},
				function(reason){
					$scope.error_message=reason.data;
				}
		);
		
	};
	
	
	//select product by click
	$scope.clickedProduct = {};
	$scope.selectProduct = function(product){
		$scope.clickedProduct = product;
	};
	
	
	
	
	
	//update product
	$scope.updateProduct=function(){
		$http({
			method:'PUT',
			url:'http://localhost:8080/angularjscurd/webresources/products/',
			data:angular.toJson($scope.clickedProduct),
			header : {
				'Content-Type' : 'application/json'
			}
		}).then(
				function(response){
					
					$scope.message="product Update Successfully";
					$scope.getAllproduct();
					
				},
				function(reason){
					$scope.error_message=reason.data;
				}
		);
		
	};
	
	
	
	
	
	//delete product
	$scope.deleteProduct=function(){
		$http({
			method:'DELETE',
			url:'http://localhost:8080/angularjscurd/webresources/products/'+$scope.clickedProduct.pid,
			data:angular.toJson($scope.clickedProduct),
			header : {
				'Content-Type' : 'application/json'
			}
		}).then(
				function(response){
					
					$scope.message="product deleted Successfully";
					$scope.getAllproduct();
					
				},
				function(reason){
					$scope.error_message=reason.data;
				}
		);
		
	};
	
	
	//clear message
	$scope.messageClose = function(){
		$scope.message="";
		$scope.error_message="";
	};
	
		
});