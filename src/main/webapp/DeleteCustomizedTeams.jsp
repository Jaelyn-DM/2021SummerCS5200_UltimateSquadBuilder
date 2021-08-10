<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete a Customized Team</title>
</head>
<body>
<jsp:include page="header.jsp"/>

<div class="container">
	<h2 class="section-header d-flex justify-content-center">${messages.title}</h2>
</div>

<div class="container">	
	<form action="deletecustomizedteams" method="post">
		<div class="input-group mb-3">
				<label for="teamId" class="input-group-text">Team ID</label>
				<input type="text" id="teamId" name="teamId" class="form-control" value="${fn:escapeXml(param.customizedTeamId)}">
				<input type="submit" class="btn btn-info border border-dark" <c:if test="${messages.disableSubmit}">style="display:none"</c:if>>
		</div>
	</form>
</div>
	
</body>
<jsp:include page="footer.jsp"/>
</html>