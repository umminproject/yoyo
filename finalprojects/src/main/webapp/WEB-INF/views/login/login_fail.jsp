<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/font-awesome.min.css">
	<link rel="stylesheet" href="resources/css/font-awesome.css">
	<link rel="stylesheet" href="resources/css/itschool.css">
	<link rel="stylesheet" href="resources/css/bootstrap.min.css">
	<link rel="stylesheet" href="resources/css/bootstrap-theme.min.css">
	
	<script src = "resources/js/jquery-3.1.1.min.js"></script>
	<script src = "resources/js/bootstrap.min.js"></script>
	<content tag="list">
	<script src = "resources/js/parsley.min.js"></script>
	<script src = "resources/img"></script>
	</content>
</head>
<body>
	<form class="form-horizontal" action="loginMember" method="post" role="form" data-parsley-validate="true">
	<div class ="container">
		<div class="col-md-3"></div>
		<div class="col-md-6" >
			<div class="form-group">
				<span class="col-md-4"></span>
				<span class="jombotron text-primary text-center col-md-6"><h1>Login Page</h1><p>test page.</p></span>
				<span class="col-md-2"></span>
			</div>
			<br/>
			<div class="alert alert-danger fade in">
				<strong>Error!</strong>A problem has been email or password wrong
			</div>
			<br>
			<div class="form-group">
				<label class="control-label col-md-3">E-mail : </label>
				<div class="col-md-9">
					<input type="email" class="form-control" placeholder="Enter E-mail" name="email" id="email" required=""
					data-parsley-type="email" data-parsley-error-message="This is not format of e-mail" autofocus
					style="border-color:#000000;" data-parsley-errors-container="div[id='validateEmail']"/>
					<div id="validateEmail" style="color:#ff0000"></div>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-md-3" >Password : </label>
				<div class="col-md-9">
					<input type="password" text="text" class="form-control" placeholder="Enter Passowrd" name="password" 
					id="password" required="" data-parsley-error-message="please insert your Name" style="border-color:#000000;"
					data-parsley-errors-container="div[id='validateName']"/>
					<div id="validateName" style="color:#ff0000"></div>
				</div>
			</div>
			<div class="btn-group-md" align=right>
				<button type="submit" class="btn btn-primary">Login</button>
				<button type="button" class="btn btn-primary" onclick="location.href='index'">Cancel</button>
			</div>
			</form>
		</div>
		<div class="col-md-3"><span></span></div>
	</div>
	</form>
</body>
</html>