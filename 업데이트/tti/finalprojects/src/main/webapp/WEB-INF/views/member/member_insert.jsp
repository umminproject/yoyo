<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
	function doReset(){
		document.insert_form.id.value = "";
		document.insert_password.id.value = "";
	}
	$(document).ready(function(){
		$("#ulphone1 li").click(function(){
			$('#phone1').attr('value',$(this).text());
		});
		$('#photo').change(function(event){
			var tmppath = URL.createObjectURL(event.target.files[0]);
			alert($(this).val());
			$('#image').attr('src',tmppath);
		});
		$('#confirm').click(function(){
			var id = $('#id').val();
			if( id == ""){
				alert("id 를 입력하세요!");
				return;
			}
			$.ajax({
				type : 'POST',
				data:"id="+id,
				dataType : 'json',
				url : 'idconfirm',
				success : function(data){
					if(data==0){
						alert("사용가능한 ID 입니다.");
						$('#confirm_chk').attr('value','yes');
					}else{
						alert("중복된 ID 입니다");
					}
					return false;
				}
			});
		});
		$('#save').click(function(event){
			var chk = $('#confirm_chk').val();
			if($('#confirm_chk').val() ==  'no'){
				alert("id 중복체크 하세요.");
				return;
			}
			$('#insert_form').submit();
		});
		
	});
</script>
</content>
<body class="div-bgcolor-gray" onload="doReset()">
<form class="form-horizontal"  name="insert_form" action="memberInsert" method="post" role="form" data-parsley-validate="true"
		id ="insert_form" enctype="multipart/form-data">
   <div class="contatiner">
     <span class="text-primary text-center" style="font-weight:bold"><h1>회원 가입</h1></span>
     <p class="text-primary text-center" >이것은 연습을 하기위한 페이지 입니다.</p>
     <br><br>
      <div class="row">
         <div class="col-md-4"><span></span></div>
         <div class="col-md-3">
            <div class="input-group">
               <span class="input-group-addon"><i class="fa fa-user" aria-hidden="true"></i></span>
               <input name="id" class="form-control" text="text" size="16" placeholder="ID" id="id" autocomplete="off"
               required="" data-parsley-error-message="please insert your ID" data-parsley-errors-container="div[id='validateId']" />
               <span class="input-group-btn">
                  <button class="btn btn-default" type="button" id="confirm">Confirm</button>
               </span>
            </div>
            <div id="validateId" style="color:#ff0000"></div>
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
               <input name="name" class="form-control" text="text" size="20" placeholder="NAME" autocomplete="off"
               required="" data-parsley-error-message="please insert your Name" data-parsley-errors-container="div[id='validateName']" />
            </div>
            <div id="validateName" style="color:#ff0000"></div>
         </div>
         <div class="col-md-1">
            <img name="image" id="image" class="img-thumbnail" width="120px" height="120px" src="resources/img/cameraimg.jpg">
            <br>
            <div align="right">
            <input type="file" id="photo" name="imgfile">
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
               <select class="form-control" name="phone1" id="phone1">
                  		<option>010</option>	
                  		<option>011</option>
                  		<option>016</option>	
                  		<option>019</option>
               </select>
               <span class="input-group-addon">-</span>
               <input name="phone2" id="phone2" class="form-control" text="text" size="4" placeholder="Phone" autocomplete="off"
               required="" data-parsley-error-message="please insert your Phone" data-parsley-errors-container="div[id='validatePhone']"/>
               <span class="input-group-addon">-</span>
               <input name="phone3" id="phone3" class="form-control" text="text" size="4" placeholder="Number" autocomplete="off"
               required="" data-parsley-error-message="please insert your Phone" data-parsley-errors-container="div[id='validatePhone']"/>
            </div>
            <div id="validatePhone" style="color:#ff0000"></div>
            <br>
            <div class="input-group">
               <span class="input-group-addon"><i class="fa fa-envelope" aria-hidden="true"></i></span>
               <input name="email" class="form-control" text="text" size="30" placeholder="E-MAIL" id="email" type="email"
               data-parsley-type="email" required="" data-parsley-error-message="please insert your Email" 
               data-parsley-errors-container="div[id='validateEmail']"/>
            </div>
               <div id="validateEmail" style="color:#ff0000"></div>
            <br>
            <div align="center">
               <button name="save"class="btn btn-default" type="button" id="save">Save</button>
               <span>&nbsp;&nbsp;</span>
               <span>&nbsp;&nbsp;</span>
               <button name="cancel" type="button" class="btn btn-default">Cancel</button>
            </div>
<!--             <div align="right"> -->
<!--                <kbd name="inputdate" type="hidden"></kbd>  -->
<!--             </div> -->
            <input type="hidden" name="confirm_chk" value="no" id="confirm_chk"/>
         </div>
         <div class="col-md-4"></div>
      </div>
   </div>
</form>	
<br><br><br><br><br>
</body>
</html>
