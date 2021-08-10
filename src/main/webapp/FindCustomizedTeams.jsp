<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@page import="squad.model.Users"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<title>Find Customized Teams</title>
</head>
<body>
<jsp:include page="header.jsp" />

<div class="container">
	<h2 class="section-header d-flex justify-content-center">Create Customized Team</h2>
</div>

<div class="container  d-flex justify-content-center">
	<a class="btn btn-info border border-dark" href="createcustomizedteam">Create New Customized Team</a>
</div>

<div class="container">
	<h2 class="section-header d-flex justify-content-center">Search Customized Teams</h2>
</div>

<div class="container">
	<form action="findcustomizedteams" method="post">
		<div class="input-group mb-3">
				<%
				Users user = (Users) request.getSession().getAttribute("CURRENT_USER");
				String default_username = (String) user.getUserName();
				%>
			<span class="input-group-text">UserName</span>
			<input type="text" class="form-control" id="username" name="username" value="<%= default_username %>">
			<input type="submit" class="btn btn-info border border-dark">
		</div>
	</form>
</div>

<div class="container">
	<h2 class="section-header d-flex justify-content-center">Available Customized Teams</h2>
</div>

<div class="container">
	<table class="table table-striped">
		<tr>
			<th>UserName</th>
			<th>TeamId</th>
			<th>View Team</th>
			<th>Edit Team</th>
			<th>Delete Team</th>
		</tr>
		<c:forEach items="${customizedTeams}" var="customizedTeam">
			<tr>
				<td><c:out value="${customizedTeam.getUser().getUserName()}" /></td>
				<td><c:out value="${customizedTeam.getTeam_id()}" /></td>
				<td><a
					href="readcustomizedteam?customizedTeamId=<c:out value="${customizedTeam.getTeam_id()}"/>">View</a></td>
				<td><a
					href="editcustomizedteam?customizedTeamId=<c:out value="${customizedTeam.getTeam_id()}"/>">Edit</a></td>
				<td><a
					href="deletecustomizedteams?customizedTeamId=<c:out value="${customizedTeam.getTeam_id()}"/>">Delete</a></td>
			</tr>
		</c:forEach>
	</table>
</div>

<jsp:include page="footer.jsp" />
</body>
</html>