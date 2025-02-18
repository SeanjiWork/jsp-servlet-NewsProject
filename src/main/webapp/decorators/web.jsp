<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html class="no-js" lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title><dec:title default="Blog Home - Start Bootstrap Template" /></title>

<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="manifest" href="site.webmanifest">
<link rel="shortcut icon" type="image/x-icon"
	href="<c:url value='/template/web/assets/img/favicon.ico'/>">

<!-- CSS here -->
<link rel="stylesheet" href="<c:url value='/template/web/assets/css/bootstrap.min.css'/>">
<link rel="stylesheet" href="<c:url value='/template/web/assets/css/owl.carousel.min.css'/>">
<link rel="stylesheet" href="<c:url value='/template/web/assets/css/ticker-style.css'/>">
<link rel="stylesheet" href="<c:url value='/template/web/assets/css/flaticon.css'/>">
<link rel="stylesheet" href="<c:url value='/template/web/assets/css/slicknav.css'/>">
<link rel="stylesheet" href="<c:url value='/template/web/assets/css/animate.min.css'/>">
<link rel="stylesheet" href="<c:url value='/template/web/assets/css/magnific-popup.css'/>">
<link rel="stylesheet" href="<c:url value='/template/web/assets/css/fontawesome-all.min.css'/>">
<link rel="stylesheet" href="<c:url value='/template/web/assets/css/themify-icons.css'/>">
<link rel="stylesheet" href="<c:url value='/template/web/assets/css/slick.css'/>">
<link rel="stylesheet" href="<c:url value='/template/web/assets/css/nice-select.css'/>">
<link rel="stylesheet" href="<c:url value='/template/web/assets/css/style.css'/>">
<link rel="stylesheet" href="<c:url value='/template/web/assets/css/chat-frame.css'/>">
</head>

<body>

	<!-- Header -->
	<%@ include file="/common/web/header.jsp"%>

	<!-- Content -->
	<main>
		<dec:body />
	</main>

	<!-- Footer-->
	<%@ include file="/common/web/footer.jsp"%>


	<!-- JS here -->

    <script src="<c:url value='/template/web/assets/js/vendor/modernizr-3.5.0.min.js' />"></script>
    <!-- Jquery, Popper, Bootstrap -->
    <script src="<c:url value='/template/web/assets/js/vendor/jquery-1.12.4.min.js' />"></script>
    <script src="<c:url value='/template/web/assets/js/popper.min.js' />"></script>
    <script src="<c:url value='/template/web/assets/js/bootstrap.min.js' />"></script>
    <!-- Jquery Mobile Menu -->
    <script src="<c:url value='/template/web/assets/js/jquery.slicknav.min.js' />"></script>

    <!-- Jquery Slick , Owl-Carousel Plugins -->
    <script src="<c:url value='/template/web/assets/js/owl.carousel.min.js' />"></script>
    <script src="<c:url value='/template/web/assets/js/slick.min.js' />"></script>
    <!-- Date Picker -->
    <script src="<c:url value='/template/web/assets/js/gijgo.min.js' />"></script>
    <!-- One Page, Animated-HeadLin -->
    <script src="<c:url value='/template/web/assets/js/wow.min.js' />"></script>
    <script src="<c:url value='/template/web/assets/js/animated.headline.js' />"></script>
    <script src="<c:url value='/template/web/assets/js/jquery.magnific-popup.js' />"></script>

    <!-- Scrollup, nice-select, sticky -->
    <script src="<c:url value='/template/web/assets/js/jquery.scrollUp.min.js' />"></script>
    <script src="<c:url value='/template/web/assets/js/jquery.nice-select.min.js' />"></script>
    <script src="<c:url value='/template/web/assets/js/jquery.sticky.js' />"></script>
    
    <!-- contact js -->
    <script src="<c:url value='/template/web/assets/js/contact.js' />"></script>
    <script src="<c:url value='/template/web/assets/js/jquery.form.js' />"></script>
    <script src="<c:url value='/template/web/assets/js/jquery.validate.min.js' />"></script>
    <script src="<c:url value='/template/web/assets/js/mail-script.js' />"></script>
    <script src="<c:url value='/template/web/assets/js/jquery.ajaxchimp.min.js' />"></script>
    
    <!-- Jquery Plugins, main Jquery -->	
    <script src="<c:url value='/template/web/assets/js/plugins.js' />"></script>
    <script src="<c:url value='/template/web/assets/js/main.js' />"></script>


</body>

</html>