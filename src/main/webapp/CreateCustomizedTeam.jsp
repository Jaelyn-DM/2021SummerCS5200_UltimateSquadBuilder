<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit a Customized Team</title>

<script type="text/javascript"
	src='<c:url value="/scripts/CustomizedTeam.js"/>'></script>

<script type="text/javascript">
	var LOGGED_IN_USER_NAME = "${LOGGED_IN_USER_NAME}";
	initializeCreatePage();
</script>
</head>

<body>
<jsp:include page="header.jsp"/>
	<div class="container">
		<h2 class="section-header d-flex justify-content-center">Create Customized Team</h2>
	</div>

	<div class="container">
		<div class="input-group">
			<input type="text" class="form-control"
				placeholder="partial player's name (at least 3 characters)"
				id="search-query-input">
			<button class="btn btn-info border border-dark" type="button"
				id="search-players-button">Search</button>
			<button class="btn btn-warning border border-dark" type="button"
				id="clear-players-result-button">Clear Result</button>
		</div>
	</div>

	<div class="container">
		<h2 class="section-header d-flex justify-content-center">Available Players</h2>
	</div>

	<div class="container">
		<div class="table-wrapper-scroll-y my-custom-scrollbar">

			<table class="table table-bordered table-striped table-bordered"
				id="available-player-table">
				<thead>
					<tr>
						<th scope="col">Player Name</th>
						<th scope="col">Best Position</th>
						<th scope="col">Potential Rating</th>
						<th scope="col">Overall Rating</th>
					</tr>
				</thead>
				<tbody>
				</tbody>
			</table>
		</div>
	</div>

	<div class="container">
		<h2 class="section-header d-flex justify-content-center">Squad Builder</h2>
	</div>

	<div class="container">
		<table class="table table-striped">
			<thead>
				<tr>
					<th scope="col">#</th>
					<th scope="col">Position</th>
					<th scope="col">Player Selection</th>
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
		<div class="row">
			<div class="col text-center">
				<button type="button" class="btn btn-primary"
					id="create-customized-team-button">Create</button>
			</div>
		</div>
	</div>

	<div class="container">
		<h2 class="section-header d-flex justify-content-center"></h2>
	</div>

	<div class="container">
		<div class="alert alert-success" id="update-customized-team-alert"></div>
	</div>
</body>

</html>