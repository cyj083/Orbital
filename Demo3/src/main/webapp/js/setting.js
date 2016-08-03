function setDateRateForNext24Hours(){
	var dateInput = document.getElementsByName('query_start_date');
	var timeInput = document.getElementsByName('query_start_time');

	var dateInput2 = document.getElementsByName('query_end_date');
	var timeInput2 = document.getElementsByName('query_end_time');
	var currentDate = new Date();

	fullYear = currentDate.getFullYear();
	month =  addZero(currentDate.getMonth()+1);
	day = addZero(currentDate.getDate());

	hour = addZero(currentDate.getHours());
	minute = addZero(currentDate.getMinutes());
	second = addZero(currentDate.getSeconds());

	dateInput[0].value = fullYear + "-" +  month + "-" + day;
	timeInput[0].value = hour + ":" + minute

	// add 24 hours to it by default
	day = currentDate.getDate();
	month = currentDate.getMonth() + 1;

	if(day == 29 && month == 2){
		day = "01";
		month = "03"
	}else if(day == 30 && (month == 9 || month == 4 || month == 6 || month == 11 )){
		day = "01";
		month = addZero(month + 1);
	}else if(day == 31 && month == 12){
		day = "01";
		month = "01"
		year = fullYear + 1;
	}else if(day == 31){
		day = "01";
		month = addZero(month + 1);
	}else{
		day = addZero(day + 1);
		month = addZero(month);
	}

	dateInput2[0].value = fullYear + "-" +  month + "-" + day;
	timeInput2[0].value = hour + ":" + minute

	function addZero(i) {
	    if (i < 10) {
	        i = "0" + i;
	    }
	    return i;
	}
}
var submit_type;
function validateForm(formElement) {
    var sats = document.getElementById("done");
    var w = document.forms["mysettingSat"]["query_start_date"].value;
   	var x = document.forms["mysettingSat"]["query_start_time"].value;
   	var y = document.forms["mysettingSat"]["query_end_date"].value;
    var z = document.forms["mysettingSat"]["query_end_time"].value;

    if(submit_type == "Get Over Passes"){

 		var latitude = document.forms["mysettingSat"]["latitude"].value;
 		var longitude = document.forms["mysettingSat"]["longitude"].value;

 		if(noneChecked(sats) || latitude == null || latitude == "" || longitude == null || longitude == ""){
 			alert("You must select the Satellite(s) and coordinates or polygon area for this query");
 			return false;
 		}

    }else if(submit_type == "Show Orbits"){
	    if (noneChecked(sats)) {
	        alert("You must select the Satellite(s) for this query");
	        return false;
	    }
	    else{
	    	//alert("selected orbites");
	    	// myform = document.forms["mysettingSat"];
	    	//document.getElementById('mysettingSat').action='index.html?selected='+results;
	    	//alert(results);
	    	results = "sats="+results+"&start="+w+"_"+x+":00&end="+y+"_"+z+":00&format=czml&type=orbit";
	    	//alert(results);
	    	viewer1.dataSources.removeAll();
	    	viewer1.dataSources.add(Cesium.CzmlDataSource.load("getCzmlDataSource.html?"+results));
	    	//alert("1");

	    	viewer2.dataSources.removeAll();
	    	viewer2.dataSources.add(Cesium.CzmlDataSource.load("getCzmlDataSource.html?"+results));
	    	//viewer3.dataSources.add(Cesium.CzmlDataSource.load("getCzmlDataSource.html?sats=25544,39159,39634&start=2016-02-26_15:00:00&end=2016-02-27_15:00:00&format=czml&type=orbit"));	        	
	    	$('.selectpicker').selectpicker('deselectAll');

	    	$('#setting').modal('hide');
	    	return false;
	    	 
	    }
    }else if(submit_type == "Delete Satellites"){
    	
    		alert("You must create an account or login in order to edit Satellite list")
    		return false;

    	
    }else if(submit_type == "Update TLE's"){
    	
    		alert("You must create an account or login in order to edit the Satellite list")
    		return false;
    	
    }else if(submit_type == "Add Satellite"){
    	
    		alert("You must create an account or login in order to add a custom Satellite")
    		return false;
    	
    }

	if(w == null || w == "" || x == null || x == "" || y == null || y == "" || z == null || z == ""){
	    setDateRateForNext24Hours();
    }
    return true;
}

function checkButton(submitButtonClicked){
	submit_type = submitButtonClicked.value;
}

var satElems;
var results=new Array();//selected sats's value
var selectedNum = 0;//selected sats's number
function noneChecked(sats){
	//alert("noneChecked");
	results=[];
	selectedNum=0;
	//alert(results);
	for(var i=0, n=sats.length; i<n; i++) {
		if(sats.options[i].selected){
			//alert(i);
			//var options=document.getElementById("done").options[i].value;
			//alert(options);
			//return false;
			results[selectedNum] = sats.options[i].value;
			selectedNum ++;
		}
	}
	if(selectedNum == 0){
		return true;
	}
	else{
		alert(results);
//		document.getElementById("results").value = results;
		return false;
	}
}


//var satElems;
//function noneChecked(sats){
//	for(var i=0, n=sats.length; i<n; i++) {
//		if(sats.options[i].selected){
//			return false;
//		}
//	}
//	return true;
//}

