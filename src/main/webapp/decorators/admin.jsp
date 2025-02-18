<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />

<!-- Title -->
<title><dec:title default="SB Admin - Dashboard" /></title>


<!-- Custom fonts for this template-->
<link
	href="<c:url value='/template/admin/vendor/fontawesome-free/css/all.min.css' /> "
	rel="stylesheet" type="text/css">

<!-- Custom fonts for this template-->
<link
	href="<c:url value='/template/admin/vendor/fontawesome-free/css/all.min.css'/>"
	rel="stylesheet" type="text/css" />

<!-- Page level plugin CSS-->
<link
	href="<c:url value='/template/admin/vendor/datatables/dataTables.bootstrap4.css'/>"
	rel="stylesheet" />

<!-- Custom styles for this template-->
<link href="<c:url value='/template/admin/css/sb-admin.css'/>"
	rel="stylesheet" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
<!-- Jquery-->
<script
	src="<c:url value='/template/admin/vendor/jquery/jquery-3.6.4.min.js'/>"></script>
<script
	src="<c:url value='/template/admin/vendor/jquery/jquery.twbsPagination.min.js'/>"></script>


<%-- <script
	src="<c:url value='/ckeditor/ckeditor.js'/>"></script> --%>
<script src="https://cdn.ckeditor.com/4.22.1/standard/ckeditor.js"></script>



</head>
<body id="page-top">

	<!-- Header -->
	<%@include file="/common/admin/header.jsp"%>

	<!-- Menu & Content -->
	<!-- wrapper -->
	<div id="wrapper">
		<%@include file="/common/admin/menu.jsp"%>

		<!-- content-wrapper -->
		<div id="content-wrapper">
			<!-- container-fluid -->
			<div class="container-fluid">
				<dec:body />
				<!-- Footer -->
				<%@include file="/common/admin/footer.jsp"%>
				<!-- /. container-fluid -->
			</div>
			<!-- /. content-wrapper -->
		</div>
		<!-- /. wrapper -->
	</div>

	<!-- Scroll to Top Button-->
	<!-- Logout Modal-->
	<%@include file="/common/admin/modal.jsp"%>




	<%-- <!-- Bootstrap core JavaScript-->
	
	<script src="<c:url value='/template/admin/vendor/jquery/jquery.min.js'/>"></script> --%>
	<script
		src="<c:url value='/template/admin/vendor/bootstrap/js/bootstrap.bundle.min.js'/>"></script>

	<!-- Core plugin JavaScript-->
	<script
		src="<c:url value='/template/admin/vendor/jquery-easing/jquery.easing.min.js' />"></script>

	<!-- Page level plugin JavaScript-->
	<%-- <script src="<c:url value='/template/admin/vendor/chart/Chart.min.js' />"></script> --%>
	<script
		src="<c:url value='/template/admin/vendor/datatables/jquery.dataTables.js' />"></script>
	<script
		src="<c:url value='/template/admin//vendor/datatables/dataTables.bootstrap4.js' />"></script>

	<!-- Custom scripts for all pages-->
	<script src="<c:url value='/template/admin/js/sb-admin.min.js' />"></script>

	<!-- Demo scripts for this page-->
	<script
		src="<c:url value='/template/admin/js/demo/datatables-demo.js' />"></script>
	<%-- <script src="<c:url value='/template/admin/js/demo/chart-area-demo.js' />"></script> --%>
</body>
</html>