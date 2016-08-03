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
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
	

<link rel="stylesheet" href="css/selector/bootstrap-select.css" />

<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/selector/bootstrap-select.js"></script>

<script src="js/setting.js"></script>
<script type="text/javascript" src="js/Sandcastle-header.js"></script>
<script src="Build/Cesium/Cesium.js"></script>
	<style>
		@import url(Build/Cesium/Widgets/widgets.css);
		html, body, #cesiumContainer {
			width: 100%; height: 100%; margin: 0; padding: 0; 
		}
	</style>
</head>

<body>

	<nav class="navbar navbar-inverse">
		<!--xiugai1-->
		<div class="navbar-header">
			<h3>卫星预测系统</h3>
		</div>
		<!-- /.navbar-header -->
		<ul class="nav navbar-top-links navbar-right">
			<!-- /.dropdown -->

			<li><a data-toggle="modal" data-target="#setting"><i
					class="fa fa-sliders fa-fw"></i> setting</a></li>
			<!-- /.dropdown -->
		</ul>
		<ul class="nav navbar-top-links navbar-right">
			<!-- /.dropdown -->

			<li><a href="login.jsp"><i class="fa fa-sign-out fa-fw"></i>
					Logout</a></li>
			<!-- /.dropdown -->
		</ul>
		<ul class="nav navbar-top-links navbar-right">
			<!-- /.dropdown -->

			<li><a href="#"><i class="fa fa-user fa-fw"></i> User</a></li>
			<!-- /.dropdown -->
		</ul>

		<!-- /.navbar-top-links -->

	</nav>


        <div id="page-wrapper">
            
            <div class="row">
                 <div class="col-lg-4">
                    <div class="panel panel-warning" name="table1" id="table1" style="width:100%;height:100%">
                        <div class="panel-heading">
                            Bordered Table
                           <!--   <a data-toggle="modal" data-target="#table1" >
									<span class="pull-right"><i class="fa fa-expand"></i></span>
								</a>
							-->
							<a  name="table1_fullScreen" id="table1_fullScreen">
									<span class="pull-right"><i class="fa fa-expand"></i></span>
							</a>
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="table-responsive table-bordered">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>First Name</th>
                                            <th>Last Name</th>
                                            <th>Username</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>Mark</td>
                                            <td>Otto</td>
                                            <td>@mdo</td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>Jacob</td>
                                            <td>Thornton</td>
                                            <td>@fat</td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>Larry</td>
                                            <td>the Bird</td>
                                            <td>@twitter</td>
                                        </tr>
                                        
                                    </tbody>
                                </table>
								
                            </div>
                            <!-- /.table-responsive -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-6 --> <!-- /.col-lg-6 -->
				  <div class="col-lg-4">
                    <div class="panel panel-info" name="form1" id="form1" style="width:100%;height:100%">
                        <div class="panel-heading">
                            Bordered Table
                            <a id="form1_fullScreen">
									<span class="pull-right"><i class="fa fa-expand"></i></span>
								</a>
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="table-responsive table-bordered">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>First Name</th>
                                            <th>Last Name</th>
                                            <th>Username</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>Mark</td>
                                            <td>Otto</td>
                                            <td>@mdo</td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>Jacob</td>
                                            <td>Thornton</td>
                                            <td>@fat</td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>Larry</td>
                                            <td>the Bird</td>
                                            <td>@twitter</td>
                                        </tr>
                                    </tbody>
                                </table>
								
                            </div>
                            <!-- /.table-responsive -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-6 -->
                <div class="col-lg-4">
                    <div class="panel panel-danger"  name="table2" id="table2" style="width:100%;height:100%">
                        <div class="panel-heading">
                            Bordered Table
                            <a id="table2_fullScreen" >
									<span class="pull-right"><i class="fa fa-expand"></i></span>
								</a>
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="table-responsive table-bordered">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>First Name</th>
                                            <th>Last Name</th>
                                            <th>Username</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>Mark</td>
                                            <td>Otto</td>
                                            <td>@mdo</td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>Jacob</td>
                                            <td>Thornton</td>
                                            <td>@fat</td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>Larry</td>
                                            <td>the Bird</td>
                                            <td>@twitter</td>
                                        </tr>
                                    </tbody>
                                </table>
								
                            </div>
                            <!-- /.table-responsive -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-6 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-4">
                    <div class="panel panel-info" id="id11">
                        <div class="panel-heading">
                            Striped Rows
                          <!-- <a data-toggle="modal" data-target="#chart1" >
									<span class="pull-right"><i class="fa fa-expand"></i></span>
							</a>  --> 
							 <a id="chart1_fullScreen" >
									<span class="pull-right"><i class="fa fa-expand"></i></span>
							</a>
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body" id="id1" style="height:100%;width:100%">
                           <div id="cesiumContainer1" style="height:100%;width:100%"></div>
							<script>
							var viewer1 = new Cesium.Viewer('cesiumContainer1',{
							baseLayerPicker:false,
						    fullscreenButton:false,
						    sceneModePicker:false,
						    geocoder:false,
						    navigationHelpButton:false,
						    sceneMode:Cesium.SceneMode.SCENE3D ,
						    //fullscreenElement:document.getElementById("cesiumContainer1")
							});
							//viewer.dataSources.add(Cesium.CzmlDataSource.load('SampleData/simple.czml'));
							</script>
							
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-6 -->
				<div class="col-lg-4">
                    <div class="panel panel-danger">
                        <div class="panel-heading">
                            Striped Rows
                          <!--  <a data-toggle="modal" 	data-target="#chart2" >
									<span class="pull-right"><i class="fa fa-expand"></i></span>
							</a> --> 
							 <a  id="chart2_fullScreen" >
									<span class="pull-right"><i class="fa fa-expand"></i></span>
							</a>
							
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div id="cesiumContainer2" style="height:100%;width:100%"></div>
							<script>
							var viewer2 = new Cesium.Viewer('cesiumContainer2',{
							baseLayerPicker:false,
						    fullscreenButton:false,
						    sceneModePicker:false,
						    geocoder:false,
						    navigationHelpButton:false,
						    sceneMode:Cesium.SceneMode.SCENE2D ,
						    //fullscreenElement:document.getElementById("cesiumContainer2")
							});
							//viewer.dataSources.add(Cesium.CzmlDataSource.load('SampleData/simple.czml'));
							</script>
							
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                
                <div class="col-lg-4">
                    <div class="panel panel-warning">
                        <div class="panel-heading">
                            Chart3
                            <a id="chart3_fullScreen" >
								<span class="pull-right"><i class="fa fa-expand"></i></span>
							</a>
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body" style="height:100%">
                            
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-6 -->
            </div>
			
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

	<!-- 模态框 -->
	<div class="modal fade" id="setting" tabindex="-1" role="dialog"
		aria-hidden="true">
		<div class="modal-dialog modal-lg" style="width:70%;height:50%;">
			<div class="modal-content">
				<div class="modal-body" >
					<div class="col-md-5 col-md-offset-3" style="background:rgba(33,30,30,1)">
						<div class=" panel panel-info" style="margin-top:30px">
							<div class="panel-heading">
								<h3 class="panel-title">Date Range:</h3>
							</div>
							<div class="panel-body" style="padding:20px 20px 20px 10px">
								<input type="date" name="query_start_date" value="2016-07-29"
									form="mysettingSat" /> <input type="time"
									name="query_start_time" value="15:37" form="mysettingSat" />
								<div class="row" style="padding-left:20px">
									<label for="start_now_id">Current time</label> <input
										type="checkbox" name="start_now" value="True"
										id="start_now_id" onClick="setDateRateForNext24Hours()"
										form="mysettingSat" />
								</div>
								<input type="date" name="query_end_date" value="2016-07-30"
									form="mysettingSat" /> <input type="time"
									name="query_end_time" value="15:37" form="mysettingSat" />
							</div>

						</div>
						<div class=" panel panel-info">
							<div class="panel-heading">
								<h3 class="panel-title">Satellites:</h3>
							</div>
							<div class="panel-body" style="padding:20px 20px 20px 10px">
								<form onsubmit="return validateForm()" action="#" method="post"
									id="mysettingSat" >
									<select id="done" class="selectpicker" multiple="multiple"
										data-done-button="true" data-actions-box="true" name="done">
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
									</select> <input type="submit" name="submit" value="Show Orbits"
										class="btn btn-default" form="mysettingSat"
										onclick="checkButton(this)">
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
</body>
<script type="text/javascript">
var mytable_width;
var mychart_height;
var type = 0;
$("#table1_fullScreen").click(function(event) {
	var table = document.getElementById("table1");
 	mytable_width = $("#table1").width();
	table.webkitRequestFullScreen();
	$("#table1").width("90%");
	type=1;
});
$("#form1_fullScreen").click(function(event) {
	var form = document.getElementById("form1");
 	mytable_width = $("#form1").width();
	form.webkitRequestFullScreen();
	$("#form1").width("90%");
	type=2;
});
$("#table2_fullScreen").click(function(event) {
	var table = document.getElementById("table2");
 	mytable_width = $("#table2").width();
	table.webkitRequestFullScreen();
	$("#table2").width("90%");
	type=3;
});
$("#chart1_fullScreen").click(function(event) {
	var chart = document.getElementById("cesiumContainer1");
	mychart_height = $("#cesiumContainer1").height();
	chart.webkitRequestFullScreen();
	$("#cesiumContainer1").height("100%");
	type=4;
});
$("#chart2_fullScreen").click(function(event) {
	var chart = document.getElementById("cesiumContainer2");
	mychart_height = $("#cesiumContainer2").height();
	chart.webkitRequestFullScreen();
	$("#cesiumContainer2").height("100%");
	type=5;
});
$("#chart3_fullScreen").click(function(event) {
	var chart = document.getElementById("cesiumContainer3");
	mychart_height = $("#cesiumContainer3").height();
	chart.webkitRequestFullScreen();
	$("#cesiumContainer3").height("100%");
	type=6;
});
document.addEventListener("webkitfullscreenchange", function () { 
	if(document.webkitIsFullScreen == false){//exit full screen
	 	switch(type){
	 	case 1:
	 		$("#table1").width(mytable_width);break;
	 	case 2:
	 		$("#form1").width(mytable_width);break;
	 	case 3:
	 		$("#table2").width(mytable_width);break;
	 	case 4:
	 		$("#cesiumContainer1").height(mychart_height);break;
	 	case 5:
	 		$("#cesiumContainer2").height(mychart_height);break;
	 	case 6:
	 		$("#cesiumContainer3").height(mychart_height);break;
	 		}
	 		
	}
}, false);
	
</script>
</html>
