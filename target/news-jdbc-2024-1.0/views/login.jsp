<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html class="no-js" lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Đăng nhập</title>
</head>
<body>
	<div class="container">



		<div class="card card-login mx-auto mt-5">
			<div class="card-header">Login</div>
			<div class="card-body">

				<c:if test="${not empty message}">
					<div class="alert alert-${alert}" role="alert">${message}</div>
				</c:if>

				
				<form action="<c:url value='/dang-nhap' />" id="formLogin"
					method="POST">
					<div class="form-group">
						<div class="form-label-group">
							<input type="text" id="inputEmail" class="form-control"
								placeholder="Username" required="required" autofocus="autofocus"
								name="userName"> <label for="inputEmail">Username</label>
						</div>
					</div>
					<div class="form-group">
						<div class="form-label-group">
							<input type="password" id="inputPassword" class="form-control"
								placeholder="Password" required="required" name="password">
							<label for="inputPassword">Password</label>
						</div>
					</div>
					<div class="form-group">
						<div class="checkbox">
							<label> <input type="checkbox" value="remember-me">
								Remember Password
							</label>
						</div>
					</div>

					<input type="hidden" value="login" name="action" />
					<button class="btn btn-primary btn-block" type="submit">Login</button>

				</form>
				<div class="text-center">
					<a class="d-block small mt-3" href="register.html">Register an
						Account</a> <a class="d-block small" href="forgot-password.html">Forgot
						Password?</a>
				</div>
			</div>
		</div>
	</div>

</body>
</html>