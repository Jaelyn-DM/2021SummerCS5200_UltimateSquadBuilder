<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Read a Customized Team</title>

<script type="text/javascript"
	src='<c:url value="/scripts/CustomizedTeam.js"/>'></script>

<script type="text/javascript">
	initializeReadPage();
</script>
</head>
</head>

<body>
<jsp:include page="header.jsp"/>
	<div class="container">
		<h2 class="section-header d-flex justify-content-center">View Customized Team</h2>
	</div>

	<div class="container">
		<!-- Content here -->
		<img src="field.jpeg" class="rounded mx-auto d-block"
			alt="field-image">
	</div>

	<div class="container">
		<h2 class="section-header d-flex justify-content-center">Team Roster</h2>
	</div>

	<div class="container">
		<table class="table table-striped ">
			<thead>
				<tr>
					<th scope="col">#</th>
					<th scope="col">Position</th>
					<th scope="col">Player Name</th>
				</tr>
			</thead>
			<tbody>
				<tr class="align-middle">
					<th scope="row">1</th>
					<td>P1-Goalkeeper</td>
					<td>
						<div class="input-group">
							<div class="input-group-prepend">
								<label class="input-group-text select-player-label"
									for="select-player-1">Player Name</label>
							</div>
							<select
								class="custom-select select-player form-select form-select-md md-3"
								name="player" id="select-player-1">
								<option selected>Choose...</option>
							</select>
						</div>
					</td>
				</tr>
				<tr class="align-middle">
					<th scope="row">2</th>
					<td>P2-Right Fullback</td>
					<td>
						<div class="input-group">
							<div class="input-group-prepend">
								<label class="input-group-text select-player-label"
									for="select-player-2">Player Name</label>
							</div>
							<select
								class="custom-select select-player form-select form-select-md md-3"
								name="player" id="select-player-2">
								<option selected>Choose...</option>
							</select>
						</div>
					</td>
				</tr>
				<tr class="align-middle">
					<th scope="row">3</th>
					<td>P3-Left Fullback</td>
					<td>
						<div class="input-group">
							<div class="input-group-prepend">
								<label class="input-group-text select-player-label"
									for="select-player-3">Player Name</label>
							</div>
							<select
								class="custom-select select-player form-select form-select-md md-3"
								name="player" id="select-player-3">
								<option selected>Choose...</option>
							</select>
						</div>
					</td>
				</tr>
				<tr class="align-middle">
					<th scope="row">4</th>
					<td>P4-Center Back</td>
					<td>
						<div class="input-group">
							<div class="input-group-prepend">
								<label class="input-group-text select-player-label"
									for="select-player-4">Player Name</label>
							</div>
							<select
								class="custom-select select-player form-select form-select-md md-3"
								name="player" id="select-player-4">
								<option selected>Choose...</option>
							</select>
						</div>
					</td>
				</tr>
				<tr class="align-middle">
					<th scope="row">5</th>
					<td>P5-Center Back</td>
					<td>
						<div class="input-group">
							<div class="input-group-prepend">
								<label class="input-group-text select-player-label"
									for="select-player-5">Player Name</label>
							</div>
							<select
								class="custom-select select-player form-select form-select-md md-3"
								name="player" id="select-player-5">
								<option selected>Choose...</option>
							</select>
						</div>
					</td>
				</tr>
				<tr class="align-middle">
					<th scope="row">6</th>
					<td>P6-Defending/Holding Midfielder</td>
					<td>
						<div class="input-group">
							<div class="input-group-prepend">
								<label class="input-group-text select-player-label"
									for="select-player-6">Player Name</label>
							</div>
							<select
								class="custom-select select-player form-select form-select-md md-3"
								name="player" id="select-player-6">
								<option selected>Choose...</option>
							</select>
						</div>
					</td>
				</tr>
				<tr class="align-middle">
					<th scope="row">7</th>
					<td>P7-Right Midfielder/Winger</td>
					<td>
						<div class="input-group">
							<div class="input-group-prepend">
								<label class="input-group-text select-player-label"
									for="select-player-7">Player Name</label>
							</div>
							<select
								class="custom-select select-player form-select form-select-md md-3"
								name="player" id="select-player-7">
								<option selected>Choose...</option>
							</select>
						</div>
					</td>
				</tr>
				<tr class="align-middle">
					<th scope="row">8</th>
					<td>P8-Central/Box-to-Box Midfielder</td>
					<td>
						<div class="input-group">
							<div class="input-group-prepend">
								<label class="input-group-text select-player-label"
									for="select-player-8">Player Name</label>
							</div>
							<select
								class="custom-select select-player form-select form-select-md md-3"
								name="player" id="select-player-8">
								<option selected>Choose...</option>
							</select>
						</div>
					</td>
				</tr>
				<tr class="align-middle">
					<th scope="row">9</th>
					<td>P9-Striker</td>
					<td>
						<div class="input-group">
							<div class="input-group-prepend">
								<label class="input-group-text select-player-label"
									for="select-player-9">Player Name</label>
							</div>
							<select
								class="custom-select select-player form-select form-select-md md-3"
								name="player" id="select-player-9">
								<option selected>Choose...</option>
							</select>
						</div>
					</td>
				</tr>
				<tr class="align-middle">
					<th scope="row">10</th>
					<td>P10-Attacking Midfielder/Playmaker</td>
					<td>
						<div class="input-group">
							<div class="input-group-prepend">
								<label class="input-group-text select-player-label"
									for="select-player-10">Player Name</label>
							</div>
							<select
								class="custom-select select-player form-select form-select-md md-3"
								name="player" id="select-player-10">
								<option selected>Choose...</option>
							</select>
						</div>
					</td>
				</tr>
				<tr class="align-middle">
					<th scope="row">11</th>
					<td>P11-Left Midfielder/Wingers</td>
					<td>
						<div class="input-group">
							<div class="input-group-prepend">
								<label class="input-group-text select-player-label"
									for="select-player-11">Player Name</label>
							</div>
							<select
								class="custom-select select-player form-select form-select-md md-3"
								name="player" id="select-player-11">
								<option selected>Choose...</option>
							</select>
						</div>
					</td>
				</tr>
			</tbody>
		</table>
	</div>

	<div class="container">
		<h2 class="section-header d-flex justify-content-center">Information Board</h2>
	</div>

	<div class="container">
		<table class="table table-striped table-bordered">
			<thead>
				<tr>
					<th>Attacking Score</th>
					<th>Defending Score</th>
					<th>Goalkeeping Score</th>
					<th>Overall Score</th>
					<th>Total Budgets($)</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><fmt:formatNumber type="number" maxFractionDigits="2"
							value="${customizedTeam.getAttackScore()}" /></td>
					<td><fmt:formatNumber type="number" maxFractionDigits="2"
							value="${customizedTeam.getDefenceScore()}" /></td>
					<td><fmt:formatNumber type="number" maxFractionDigits="2"
							value="${customizedTeam.getGoalKeepScore()}" /></td>
					<td><fmt:formatNumber type="number" maxFractionDigits="2"
							value="${customizedTeam.getOverallScore()}" /></td>
					<td><fmt:formatNumber type="number" maxFractionDigits="2"
							value="${customizedTeam.getTotalBudgets()}" /></td>
				</tr>
			</tbody>
		</table>
	</div>

	<div class="container">
		<h2 class="section-header d-flex justify-content-center"></h2>
	</div>

</body>

</html>