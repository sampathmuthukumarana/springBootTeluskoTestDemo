<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<!-- <link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script> -->
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">	
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/home.js"></script>	
</head>
<body>
	<div class="container-fluid">
		<div>
			<form action="addAlien" method="post">
				<div class="form-group">
					<label for="formGroupExampleInput">Alien id</label> <input
						type="text" class="form-control" id="aId" name="aId"
						placeholder="Alien id">
				</div>
				<div class="form-group">
					<label for="formGroupExampleInput2">Alien name</label> <input
						type="text" class="form-control" id="aName" name="aName"
						placeholder="Alen name">
				</div>
				<div class="form-group">
					<input type="submit">
				</div>
			</form>
		</div>
		<hr class="line">
		<div>
			<table class="table">
				<thead>
					<tr>
						<th scope="col">id</th>
						<th scope="col">Name</th>
						<th scope="col">Edit</th>
						<th scope="col">Delete</th>
					</tr>
				</thead>
				<tbody>

					<c:forEach items="${aliens}" var="alien">
						<tr>
							<th>${alien.aId}</th>
							<td>${alien.aName}</td>
							<td>
								<button class="btn btn-primary btn-sm a-btn-slide-text btn_alien_edit" data-value="${alien.aId}">
									<span class="glyphicon glyphicon-edit" aria-hidden="true"></span>
									<span style="color:black;"><strong>Edit</strong></span>
								</button>
							</td>
							<td>
								<button class="btn btn-warning btn-sm a-btn-slide-text btn_alien_delete" data-value="${alien.aId}">
									<span class="glyphicon glyphicon-remove" style="color:red;" ></span>
									 <span style="color:red;"><strong>Delete</strong></span>
								</button>
							</td>
						</tr>
					</c:forEach>

				</tbody>
			</table>
		</div>
	</div>
</body>
</html>