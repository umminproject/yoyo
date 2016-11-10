<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  prefix="decorator" 
            uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib  prefix="page"
            uri="http://www.opensymphony.com/sitemesh/page" %>
<%@ taglib  prefix="c"
            uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!doctype html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
	    <meta name="description" content="">
	    <meta name="author" content="">
<html class="no-js">
	<head>
		<title>FOLDER TEMPLATE</title>
		 
		<!--[if lt IE 9]>
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
		<!-- Custom Fonts -->
   		<link href="resources/css/font-awesome.min.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" media="all" href="resources/css/style.css"/>
		<meta name="viewport" content="width=device-width, initial-scale=1"/>
		<!-- Adding "maximum-scale=1" fixes the Mobile Safari auto-zoom bug: http://filamentgroup.com/examples/iosScaleBug/ -->		
				
		<!-- JS -->
		<script src="resources/js/jquery-1.7.1.min.js"></script>
		<script src="resources/js/custom.js"></script>
		<script src="resources/js/tabs.js"></script>
		<script src="resources/js/css3-mediaqueries.js"></script>
		<script src="resources/js/jquery.columnizer.min.js"></script>
		
		<!-- jQuery -->
	    <script src="resources/js/jquery.min.js"></script>
	    <!-- Bootstrap Core JavaScript -->
	    <script src="resources/bootstrap/js/bootstrap.min.js"></script>
		
		<!-- Isotope -->
		<script src="resources/js/jquery.isotope.min.js"></script>
		
		<!-- Lof slider -->
		<script src="resources/js/jquery.easing.js"></script>
		<script src="resources/js/lof-slider.js"></script>
		<link rel="stylesheet" href="resources/css/lof-slider.css" media="all"  /> 
		<!-- ENDS slider -->
		
		<!-- Tweet -->
		<link rel="stylesheet" href="resources/css/jquery.tweet.css" media="all"  /> 
		<script src="resources/js/tweet/jquery.tweet.js" ></script> 
		<!-- ENDS Tweet -->
		
		<!-- superfish -->
		<link rel="stylesheet" media="screen" href="resources/css/superfish.css" /> 
		<script  src="resources/js/superfish-1.4.8/js/hoverIntent.js"></script>
		<script  src="resources/js/superfish-1.4.8/js/superfish.js"></script>
		<script  src="resources/js/superfish-1.4.8/js/supersubs.js"></script>
		<!-- ENDS superfish -->
		
		<!-- prettyPhoto -->
		<script  src="resources/js/prettyPhoto/js/jquery.prettyPhoto.js"></script>
		<link rel="stylesheet" href="resources/js/prettyPhoto/css/prettyPhoto.css"  media="screen" />
		<!-- ENDS prettyPhoto -->
		
		<!-- poshytip -->
		<link rel="stylesheet" href="resources/js/poshytip-1.1/src/tip-twitter/tip-twitter.css"  />
		<link rel="stylesheet" href="resources/js/poshytip-1.1/src/tip-yellowsimple/tip-yellowsimple.css"  />
		<script  src="resources/js/poshytip-1.1/src/jquery.poshytip.min.js"></script>
		<!-- ENDS poshytip -->
		
		<!-- JCarousel -->
		<script type="text/javascript" src="resources/js/jquery.jcarousel.min.js"></script>
		<link rel="stylesheet" media="screen" href="resources/css/carousel.css" /> 
		<!-- ENDS JCarousel -->
		
		<!-- GOOGLE FONTS -->
		<link href='http://fonts.googleapis.com/css?family=Voltaire' rel='stylesheet' type='resources/text/css'>
 
		<!-- modernizr -->
		<script src="resources/js/modernizr.js"></script>
		
		<!-- SKIN -->
		<link rel="stylesheet" media="all" href="resources/css/skin.css"/>
		
		<!-- Less framework -->
		<link rel="stylesheet" media="all" href="resources/css/lessframework.css"/>
		
		<!-- flexslider -->
		<link rel="stylesheet" href="resources/css/flexslider.css" >
		<script src="resources/js/jquery.flexslider.js"></script>
		
		
</head>
<body class="home">
		<page:applyDecorator name="header"/>
	<decorator:body/>
	<page:applyDecorator name="footer"/>
	<decorator:getProperty property="page.local_script1"></decorator:getProperty>
	<decorator:getProperty property="page.local_script2"></decorator:getProperty>
	<decorator:getProperty property="page.local_script3"></decorator:getProperty>
</body>
</html>