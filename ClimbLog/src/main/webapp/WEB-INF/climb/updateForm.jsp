<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="/WEB-INF/BootstrapHead.jsp"></jsp:include>

<title>invalid</title>
</head>
<jsp:include page="../navbar.jsp"/>
<div class="container">
	<body class="dark-mode">

			<form action="updateClimb.do" method="POST">
				<input type='hidden' value='${climb.id}' name='id'/>	
				name<input type="text" name="name" value='${climb.name }'> <br> 
				zone<input type="text" name="zone"value='${climb.zone }'> <br>
				<label>type</label>
				<select id='type' name='type'>
					<option value='sport'>sport</option>
					<option value='traditional'>traditional</option>
					<option value='boulder'>boulder</option>
					<option value='ice'>ice</option>
					<option value='mixed'>mixed</option>
				</select>
				<label>protection</label>
				<select name="dropdown">
					<option value="pads">pads</option>
					<option value="traditional">traditional</option>
					<option value="bolts">bolts</option>
				</select> <br>
				<label>Rating</label>
					<input type="radio" name="rating" value="1">&#x2B50; 
					<input type="radio" name="rating" value="2">&#x2B50; &#x2B50; 
					<input type="radio" name="rating" value="3">&#x2B50; &#x2B50; &#x2B50;
					<br>
				location<input type="text" name="location" value='${climb.location }'> <br> 
				first acentionist<input type="text" name="firstAscentionist" value='${climb.firstAscentionist }'> <br> 
				date<input type="date" name="date" value='${climb.date }'> <br> 
				grade<input type="text" name="grade" value='${climb.grade }'> <br> 
				
			
				<input type="submit" value="UPDATE">
			</form>
</body>
</div>
<jsp:include page="/WEB-INF/BootstrapFoot.jsp"></jsp:include>

</html>