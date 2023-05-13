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
<body class="dark-mode">
<div class="container">

	<h1>${climb.name } | ${climb.grade } | ${climb.rating } stars </h1>	
	<h5>${climb.protection } </h5>
	<h5>${climb.firstAscentionist} </h5>
	<blockquote> ${climb.notes}</blockquote>
	
	<form action="goToUpdateClimb.do" >
	<input type='hidden' name='id' value='${climb.id }' />
	<input type='submit' value='UPDATE' />
			
			
			</form>
	
	<form action="deleteClimb.do">
	<input type='hidden' name='id' value='${climb.id }'/>
	<input type='submit' value='DELETE'/></form>

</div>
</body>
<jsp:include page="/WEB-INF/BootstrapFoot.jsp"></jsp:include>

</html>