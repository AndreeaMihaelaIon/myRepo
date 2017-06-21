<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Cosul de cumparaturi</title>
		<link rel="stylesheet" href="./css/style.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
</head>
<body>
		
		
		<div class="container">
			<h2 style="color:blue">Produsul a fost adaugat in cos</h2>
			<h4 style="color:blue">Produsele pe care le aveti in cos sunt:</h4> 
		
		<div class="row">
		<%--! double S=0; --%>
		<c:set var="S"  value="0"/>
			<c:forEach items="${sessionScope.cos}" var="produs">
				
				<c:set var="S"  value="${S+produs.pret}"/>
				<div class="col-sm-3 produs">
					<div class="thumbnail">
						
						<img class="image" src="./poze/${produs.numePoza}">
					</div>	
					
					<div class="caption">
						<h3 class="alert alert-succes">${produs.denumire}</h3>
						<h3 class="alert alert-info">${produs.pret} lei</h3>
					</div>
				</div>
			</c:forEach>
		</div>
		<div class="caption">
			<h3 class="alert alert-info">Pana acum ati facut cumparaturi in valoare de: ${S} RON</h3>
		</div>
		</div>
		<div class="jumbotron">
			<div class="container">
				 <p><a class="btn btn-primary btn" href="home" role="button">Inapoi la pagina principala</a></p>
			</div>
		</div>
</body>
</html>