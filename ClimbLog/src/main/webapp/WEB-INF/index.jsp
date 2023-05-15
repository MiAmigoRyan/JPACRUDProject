<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="BootstrapHead.jsp"></jsp:include>

<title>CLIMBING LOG</title>
</head>
<jsp:include page="navbar.jsp" />
<div class="container">
	<body class="dark-mode">
		<h1><strong>CLIMBING LOG</strong></h1>
		
		<div class="inner-container">
			<h3>add a climb</h3>
		
			<form action="addClimb.do" method="POST">
		
				name<input type="text" name="name" required> <br> 
				zone<input type="text" name="zone"> <br>
				grade<input type="text" name="grade"> <br> 
				date<input type="date" name="date" required> <br> 
				<label>protection</label>
				<select name="dropdown">
					<option value="pads">pads</option>
					<option value="traditional">traditional</option>
					<option value="bolts">bolts</option>
				</select> <br>
				<label>Rating</label>
					<input type="radio" name="rating" value= 1 ${climb.rating == 1 }>&#x2B50; 
					<input type="radio" name="rating" value= 2 ${climb.rating == 2 }>&#x2B50; &#x2B50; 
					<input type="radio" name="rating" value= 3 ${climb.rating == 3 }>&#x2B50; &#x2B50; &#x2B50;
					<br>
				first ascentionist<input type='text' name='first_ascentionist'><br>	
				
				insert image<input type='text' name='image'><br>	
				<input type="submit" name='climb' value="ADD CLIMB">
			</form>
		</div>

		<div class="inner-container">
		<h2><em>search</em></h2>
			
				<br>
			
			<form action="getClimbById.do" method="GET">
				ID
			<input type="number" name="id" type="search">
			<input type="submit">
				</form>
			</div>	
		<table class="table table-striped table-hover">
			<thead>
				<tr>
					<th>ID</th>
					<th>Name</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="climb" items="${climbList}">
					<tr>
						<td>${climb.id }</td>
						<td><a href="getClimbById.do?id=${climb.id}"> ${climb.name} </a></td>
					</tr>
				</c:forEach>
				</tbody>
				</table>
	
	</body>

	<jsp:include page="BootstrapFoot.jsp"></jsp:include>
</html>

