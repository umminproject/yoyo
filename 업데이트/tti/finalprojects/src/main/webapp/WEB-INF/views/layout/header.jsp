<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<content tag="local_script1">
 <meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 <script src="resources/bootstrap/js/bootstrap.min.js"></script>
</content>
<title>Insert title here</title>
</head>
<body>
	<header style="background-color:#ffffff">
			<div class="wrapper">
			<div class="row">
			    <div id="logo">
					<a href="home"><img  src="resources/img/logo.png" alt="Simpler"></a>
				</div>
			</div>
				<nav class="navbar navbar-default">
				  <div class="container-fluid">
				    <div class="navbar-header">
				      <a class="navbar-brand" href="#">WebSiteName</a>
				    </div>
				    <ul class="nav navbar-nav">
				      <li class="active"><a href="#">Home</a></li>
				      <li><a href="doctorList">Doctor</a></li>
				      <li><a href="board">Page 2</a></li> 
				      <c:if test="${sessionid =='doctor1'}">
				      <li><a href="counselinglist">list</a></li> 
				      </c:if>
				      <c:if test="${sessionid =='doctor2'}">
				      <li><a href="counselinglist">list</a></li> 
				      </c:if>
				      <c:if test="${sessionid =='doctor3'}">
				      <li><a href="counselinglist">list</a></li> 
				      </c:if>
				      <c:if test="${sessionid =='doctor4'}">
				      <li><a href="counselinglist">list</a></li> 
				      </c:if>
				      <c:if test="${sessionid =='doctor5'}">
				      <li><a href="counselinglist">list</a></li> 
				      </c:if>
				    </ul>
				    <ul class="nav navbar-nav navbar-right">
	                   <c:if test="${sessionid != null}">
	                  	  <li><a href="memberInfo"><i class="fa fa-user fa-fw"></i> 회원정보 </a>
	                  	  <li><a href="logoutForm"><i class="fa fa-user fa-fw"></i> LogOut </a>
				       </c:if>
				       <c:if test="${sessionid == null}">
					      <li><a href="memberInsertForm"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
					      <li><a href="login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
	                  </c:if>
				    </ul>
				  </div>
				</nav>
				</div>
	 </header>
</body>
</html>