var app=angular.module("app",['ngRoute']);

app.config(function($routeProvider){
    $routeProvider.when('/',{
        templateUrl:'home.jsp',
        controller:'myCC'
    }).when('/product',{
        templateUrl:'product.jsp',
        controller:'productController'
    }).when('/aboutus',{
        templateUrl:'aboutus.jsp',
        controller:'aboutController'
    }).when('/blog',{
        templateUrl:'blog.jsp',
        controller:'blogController'
    }).when('/register',{
        templateUrl:'register.jsp',
        controller:'regiController'
    }).when('/login',{
        templateUrl:'login.jsp',
        controller:'loginController'
    })

});

app.controller('myCC',function($scope,$location,$http,userService){
	$scope.UserDet;
	$scope.UserDet = userService.getUser();
});

app.controller('regiController',function($scope,$location,$http,userService){
	$scope.message="";
	$scope.error_message="";
	$scope.addingUser = function(user) {
		
		$location.path('/');
	   };  
	//save user
	$scope.user={};
	$scope.sendMessage=function(){
		$http({
			method:'POST',
			url:'http://localhost:8080/angularjscurd/webresources/users/',
			data:angular.toJson($scope.user),
			header : {
				'Content-Type' : 'application/json'
			}
		}).then(
				function(response){
					userService.addUser($scope.user);
					$scope.message="User Registered Successfully";
					$location.path('/');
					
				},
				function(reason){
					$scope.error_message=reason.data;
				}
		);
		
	};
	
	
	
	/*$scope.sendMessage = function(){
		$location.path('/');
	};*/

});

app.controller('loginController',function($scope,$http){
	$scope.message="";
	$scope.error_message="";
	
	
	
	//select user
	$scope.user1={};
	$scope.sendLogin=function(){
		$http({
			method:"GET",
			url:'http://localhost:8080/angularjscurd/webresources/users/'+$scope.user1.email,
		}).then(
				function(response){
					
					$scope.use=response.data;
					var demo=JSON.stringify($scope.use,null,"    "); 
					var pass=demo.password;
					alert(pass);
					if($scope.pass == $scope.user1.password)
						{
						$scope.message="Login Successfull";
						}
					else{
						$scope.error_message="Please enter a Valid Value";
					}
					
				},
				function(reason){
					alert("Resource not found");
					$scope.error_message=reason.data;
				}
		)
	};
	
	//clear message
	$scope.messageClose = function(){
		$scope.message="";
		$scope.error_message="";
	};

});

app.controller('productController',function($scope,$http){
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




app.service('userService', function() {
	 var Userss = [], addUser, getUser, removeUser;
	     addUser = function(obj) {
	        Userss.push(obj);
	     };
	     getUser = function(){
	        return Userss;
	     };
	     removeUser = function(id) {
	        Userss.splice(id, 1);
	     };
	     return {
	        addUser: addUser,
	        removeUser: removeUser,
	        getUser: getUser
	     };
	});