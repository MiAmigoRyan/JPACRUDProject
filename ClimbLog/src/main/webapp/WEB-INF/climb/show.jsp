<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>    
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
	
	<img src='${climb.image }'>
	
	<h1>${climb.name } | ${climb.grade } </h1>	
	
	<c:choose>
	 <c:when test="${climb.rating == 1 } ">
    	<p>&#11088;</p>
	</c:when>    
	 <c:when test="${climb.rating == 2 }  ">
    	<p>&#11088;&#11088;</p>
	</c:when>
	 <c:when test='${calimb.rating == 3 }'>
    	<p>&#11088;&#11088;&#11088;</p>
    	</c:when>
    	<c:otherwise>
    	not yet rated
	</c:otherwise>
	</c:choose>
	<div class ='container'>
	<h5>protection ${climb.protection } </h5>
	</div>
	<div class ='container'>
	<h5>${climb.firstAscentionist} </h5>
	</div>
	<div class ='container'>
	<blockquote> ${climb.notes}</blockquote>
	</div>
	
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