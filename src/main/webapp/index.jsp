<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<%@ page import="Model.Userbean"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
	integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF"
	crossorigin="anonymous">
	
</script>
<title>Document</title>
</head>

<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="#"><h1>Application de test</h1></a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNav" aria-controls="navbarNav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		
	</nav>
	<div class="container">
		<div>
			<h1>Liste des utilisateurs</h1>
			<hr>

		</div>
		
		<hr>
		<table class="table table-striped">
			<thead>
				<tr>
					<th scope="col">ID</th>
					<th scope="col">Nom</th>
					<th scope="col">Addresse</th>
				</tr>
			</thead>
			<tbody>
				<%
				if(request.getAttribute("users")!=null){
					ArrayList users = (ArrayList) request.getAttribute("users");
					for (int i=0;i<users.size();i++) {
						Userbean user = (Userbean) users.get(i);
						out.println("<tr>");
						out.println("<td>" + user.getId() + "</td>");
						out.println("<td>" + user.getName() + "</td>");
						out.println("<td>" + user.getAddress() + "</td>");
							
						out.println("</tr>");
					}
				}
				
				%>

			</tbody>
		</table>
	</div>



</body>

</html>