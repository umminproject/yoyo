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
	<!-- HEADER -->
		<header style="background-color:#ffffff">
			<div class="wrapper">
				<!-- SLIDER -->				
				<div id="home-slider" class="lof-slidecontent">
					
					<div class="preload"><div></div></div>
					
					<!-- slider content --> 
					<div class="main-slider-content" >
					<ul class="sliders-wrap-inner">
					    <li>
					          <img src="resources/img/ll.gif" title="" alt="alt" width="1000" height="500" />           
					          <div class="slider-description">
					            <h4>Lorem ipsum dolor</h4>
					            <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est...
					            <a class="link" href="#">Read more </a>
					            </p>
					         </div>
					    </li>
					  </ul>  	
					</div>
				 </div> 
				<!-- ENDS SLIDER -->
			</div>
		</header>
		<!-- ENDS HEADER -->
		
		<!-- MAIN -->
		<div id="main" style="background-color:#fff">
			<div class="wrapper cf">
				
			<!-- featured -->
			<div class="home-featured">
			
				<ul id="filter-buttons">
					<li><a href="#" data-filter="*" class="selected">show all</a></li>
					<li><a href="#" data-filter=".web">web</a></li>
					<li><a href="#" data-filter=".print">print</a></li>
					<li><a href="#" data-filter=".design">design</a></li>
					<li><a href="#" data-filter=".photo">photo</a></li>
				</ul>
				
				<!-- Filter container -->
				<div id="filter-container" class="cf">
					<figure class="web">
						<a href="project.html" class="thumb"><img src="resources/img/doctor/q.jpeg" alt="alt" /></a>
						<figcaption>
							<a href="project.html"><h3 class="heading">열린성애병원 진료원장 황채연 </h3></a>
							● 국립 전북대학교 의과대학 졸업 ● 아주대학교병원 인턴 수료 ● 아주대학교병원 정신건강의학과 레지던트 수료 ● 육군 훈련소 정신건강의학과 과장 역임 ● (현) 대한의사협회 정회원 ● (현) 한국중독정신의학회 평생회원 </figcaption>
					</figure>
					
					<figure class="print">
						<a href="project.html" class="thumb"><img src="resources/img/doctor/qq.jpg" alt="alt" /></a>
						<figcaption>
							<a href="project.html"><h3 class="heading">삼성 서울병원 정신건강의학과 전홍진 교수</h3></a>
							● 중앙대학교 의과대학 졸업 ● 중앙대학교 대학원 정신과학 박사 ● 02~04 청량리 정신병원 정신과 과장 ● 04~05 한양대학교 병원 소아청소년 정신과 전임의 ● 05~07 메티스 소아청소년 정신과 부원장 ● 서울특별시립 어린이병원 소아청소년 정신과 과장 ● 대한 신경정신 의학회 정회원 ● 대한 소아청소년 정신의학회 정회원</figcaption>
					</figure>
					
					
					<figure class="design">
						<a href="project.html" class="thumb"><img src="resources/img/doctor/qqq.jpg" alt="alt" /></a>
						<figcaption>
							<a href="project.html" ><h3 class="heading">충남대학교병원 정신건강의학과 홍경수 교수</h3></a>
							●(현) 가톨릭대학교 서울성모병원 정신건강의학과 임상강사 ●2015 가톨릭대학교 대학원 석사, 박사 수료 ●2011-2013 LPJ 마음건강의원 원장 ●2006-2011 가톨릭중앙의료원 인턴, 정신건강의학과 레지던트 수료 ●2006 충남대학교 의과대학 졸업 * 학회활동 ●대한신경정신의학회 회원 ●한국중독정신의학회 학술간사 ●대한조현병학회 교육간사 * 기타 ●2015 노인정신건강 인증의 수료 ●2012 Hypnosis workshop 수료 ●2011 EMDR Basic Training Course 수료 ●2011 Neurofeedback workshop 수료</figcaption>
					</figure>
					
					
					<figure class="photo">
						<a href="project.html" class="thumb"><img src="resources/img/doctor/qqqq.jpg" alt="alt" /></a>
						<figcaption>
							<a href="project.html" ><h3 class="heading">중앙대학교병원 정신과 이영식교수 </h3></a>
							● 1993. 충남대학교 의과대학 ● 1999. 충남대학교 의과대학원 석사 ● 2002. 충남대학교 의과대학원 박사 ● 2000.3 - 2002.2 충남대학교병원 전임의 ● 2002.6 - 충남대학교 의과대학 전임강사 ● 2004.10 - 현재 충남대학교 의과대학 조교수</figcaption>
					</figure>
					
					
					<figure class="web photo">
						<a href="project.html" class="thumb"><img src="resources/img/doctor/qqqqq.jpg" alt="alt" /></a>
						<figcaption>
							<a href="project.html" ><h3 class="heading">김병후 정신건강의학과 김병후 교수</h3></a>
							● 1993.02	서울대학교 의예과 수료 ● 1997.02	서울대학교 의과대학 졸업 (의학사) ● 2005.02	서울대학교 대학원 정신과학 (의학석사)
							● 2007.08	서울대학교 대학원 정신과학 (의학박사)
							● 1997.03 ~ 1998.02	서울대학교병원 인턴
							● 1998.03 ~ 2002.02	서울대학교병원 신경정신과 전공의
							● 2002.03	정신건강의학과 전문의 자격 취득
							● 2005.05 ~ 2007.04	서울대학교병원 신경정신과 임상강사
							● 2006.05 ~ 2007.04	부천시 정신건강증진센터 센터장(겸임)
							● 2007.05 ~ 2008.01	서울대학교병원 임상의학연구소 촉탁교수
							● 2008.06 ~ 2009.02	삼성서울병원 정신건강의학과 임상조교수
							● 2009.03 ~ 2013.02	삼성서울병원 정신건강의학과 전임조교수
							● 2010.06 ~ 2012.02	삼성서울병원 정신건강의학과 의국장
							● 2011.01 ~ 2011.11	삼성암센터 정신건강관리팀 팀장
							● 2011.01 ~현재	삼성서울병원 우울증센터 담당교수
							● 2012.08 ~ 2014.01	미국 하버드대학교 매사추세츠 종합병원(MGH)의 우울증임상연구센터(Depression Clinical & Research Program)에서 연수
							● 2013.04 ~현재	성균관의대 삼성서울병원 정신건강의학과 부교수
							● 2014.0301 ~현재	삼성서울병원 정신건강의학과 의국장
							● 2015.01 ~현재	하버드의대 매사추세츠 종합병원(MGH) 우울증임상연구센터 자문교수(겸임)</figcaption>
					</figure>
					
					
					<figure class="web print">
						<a href="project.html" class="thumb"><img src="resources/img/doctor/qqqqqq.jpg" alt="alt" /></a>
						<figcaption>
							<a href="project.html" ><h3 class="heading">새홍제 병원 진료과장 사은희</h3></a>
							● 부산대학교병원 신경과전문의 수료
							● 동의의료원 신경과장 역임
							● 서부산센텀병원 신경과장 역임
							● 현 새홍제병원 신경과 과장
							● 대한 신경과학회 정회원
							● 대한 뇌졸중학회 정회원
							● 대한 치매학회 정회원
							● 대한 임상신경생리학회 회원 </figcaption>
					</figure>
					
					
					<figure class="photo">
						<a href="project.html" class="thumb"><img src="resources/img/doctor/qqqqqqq.jpg" alt="alt" /></a>
						<figcaption>
							<a href="project.html" ><h3 class="heading">국립정신센터 강시현 센터장</h3></a>
							● 1988.03 ~ 1989.02	서울대학교병원 인턴과정 수료
							● 1989.03 ~ 1992.02	서울대학교병원 신경정신과 레지던트과정 수료
							● 1992.02	정신건강의학과 전문의 자격 취득
							● 1992.03 ~ 1993.12	서울대학교병원 신경정신과 전임의
							● 1993.12 ~ 1994.09	국립서울정신병원 전문의
							● 1994.10 ~현재	삼성서울병원 정신건강의학과 전문의
							● 1997.03 ~ 1999.03	성균관대학교 의과대학 정신건강의학과 전임강사
							● 1999.04 ~ 2003.09	성균관대학교 의과대학 정신건강의학과 조교수
							● 2000.01 ~ 2002.01	미국 University of California Los Angeles 정신건강의학과 방문교수
							● 2003.10 ~ 2009.09	성균관대학교 의과대학 정신건강의학과 부교수
							● 2009.10 ~현재	성균관대학교 의과대학 정신건강의학과 교수
							● 2014.0210 ~현재	삼성서울병원 정신건강의학과 과장 및 성균관대학교 의과대학 정신건강의학과 주임교수 </figcaption>
					</figure>
					
					
					<figure class="web photo">
						<a href="project.html" class="thumb"><img src="resources/img/doctor/qqqqqqqq.jpg" alt="alt" /></a>
						<figcaption>
							<a href="project.html" ><h3 class="heading">카톨릭대학교 여의도 성모병원 박원명 교수</h3></a>
							● 1988-1989. 서울대 어린이병원 소아정신과 전임의
							● 1989-1991. 중대부속 용산병원 신경정신과 임상강사
							● 1991-1995. 중앙의대 조교수
							● 1996-1996. 미국 edical College Ohio 소아청소년센터 연수
							● 1995-2000. 중앙의대 부교수
							● 2000-현재. 중앙의대 교수
							● 2003. 중앙대 용산병원 신경정신과장
							● 2007-2009. 중앙대병원 교육수련부장
							● 2009-2012.12 중앙대병원 정신과장
							● 2009-2012 중앙의대 신경정신과학교실 주임교수교수 </figcaption>
					</figure>
					
					
					<figure class="web print">
						<a href="project.html" class="thumb"><img src="resources/img/doctor/qqqqqqqqqq.jpg" alt="alt" /></a>
						<figcaption>
							<a href="project.html" ><h3 class="heading">강릉 동인 병원 정신건강의학과전문의 진료 과장 김성호</h3></a>
							● 가톨릭대학교 의과대학 졸업
							● 여의도성모병원 정신과 수련 및 전문의 자격취득
							● 대구 성동병원 진료과장
							● 경북 청도 대남병원 진료과장
							● 열린성애병원 진료1과장
							● 대한신경정신의학회 정회원 </figcaption>
					</figure>
					
				</div><!-- ENDS Filter container -->
				
			</div>
			<!-- ENDS featured -->
			
			
			
			
			</div><!-- ENDS WRAPPER -->
		</div>
		<!-- ENDS MAIN -->
</body>
</html>