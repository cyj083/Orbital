<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en">
<head>
  <!-- Use correct character set. -->
  <meta charset="utf-8">
  <!-- Tell IE to use the latest, best version. -->
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <!-- Make the application on mobile take up the full browser screen and disable user scaling. -->
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no">
  <title>Hello World!</title>
  <script src="Build/Cesium/Cesium.js"></script>
  <script src="js/jquery.min.js"></script>
  <style>
      @import url(Build/Cesium/Widgets/widgets.css);
      html, body, #cesiumContainer {
          width: 100%; height: 100%; margin: 0; padding: 0; overflow: hidden;
      }
  </style>
</head>

<script>
$(document).ready(function(){
	var viewer = new Cesium.Viewer('cesiumContainer');
	viewer.dataSources.add(Cesium.CzmlDataSource.load('SampleData/simple.czml'));

});	

</script>

<body>
    <div id="cesiumContainer" class="row" style="height:80%"></div>

    <div class="row">
    	<button id="mbyutton" name="mybutton">test</button>>
    </div>
</body>
<script>
	$("#mybutton").onclick(function event(){
		alert("fa");
	});
</script>
</html>