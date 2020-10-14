

<div ng-controller="loginController" class="content col-md-9">
	<form name="formLogin" ng-submit="sendLogin()" novalidate>
	
		<div class="alert alert-success alert-dismissible" ng-show="message">
			<a href="#!/" class="close" ng-click="messageClose()">&times;</a>
			<strong>Success!</strong> {{message}} .
		</div>
		<div class="alert alert-danger alert-dismissible" ng-show="error_message">
			<a href="#!/login" class="close" ng-click="messageClose()">&times;</a>
			<strong>Sorry!</strong> {{message}} .
		</div>
		<h1>User Login</h1>


		<div class="form-group">
			<label for="email">Email address:</label> <input type="email"
				class="form-control" name="email" id="email" ng-model="user1.email"
				ng-required="true">
			<div
				ng-show="formLogin.email.$touched && formLogin.email.$invalid">
				<small style="color: red; display: black; text-align: center;">Enter
					a valid Email</small>
			</div>
		</div>

		<div class="form-group">
			<label for="pwd">Password:</label> <input type="password"
				name="password" ng-model="user1.password" class="form-control"
				id="pwd" ng-minlength="3" ng-maxlength="10" ng-required="true">
			<div
				ng-show="formLogin.password.$touched && formLogin.password.$error.required">
				<small style="color: red; display: black; text-align: center;">This
					field is required.</small>
			</div>
			<div
				ng-show="formLogin.password.$touched && formLogin.password.$error.minlength">
				<small style="color: red; display: black; text-align: center;">Please
					enter at least 3 characters.</small>
			</div>
			<div
				ng-show="formLogin.password.$touched && formLogin.password.$error.maxlength">
				<small style="color: red; display: black; text-align: center;">Please
					enter no more than 10 characters.</small>
			</div>
		</div>

		<button type="submit" class="btn btn-default"
			ng-disabled="formLogin.$invalid">Submit</button>
	</form>
	<ul>
	<li ng-repeat="u in use">{{u}}</li>
	</ul>
</div>