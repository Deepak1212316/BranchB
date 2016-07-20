<link rel="stylesheet" href="css/style.css" />

<script type="text/javascript" src="js/jquery.validate.min.js"></script>
<script type="text/javascript" src="./js/registration.validation.js"></script>
<body OnLoad="document.myform.adminId.focus();">
<br>
<br>
<br>
<br>
<div class="main">
		<div class="box">
			<h2>Sign in to your account</h2>
			<h3>Please enter your name and password to log in.</h3>
				<fieldset>
				<form class="form" name="myform" action="formdata.html" id="adminlogin">
			
					<div class="row">
						<input type="text" class="login error" name="adminId" placeholder="Username" />
						<!-- To mark the incorrectly filled input, you must add the class "error" to the input -->
						<!-- example: <input type="text" class="login error" name="login" value="Username" /> -->
					</div>
					<div class="row">
						<input type="password" class="password" name="password" placeholder="Password"/>
						
					</div>	
							<div class="row">
						<input type="submit" value="Sign in" />
						</div>
					</form>
					
				</fieldset>
		</div>
	
	</div>

</body>