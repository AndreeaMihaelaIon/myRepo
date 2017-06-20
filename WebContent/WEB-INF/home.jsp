<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
		<link rel="stylesheet" href="./css/style.css">
		<title>Magazin Cosmetice</title>
	</head>
	<body>
	
	<div class="container">

		<h1>Magazin Cosmetice</h1>
			<div class="row">
			<form action="search" method="post" class="navbar-form navbar-left" role="search">
			  <div class="form-group">
			    <input type="text" name="denumire" class="form-control" placeholder="Cauta">
			  </div>
			  <button type="submit" class="btn btn-primary btn" >Search</button>
			</form>
			</div>
			<div class="row">
			<c:forEach items="${produse}" var="produs">
			
				<div class="col-sm-3 produs">
					<div class="thumbnail">
						
						<img class="image" src="./poze/${produs.numePoza}">
					</div>	
					
					<div class="caption">
						<h3 class="alert alert-succes">${produs.denumire}</h3>
						<h3 class="alert alert-info">${produs.pret} RON </h3>
						<h3 class="alert alert-info">In stoc: ${produs.stoc} de bucati </h3>
						
					
					<form action="produs" method="post">
						<input type="hidden" name="id" value="${produs.id}">
						<button type="submit" class="btn btn-primary btn" >Detalii produs</button>	<span class="glyphicons glyphicons-shopping-cart"></span>
						
					</form>
						
					</div>
				</div>	
			
			</c:forEach>
		
	</div>
	</body>
</html>