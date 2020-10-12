<!--  <div class="registerController">
<form name="formRegister">
		<table cellpadding="2" cellspacing="2">
			<tr>
				<td>Username</td>
				<td><input type="text" name="username" ng-model="username"
					ng-required="true" ng-minlength="3" ng-maxlength="10"></td>
				<td><span ng-show="formRegister.username.$error.required"
					class="error"> This field is required. </span> <span
					ng-show="formRegister.username.$error.minlength" class="error">
						Please enter at least 3 characters. </span> <span
					ng-show="formRegister.username.$error.maxlength" class="error">
						Please enter no more than 10 characters. </span></td>
			</tr>
			<tr>
				<td>Age</td>
				<td><input type="number" name="age" ng-model="age"
					ng-required="true" min="18" max="50"></td>
				<td><span ng-show="formRegister.age.$error.required"
					class="error"> This field is required. </span> <span
					ng-show="formRegister.age.$error.min" class="error"> Please
						enter a value greater than or equal to 18. </span> <span
					ng-show="formRegister.age.$error.max" class="error"> Please
						enter a value less than or equal to 50. </span></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><input type="email" name="email" ng-model="email"
					ng-required="true"></td>
				<td><span ng-show="formRegister.email.$error.required"
					class="error"> This field is required. </span> <span
					ng-show="formRegister.email.$error.email" class="error">
						Please enter a valid email address. </span></td>
			</tr>
			<tr>
				<td>Website</td>
				<td><input type="url" name="website" ng-model="website"></td>
				<td><span ng-show="formRegister.website.$error.url"
					class="error"> Please enter a valid URL. </span></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td colspan="2"><input type="button" value="Save"
					ng-disabled="formRegister.$invalid"></td>
			</tr>
		</table>
	</form>


</div> -->
















<div class="registerController">
<form class="content col-md-9" name="formRegister">
<h1>Register User</h1>
	<div class="form-group">
		<label for="name">Name:</label> <input type="text"
			class="form-control" id="name" ng-model="name"
					ng-required="true" ng-minlength="3" ng-maxlength="10">
	</div>
	<div class="form-group">
		<label for="email">Email address:</label> <input type="email"
			class="form-control" id="email" ng-model="email"
					ng-required="true">
	</div>
	<div class="form-group">
		<label for="age">Age:</label> <input type="number"
			class="form-control" id="age" ng-model="age"
					ng-required="true" min="18" max="50">
	</div>
	<div class="form-group">
		<label for="pwd">Password:</label> <input type="password"
			class="form-control" id="pwd">
	</div>

	<button type="submit" class="btn btn-default" ng-disabled="formRegister.$invalid">Submit</button>
</form> 
</div>