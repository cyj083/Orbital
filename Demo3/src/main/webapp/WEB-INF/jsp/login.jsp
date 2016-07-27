<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
	<title>Login</title>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/sb-admin-2.css" rel="stylesheet">
    
    <script src="js/jquery.min.js"></script>
</head>

<script type="text/javascript">
$(document).ready(function(){

    //登录验证
	$("#login").click(function(){
		$.ajax({
			url:"user/loginCheck.html?userName=" + $("#userName").val() + "&password=" + $("#password").val() ,
			type:"get",			
			dataType:"json",
			success:function(data){
				if(data.msg!="登录成功"){
					alert(data.msg);
				}
				else{
					location.href="index.html";
				}
			},
			error:function(){ 
				alert("用户名密码验证失败");
			}
		});
	});
	
});

</script>

<body>
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Please Sign In</h3>
                    </div>
                    <div class="panel-body">
                        <form role="form">
                            <fieldset>
                                <div class="form-group">
                                    <input class="form-control" placeholder="UserName" name="userName" id="userName" autofocus>
                                </div>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Password" name="password" id="password" value="">
                                </div>
                                
                                <div class="checkbox">
                                    <label>
                                        <input name="remember" type="checkbox" value="Remember Me">Remember Me
                                    </label>
                                </div>
                                <!-- Change this to a button or input when using this as a form -->                         
                                <a href="#" class="btn btn-lg btn-success btn-block" id="login">Login</a>
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

</html>
