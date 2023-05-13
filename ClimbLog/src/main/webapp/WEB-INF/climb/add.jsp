<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="/WEB-INF/BootstrapHead.jsp"></jsp:include>

<title>Climb Details</title>
</head>
<jsp:include page="../navbar.jsp"/>
<div class="container">
	<body class="dark-mode">

<h1>ADDED CLIMB ::</h1>
	<h1>${climb.name } | ${climb.grade } | ${climb.type }</h1>
	<h5>Rated ${climb.rating}</h5>
	<h5>${climb.protection } </h5>
	<h5>${climb.firstAscentionist} </h5>
	
	<blockquote> ${climb.notes}</blockquote>
	
	<button action="updateClimb.do" value="Update"></button>
	<button action="deleteClimb.do" value="Delete"></button>
</body>
</div>
<jsp:include page="/WEB-INF/BootstrapFoot.jsp"></jsp:include>

</html>