<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/includes/taglibs.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
		<!-- META DATA -->
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

		<!--font-family-->
		<link href="https://fonts.googleapis.com/css?family=Rufina:400,700" rel="stylesheet" />

		<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900" rel="stylesheet" />

		<!-- TITLE OF SITE -->
		<title><decorator:title /></title>

		<!-- favicon img -->
		<link rel="shortcut icon" type="image/icon" href="<c:url value="/resources/logo/favicon.png" />"/>

		<!--font-awesome.min.css-->
		<link rel="stylesheet" href="<c:url value="/resources/css/font-awesome.min.css"  />"/>

		<!--animate.css-->
		<link rel="stylesheet" href="<c:url value="/resources/css/animate.css"  />"/>

		<!--hover.css-->
		<link rel="stylesheet" href="<c:url value="/resources/css/hover-min.css" />">

		<!--datepicker.css-->
		<link rel="stylesheet"  href="<c:url value="/resources/css/datepicker.css"  />">

		<!--owl.carousel.css-->
        <link rel="stylesheet" href="<c:url value="/resources/css/owl.carousel.min.css" />">
		<link rel="stylesheet" href="<c:url value="/resources/css/owl.theme.default.min.css" />"/>

		<!-- range css-->
        <link rel="stylesheet" href="<c:url value="/resources/css/jquery-ui.min.css"  />"/>

		<!--bootstrap.min.css-->
		<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css"  />"/>

		<!-- bootsnav -->
		<link rel="stylesheet" href="<c:url value="/resources/css/bootsnav.css" />"/>

		<!--style.css-->
		<link rel="stylesheet" href="<c:url value="/resources/css/style.css" />" />

		<!--responsive.css-->
		<link rel="stylesheet" href="<c:url value="/resources/css/responsive.css"  />"/>

		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->

		<!--[if lt IE 9]>
		<script type="text/javascript" src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		<script type="text/javascript" src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->

	</head>
<body>

<%-- <div id="header">
    <%@ include file="/includes/header.jsp"%>
</div> --%>
<div id="menu">
    <%@ include file="/includes/menu-web.jsp"%>
</div>
<div id="content">
    <decorator:body />
</div>
<div id="footer">
    <%@ include file="/includes/footer-user.jsp"%>
</div>


<script type="text/javascript" src="<c:url value="/resources/js/jquery.js" />"></script>
		<!-- Include all compiled plugins (below), or include individual files as needed -->

		<!--modernizr.min.js-->
		<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js"></script>


		<!--bootstrap.min.js-->
		<script type="text/javascript" src="<c:url value="/resources/js/bootstrap.min.js" />"></script>

		<!-- bootsnav js -->
		<script type="text/javascript" src="<c:url value="/resources/js/bootsnav.js" />"></script>

		<!-- jquery.filterizr.min.js -->
		<script type="text/javascript" src="<c:url value="/resources/js/jquery.filterizr.min.js" />"></script>

		<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>

		<!--jquery-ui.min.js-->
        <script type="text/javascript" src="<c:url value="/resources/js/jquery-ui.min.js" />"></script>

        <!-- counter js -->
		<script type="text/javascript" src="<c:url value="/resources/js/jquery.counterup.min.js" />"></script>
		<script type="text/javascript" src="<c:url value="/resources/js/waypoints.min.js" />"></script>

		<!--owl.carousel.js-->
        <script type="text/javascript" src="<c:url value="/resources/js/owl.carousel.min.js" />"></script>

        <!-- jquery.sticky.js -->
		<script type="text/javascript" src="<c:url value="/resources/js/jquery.sticky.js" />"></script>

        <!--datepicker.js-->
        <script type="text/javascript" src="<c:url value="/resources/js/datepicker.js"  />"></script>

		<!--Custom JS-->
		<script type="text/javascript" src="<c:url value="/resources/js/custom.js" />"></script>
</body>
</html>