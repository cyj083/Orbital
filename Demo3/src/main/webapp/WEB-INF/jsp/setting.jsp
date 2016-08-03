<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>卫星预测系统-登陆</title>

<!-- Bootstrap Core CSS -->
<link href="css/mybootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="css/sb-admin-2.css" rel="stylesheet">

<link rel="stylesheet" href="css/selector/bootstrap-select.css" />

<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/selector/bootstrap-select.js"></script>

<script src="js/setting.js"></script>
</head>

<body>

	<div class="container">
		<div class="row">
			<div class="col-md-5 col-md-offset-3">
			<div class=" panel panel-info" style = "margin-top:30px">
					<div class="panel-heading">
						<h3 class="panel-title">Date Range:</h3>
					</div>
					<div class="panel-body" style="padding:20px 20px 20px 10px">
						<input type="date" name="query_start_date" value="2016-07-29" form="mysettingSat" /> 
						<input type="time" name="query_start_time" value="15:37" form="mysettingSat" /> 
						<div class = "row" style = "padding-left:20px">
							<label for="start_now_id">Current time</label> 
							<input type="checkbox" name="start_now" value="True" id="start_now_id" onClick="setDateRateForNext24Hours()" form="mysettingSat" /> 
						</div>
						<input type="date" name="query_end_date"
							value="2016-07-30" form="mysettingSat" /> 
						<input type="time"
							name="query_end_time" value="15:37" form="mysettingSat" />
					</div>

				</div>
				<div class=" panel panel-info">
					<div class="panel-heading">
						<h3 class="panel-title">Satellites:</h3>
					</div>
					<div class="panel-body" style="padding:20px 20px 20px 10px">
						<form onsubmit="return validateForm()"
							id="mysettingSat" >
							<select id="done" class="selectpicker" multiple="multiple"
								data-done-button="true" data-actions-box="true" name = "done">
								<option value="36287">BEIDOU G1</option>
								<option value="36590">BEIDOU G3</option>
								<option value="36828">BEIDOU IGSO 1</option>
								<option value="37210">BEIDOU G4</option>
								<option value="36828">BEIDOU IGSO 1</option>
								<option value="37256">BEIDOU IGSO 2</option>
								<option value="37384">BEIDOU IGSO 3</option>
								<option value="37763">BEIDOU IGSO 4</option>
								<option value="37948">BEIDOU IGSO 5</option>
								<option value="38091">BEIDOU G5</option>
								<option value="38250">BEIDOU M3</option>
								<option value="38251">BEIDOU M4</option>
								<option value="38775">BEIDOU M6</option>
								<option value="38953">BEIDOU G6</option>
								<option value="40549">BEIDOU I1-S</option>
								<option value="40748">BEIDOU-3 M1</option>
								<option value="40749">BEIDOU-3 M2</option>
								<option value="40938">BEIDOU I2-S</option>
								<option value="41315">BEIDOU M3-S</option>
								<option value="41434">BEIDOU IGSO 6</option>
								<option value="41586">BEIDOU G7</option>
							</select> 
							<input type="submit" name="submit" value="Show Orbits" class="btn btn-default" form="mysettingSat" onclick="checkButton(this)">
							
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
							
</body>

</html>
