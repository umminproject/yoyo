<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  prefix="decorator" 
            uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib  prefix="page"
            uri="http://www.opensymphony.com/sitemesh/page" %>
<%@ taglib  prefix="c"
            uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<content tag="local_script1">
	<link rel="stylesheet" href="resources/css/font-awesome.min.css">
	<link rel="stylesheet" href="resources/css/font-awesome.css.map">
	<link rel="stylesheet" href="resources/css/itschool.css">
	<link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="resources/css/bootstrap-theme.min.css">
	
	<script src = "resources/js/jquery-3.1.1.min.js"></script>
	<script src = "resources/js/bootstrap.min.js"></script>
	<script src = "resources/js/parsley.min.js"></script>
	<script src = "resources/img"></script>
</content>
</head>
<content tag="local_script2">
<script type="text/javascript">
	$(document).ready(function(){
		$('#photo').change(function(event){
			var tmppath = URL.createObjectURL(event.target.files[0]);
			alert($(this).val());
			$('#image').attr('src',tmppath);
		});
	});
</script>
</content>
<body class="div-bgcolor-gray" onload="doReset()">
<form class="form-horizontal"  name="insert_form" action="memberUpdate" method="post" role="form" data-parsley-validate="true"
	enctype="multipart/form-data" >
   <div class="contatiner">
     <span class="text-success text-center"><h1>Member Update</h1></span>
     <p class="text-success text-center">이것은 연습을 하기위한 페이지 입니다.</p>
     <br><br>
      <div class="row">
         <div class="col-md-4"><span></span></div>
         <div class="col-md-3">
            <div class="input-group">
               <span class="input-group-addon"><i class="fa fa-user" aria-hidden="true"></i></span>
               <input name="id"  id="id" class="form-control" text="text" value="${member.getId()}" size="16"
               readonly="readonly"/>
            </div>
            <br>
            <div class="input-group">
               <span class="input-group-addon"><i class="fa fa-unlock-alt" aria-hidden="true"></i></span>
               <input name="password" type="password" id="password" class="form-control" text="text" size="16" placeholder="PASSWORD" autocomplete="off"
               required="true" data-parsley-error-message="please insert your Password" data-parsley-errors-container="div[id='validatePw']"/>
            </div>
            <div id="validatePw" style="color:#ff0000"></div>
            <div class="input-group">
               <span class="input-group-addon"><i class="fa fa-unlock-alt" aria-hidden="true"></i></span>
               <input name="repassword" type="password" id="repassword" class="form-control" text="text" size="16" placeholder="PASSWORD Check" 
               required="true" data-parsley-error-message="please Check Password and RePassword" autocomplete="off"
               data-parsley-equalto="#password" data-parsley-errors-container="div[id='validateRePw']"/>
           </div>
           <div id="validateRePw" style="color:#ff0000"></div>
            <br>
            <div class="input-group">
               <span class="input-group-addon"><i class="fa fa-male" aria-hidden="true"></i></span>
               <input name="name" class="form-control" text="text" size="20" placeholder="NAME" autocomplete="off" value="${member.getName()}"
               required="" data-parsley-error-message="please insert your Name" data-parsley-errors-container="div[id='validateName']" />
            </div>
            <div id="validateName" style="color:#ff0000"></div>
         </div>
         <div class="col-md-1">
            <img name="image" id="image" class="img-thumbnail" width="120px" height="120px" src="resources/img/cameraimg.jpg">
            <br>
            <div align="right">
            <input type="file" id="photo" name="imgfile" >
            </div>
         </div>
         <div class="col-md-4"></div>
      </div>
      <br>
      <div class="row">
         <div class="col-md-4"><span></span></div>
         <div class="col-md-4">
            <div class="input-group">
               <span class="input-group-addon"><i class="fa fa-phone" aria-hidden="true"></i></span>
                  <select class="form-control" name="phone1" id="phone1" option="${member.phone1}">
                  		<option value="010"<c:if test="${member.phone1=='010'}">selected</c:if>>010</option>
                  		<option value="011"<c:if test="${member.phone1=='011'}">selected</c:if>>011</option>
                  		<option value="016"<c:if test="${member.phone1=='016'}">selected</c:if>>016</option>	
                  		<option value="019"<c:if test="${member.phone1=='019'}">selected</c:if>>019</option>
                  </select>
               <span class="input-group-addon">-</span>
               <input name="phone2" id="phone2" class="form-control" text="text" size="4" placeholder="Phone" autocomplete="off" value="${member.getPhone2()}"
               required="" data-parsley-error-message="please insert your Phone" data-parsley-errors-container="div[id='validatePhone']"/>
               <span class="input-group-addon">-</span>
               <input name="phone3" id="phone3" class="form-control" text="text" size="4" placeholder="Number" autocomplete="off" value="${member.getPhone3()}"
               required="" data-parsley-error-message="please insert your Phone" data-parsley-errors-container="div[id='validatePhone']"/>
            </div>
            <div id="validatePhone" style="color:#ff0000"></div>
            <br>
            <div class="input-group">
               <span class="input-group-addon"><i class="fa fa-envelope" aria-hidden="true"></i></span>
               <input name="email" class="form-control" text="text" size="30" placeholder="E-MAIL" value="${member.email}" readonly="readonly"/>
            </div>
            <br>
            <div align="center">
               <button name="save"class="btn btn-default" type="submit" id="update">Update</button>
               <span>&nbsp;&nbsp;</span>
               <span>&nbsp;&nbsp;</span>
               <a href="updateCancel"><button name="cancel" type="button" class="btn btn-default" onclick="lcation.href='member_list'">Cancel</button></a>
               <span>&nbsp;&nbsp;</span>
               <span>&nbsp;&nbsp;</span>
               <a onclick="location.href='memberDeleteYn?id=${member.getId()}'"><button name="delete" type="button" class="btn btn-default">Delete</button></a>
            </div>
<!--             <div align="right"> -->
<!--                <kbd name="inputdate">2016.10.07</kbd>  -->
<!--             </div> -->
         </div>
         <div class="col-md-4"></div>
      </div>
   </div>
</form>
<br><br><br><br><br><br>
</body>
</html>