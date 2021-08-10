<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<title>All Teams</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<div class="container">
	<h2 class="section-header d-flex justify-content-center">Query Teams</h2>

	<form action="findteams" method="post">
		<div class="input-group mb-3">
			<span class="input-group-text">Team Name</span>
			<input type="text" class="form-control" id="teamname" name="teamname" value="${fn:escapeXml(param.teamname)}">
			<input type="submit" class="btn btn-info border border-dark">
		</div>
		<div class="container">
			<h2 class="section-header d-flex justify-content-center">${messages.success}</h2>
		</div>
	</form>

	<form action="findteams" method="post">
		<div class="input-group">
			<label for="sortby" class="input-group-text">Sort by:</label>
			<select class="form-select" name="sortby" id="sortby">
				<option value="">Please choose a filter</option>
				<option value="name">Name(A-Z)</option>
				<option value="defence">Defense Score(High-Low)</option>
				<option value="attack">Attack(High-Low)</option>
				<option value="score">Overall Score(High-Low)</option>
				<option value="transferbudget">Transfer Budget(High-Low)</option>
			</select>
			<input type="submit" class="btn btn-info border border-dark">
		</div>
	</form>
</div>

<div class="container">
	<h2 class="section-header d-flex justify-content-center">Team Query Results</h2>
</div>

<div class="container">
	<table class="table table-striped">
		<tr>
			<th>TeamName</th>
			<th>Overall Score</th>
			<th>Defense Rating</th>
			<th>Attack Rating</th>
			<th>International Prestige</th>
			<th>Transfer Budget($)</th>
			<th>League</th>
		</tr>
		<c:forEach items="${Teams}" var="Team" >
			<tr>
			<td><a href="<c:out value="${Team.getTeam_url()}"/>">${Team.getTeam_name()}</a></td>
				<td><c:out value="${Team.getOverall()}" /></td>
				<td><c:out value="${Team.getDefence()}" /></td>
				<td><c:out value="${Team.getAttack()}" /></td>
				<td><c:out value="${Team.getInternational_prestige()}" /></td>
				<td><c:out value="${Team.getTransfer_budget()}" /></td>
				<td><c:out value="${Team.getLeague()}" /></td>
			</tr>
		</c:forEach>
	</table>
</div>

 <jsp:include page="footer.jsp"/>
</body>
</html>
