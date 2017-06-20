<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
				<div class="col-sm-6 produs">
					<div class="thumbnail">
						<img class="image" src="./poze/${produs.numePoza}">
					</div>	
					
					<div class="caption">
						<h3 class="alert alert-succes">${produs.denumire}</h3>
						<p>Descriere produs: ${produs.descriere} </p>
						
						<div class="col-sm-6 produs">
							<h3 class="alert alert-info">${produs.pret} RON </h3>
							<h3 class="alert alert-info">In stoc: ${produs.stoc} de bucati</h3>
							
							<form action="cos" method="post">
								<input type="hidden" name="id" value="${produs.id}">
								<button type="submit" class="btn btn-primary btn" >Adaugati in cos</button>	
							</form>
						</div>
						
					
						
					</div>
				</div>	

</body>
</html>