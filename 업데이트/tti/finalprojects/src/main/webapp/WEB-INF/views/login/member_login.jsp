<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<content tag="local_script1">
	<link rel="stylesheet" href="resources/css/font-awesome.min.css">
	<link rel="stylesheet" href="resources/css/font-awesome.css">
	<link rel="stylesheet" href="resources/css/itschool.css">
	<link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="resources/bootstrap/css/bootstrap-theme.min.css">
	
	<script src = "resources/js/jquery-3.1.1.min.js"></script>
	<script src = "resources/bootstrap/js/bootstrap.min.js"></script>
	
	<script src = "resources/js/parsley.min.js"></script>
	<script src = "resources/img"></script>
	</content>
</head>
<body>
	<div class="container">
    <div class="row">
       <div class="col-sm-6 col-md-4 col-md-offset-4">
            <span class="jombotron text-primary text-center"><h1>Login Page</h1></span>
            <div class="account-wall">
            <br>
                <form class="form-signin" action="loginMember" method="post">
                <input type="email" class="form-control" placeholder="Email" required="" name="email" id="email"
				data-parsley-type="email" data-parsley-error-message="This is not format of e-mail" autofocus
				style="border-color:#000000;" data-parsley-errors-container="div[id='validateEmail']"/>
				<div id="validateName" style="color:#ff0000"></div>
                <input type="password" class="form-control" placeholder="Password" required=""
                name="password" id="password" required="" data-parsley-error-message="please insert your Name" 
                style="border-color:#000000;" data-parsley-errors-container="div[id='validateName']"/>
				<div id="validateName" style="color:#ff0000"></div>
				<br>
                <a href="memberInsertForm" class="text-center new-account">Create an account </a>
                <br><br>
                <button class="btn btn-lg btn-primary btn-block" type="submit">
                    Sign in</button>
                </form>
	            </div>
	        </div>
	    </div>
	</div>
	<br><br><br><br><br><br><br>
</body>
</html>