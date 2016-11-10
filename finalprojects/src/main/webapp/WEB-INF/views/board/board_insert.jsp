<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html> 
<html class="no-js">
 
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
	
	
	<body>
		<!-- MAIN -->
			<div class="wrapper cf">
				<p><h3>작성해주세요!</h3></p>
				<p>부담없이 속시원하게 얘기해 주세요.</p>
				<!-- form -->
				<form class="form" id="contactForm" action="boardInsert" method="post" data-parsley-validate="true" role="form">
						 <p>
						 <div class="input-group" >
							<label for="subject">주제</label>
							<select class="form-control" name="b_dept" id="b_dept" >
							<option>우정</option>
							<option>사랑</option>
							<option>소망</option>
							</select>
						</div>
						</p>
						 
						<p>
							<label for="title" >제목</label>
							<input name="b_title"  id="b_title" type="text" class="form-poshytip" 
							 required=""  data-parsley-type="text" autofocus data-parsley-error-message="제목을 입력해 주세요" 
							 data-parsley-errors-container="div[id='validateTitle']" />
							
						</p>
						 <div id="validateTitle" style="color:#ff0000"></div>
						
						
						
						<p>
							<label for="comments">내용</label>
							<textarea  name="b_content"  id="b_content" rows="5" cols="20" class="form-poshytip" 
							required=""  data-parsley-type="text" autofocus data-parsley-error-message="내용을 입력해 주세요" 
							 data-parsley-errors-container="div[id='validateContent']"
							></textarea>
							 <div id="validateContent" style="color:#ff0000"></div>
						</p>
						
						
						<div class="row" align="center" >
						<button class="btn btn-info"  type="submit" name="save" id="save" >확인</button> 
						<button class="btn btn-warning"  type="button" value="Cancel" name="cancel" id="cancel" >취소</button> 
						</div>
						</div>
				</form>
				<!-- ENDS form -->				
				
    		</div>
			
			
			
		
	</body>
	
	
	
</html>
