<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>All Players</title>
</head>

<body>
<jsp:include page="header.jsp"/>

<div class="container">
	<h2 class="section-header d-flex justify-content-center">Query Players</h2>
</div>

<div class="container">
	<form action="queryplayers" method="post">
		<div class="input-group mb-3">
			<span class="input-group-text">Player Name</span>
			<input type="text" class="form-control" id="playername" name="playername" value="${fn:escapeXml(param.playername)}">
			<input type="submit" class="btn btn-info border border-dark">
		</div>
	</form>
</div>

<div class="container">
	<h2 class="section-header d-flex justify-content-center">${messages.success}</h2>
</div>

<div class="container">
	<form action="queryplayers" method="post">
		<div class="input-group">
			<label for="sortby" class="input-group-text">Sort by</label>
			<select class="form-select" name="sortby" id="sortby">
				<option value="">--Please choose a filter--</option>
				<option value="name">Name(A-Z)</option>
				<option value="age">Age(Old-Young)</option>
				<option value="wage">Wage(High-Low)</option>
				<option value="rating">Rating(High-Low)</option>
			</select>
			<input type="submit" class="btn btn-info border border-dark">
		</div>
	</form>
</div>

<div class="container">
	<h2 class="section-header d-flex justify-content-center"></h2>
</div>

<div class="container">
	<form action="queryplayers" method="post">
		<div class="input-group">
			<label for="popularsearch" class="input-group-text">Sort by</label>
			<select class="form-select" name="popularsearch" id="popularsearch">
				<option value="">--Please choose a category--</option>
				<option value="top20forwards">Top 20 forwards</option>
				<option value="top20midfields">Top 20 middle field players</option>
				<option value="top20defenders">Top 20 defenders</option>
				<option value="top20goalkeepers">Top 20 goalkeepers</option>
			</select>
			<input type="submit" class="btn btn-info border border-dark">
		</div>
	</form>
</div>

<div class="container">
	<h2 class="section-header d-flex justify-content-center">Available Players</h2>
</div>

<div class="container">
	<table class="table table-striped">
		<tr>
			<th>PlayerName</th>
			<th>DOB</th>
			<th>Position</th>
			<th>Value($)</th>
			<th>Wage($)</th>
			<th>Overall Rating</th>
			<th>Team</th>
			<th>Nationality</th>
		</tr>
		<c:forEach items="${players}" var="player">
			<tr>
				<td><a href="<c:out value="${player.getProfile()}"/>">${player.getPlayer_name()}</a></td>
				<td><fmt:formatDate value="${player.getDate_of_birth()}"
						pattern="yyyy-MM-dd" /></td>
				<td><c:out value="${player.getBest_position()}" /></td>
				<td><c:out value="${player.getValue()}" /></td>
				<td><c:out value="${player.getWage()}" /></td>
				<td><c:out value="${player.getOverall_rating()}" /></td>
				<td><a href="<c:out value="${player.getTeamUrl()}"/>">${player.getTeamName()}</a></td>
				<td><c:out value="${player.getNationality()}" /></td>
			</tr>
		</c:forEach>
	</table>
</div>

<jsp:include page="footer.jsp" />
</body>
</html>