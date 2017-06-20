<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
	<div class="container">
	<h1 style="color:blue;" >Salut</h1>
	<h2 style="color:blue;" >Introduceti userul si parola pentru a va loga</h2>
	<div class="row">
	<div class="col-sm-4">
		<form action="login" method="post">
			<div class="input-group">
	 		 	<span class="input-group-addon" style="color:blue;" id="basic-addon1">Username</span>
	  			<input type="text" name="username" class="form-control" aria-describedby="basic-addon1">
			</div><br> 
	  		<div class="input-group">
	  			<span class="input-group-addon" style="color:blue" id="basic-addon1">Password</span>
	 			 <input type="password"name="userpass" class="form-control" aria-describedby="basic-addon1" >
			</div><br>
				 <button type="submit" class="btn btn-primary btn">Login</button>
			
		</form>
		</div>
		</div>
	</div>
</body>
</html>	