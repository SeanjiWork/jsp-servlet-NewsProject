<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin</title>
</head>
<body>

	<!-- Breadcrumbs-->
	<ol class="breadcrumb">
		<li class="breadcrumb-item"><a href="#">Dashboard</a></li>
		<li class="breadcrumb-item active">Overview</li>
	</ol>
	<!-- /.container-fluid -->

	<!-- Icon Cards-->
	<div class="row">
		<div class="col-xl-3 col-sm-6 mb-3">
			<div class="card text-white bg-primary o-hidden h-100">
				<div class="card-body">
					<div class="card-body-icon">
						<i class="fas fa-fw fa-comments"></i>
					</div>
					<div class="mr-5">26 New Messages!</div>
				</div>
				<a class="card-footer text-white clearfix small z-1" href="#"> <span
					class="float-left">View Details</span> <span class="float-right">
						<i class="fas fa-angle-right"></i>
				</span>
				</a>
			</div>
		</div>
		<div class="col-xl-3 col-sm-6 mb-3">
			<div class="card text-white bg-warning o-hidden h-100">
				<div class="card-body">
					<div class="card-body-icon">
						<i class="fas fa-fw fa-list"></i>
					</div>
					<div class="mr-5">11 New Tasks!</div>
				</div>
				<a class="card-footer text-white clearfix small z-1" href="#"> <span
					class="float-left">View Details</span> <span class="float-right">
						<i class="fas fa-angle-right"></i>
				</span>
				</a>
			</div>
		</div>
		<div class="col-xl-3 col-sm-6 mb-3">
			<div class="card text-white bg-success o-hidden h-100">
				<div class="card-body">
					<div class="card-body-icon">
						<i class="fas fa-fw fa-shopping-cart"></i>
					</div>
					<div class="mr-5">123 New Orders!</div>
				</div>
				<a class="card-footer text-white clearfix small z-1" href="#"> <span
					class="float-left">View Details</span> <span class="float-right">
						<i class="fas fa-angle-right"></i>
				</span>
				</a>
			</div>
		</div>
		<div class="col-xl-3 col-sm-6 mb-3">
			<div class="card text-white bg-danger o-hidden h-100">
				<div class="card-body">
					<div class="card-body-icon">
						<i class="fas fa-fw fa-life-ring"></i>
					</div>
					<div class="mr-5">13 New Tickets!</div>
				</div>
				<a class="card-footer text-white clearfix small z-1" href="#"> <span
					class="float-left">View Details</span> <span class="float-right">
						<i class="fas fa-angle-right"></i>
				</span>
				</a>
			</div>
		</div>
	</div>

	<!-- Area Chart Example-->
	<div class="card mb-3">
		<div class="card-header">
			<i class="fas fa-chart-area"></i> Area Chart Example
		</div>
		<div class="card-body">
			<canvas id="myAreaChart" width="100%" height="30"></canvas>
		</div>
		<div class="card-footer small text-muted">Updated yesterday at
			11:59 PM</div>
	</div>

	<section>
		<div class="container py-5">

			<div class="row">

				<div class="col-md-6 col-lg-5 col-xl-4 mb-4 mb-md-0">

					<h5 class="font-weight-bold mb-3 text-center text-lg-start">Member</h5>

					<div class="card">
						<div class="card-body">

							<ul class="list-unstyled mb-0">
								<li class="p-2 border-bottom bg-body-tertiary"><a href="#!"
									class="d-flex justify-content-between">
										<div class="d-flex flex-row">
											<img
												src="https://mdbcdn.b-cdn.net/img/Photos/Avatars/avatar-8.webp"
												alt="avatar"
												class="rounded-circle d-flex align-self-center me-3 shadow-1-strong"
												width="60">
											<div class="pt-1">
												<p class="fw-bold mb-0">John Doe</p>
												<p class="small text-muted">Hello, Are you there?</p>
											</div>
										</div>
										<div class="pt-1">
											<p class="small text-muted mb-1">Just now</p>
											<span class="badge bg-danger float-end">1</span>
										</div>
								</a></li>
								<li class="p-2 border-bottom"><a href="#!"
									class="d-flex justify-content-between">
										<div class="d-flex flex-row">
											<img
												src="https://mdbcdn.b-cdn.net/img/Photos/Avatars/avatar-1.webp"
												alt="avatar"
												class="rounded-circle d-flex align-self-center me-3 shadow-1-strong"
												width="60">
											<div class="pt-1">
												<p class="fw-bold mb-0">Danny Smith</p>
												<p class="small text-muted">Lorem ipsum dolor sit.</p>
											</div>
										</div>
										<div class="pt-1">
											<p class="small text-muted mb-1">5 mins ago</p>
										</div>
								</a></li>
								<li class="p-2 border-bottom"><a href="#!"
									class="d-flex justify-content-between">
										<div class="d-flex flex-row">
											<img
												src="https://mdbcdn.b-cdn.net/img/Photos/Avatars/avatar-2.webp"
												alt="avatar"
												class="rounded-circle d-flex align-self-center me-3 shadow-1-strong"
												width="60">
											<div class="pt-1">
												<p class="fw-bold mb-0">Alex Steward</p>
												<p class="small text-muted">Lorem ipsum dolor sit.</p>
											</div>
										</div>
										<div class="pt-1">
											<p class="small text-muted mb-1">Yesterday</p>
										</div>
								</a></li>
								<li class="p-2 border-bottom"><a href="#!"
									class="d-flex justify-content-between">
										<div class="d-flex flex-row">
											<img
												src="https://mdbcdn.b-cdn.net/img/Photos/Avatars/avatar-3.webp"
												alt="avatar"
												class="rounded-circle d-flex align-self-center me-3 shadow-1-strong"
												width="60">
											<div class="pt-1">
												<p class="fw-bold mb-0">Ashley Olsen</p>
												<p class="small text-muted">Lorem ipsum dolor sit.</p>
											</div>
										</div>
										<div class="pt-1">
											<p class="small text-muted mb-1">Yesterday</p>
										</div>
								</a></li>
								<li class="p-2 border-bottom"><a href="#!"
									class="d-flex justify-content-between">
										<div class="d-flex flex-row">
											<img
												src="https://mdbcdn.b-cdn.net/img/Photos/Avatars/avatar-4.webp"
												alt="avatar"
												class="rounded-circle d-flex align-self-center me-3 shadow-1-strong"
												width="60">
											<div class="pt-1">
												<p class="fw-bold mb-0">Kate Moss</p>
												<p class="small text-muted">Lorem ipsum dolor sit.</p>
											</div>
										</div>
										<div class="pt-1">
											<p class="small text-muted mb-1">Yesterday</p>
										</div>
								</a></li>
								<li class="p-2 border-bottom"><a href="#!"
									class="d-flex justify-content-between">
										<div class="d-flex flex-row">
											<img
												src="https://mdbcdn.b-cdn.net/img/Photos/Avatars/avatar-5.webp"
												alt="avatar"
												class="rounded-circle d-flex align-self-center me-3 shadow-1-strong"
												width="60">
											<div class="pt-1">
												<p class="fw-bold mb-0">Lara Croft</p>
												<p class="small text-muted">Lorem ipsum dolor sit.</p>
											</div>
										</div>
										<div class="pt-1">
											<p class="small text-muted mb-1">Yesterday</p>
										</div>
								</a></li>
								<li class="p-2"><a href="#!"
									class="d-flex justify-content-between">
										<div class="d-flex flex-row">
											<img
												src="https://mdbcdn.b-cdn.net/img/Photos/Avatars/avatar-6.webp"
												alt="avatar"
												class="rounded-circle d-flex align-self-center me-3 shadow-1-strong"
												width="60">
											<div class="pt-1">
												<p class="fw-bold mb-0">Brad Pitt</p>
												<p class="small text-muted">Lorem ipsum dolor sit.</p>
											</div>
										</div>
										<div class="pt-1">
											<p class="small text-muted mb-1">5 mins ago</p>
											<span class="text-muted float-end"><i
												class="fas fa-check" aria-hidden="true"></i></span>
										</div>
								</a></li>
							</ul>

						</div>
					</div>

				</div>

				<div class="col-md-6 col-lg-7 col-xl-8">

					<ul class="list-unstyled">
						<li class="d-flex justify-content-between mb-4"><img
							src="https://mdbcdn.b-cdn.net/img/Photos/Avatars/avatar-6.webp"
							alt="avatar"
							class="rounded-circle d-flex align-self-start me-3 shadow-1-strong"
							width="60">
							<div class="card">
								<div class="card-header d-flex justify-content-between p-3">
									<p class="fw-bold mb-0">Brad Pitt</p>
									<p class="text-muted small mb-0">
										<i class="far fa-clock"></i> 12 mins ago
									</p>
								</div>
								<div class="card-body">
									<p class="mb-0">Lorem ipsum dolor sit amet, consectetur
										adipiscing elit, sed do eiusmod tempor incididunt ut labore et
										dolore magna aliqua.</p>
								</div>
							</div></li>
						<li class="d-flex justify-content-between mb-4">
							<div class="card w-100">
								<div class="card-header d-flex justify-content-between p-3">
									<p class="fw-bold mb-0">Lara Croft</p>
									<p class="text-muted small mb-0">
										<i class="far fa-clock"></i> 13 mins ago
									</p>
								</div>
								<div class="card-body">
									<p class="mb-0">Sed ut perspiciatis unde omnis iste natus
										error sit voluptatem accusantium doloremque laudantium.</p>
								</div>
							</div> <img
							src="https://mdbcdn.b-cdn.net/img/Photos/Avatars/avatar-5.webp"
							alt="avatar"
							class="rounded-circle d-flex align-self-start ms-3 shadow-1-strong"
							width="60">
						</li>
						<li class="d-flex justify-content-between mb-4"><img
							src="https://mdbcdn.b-cdn.net/img/Photos/Avatars/avatar-6.webp"
							alt="avatar"
							class="rounded-circle d-flex align-self-start me-3 shadow-1-strong"
							width="60">
							<div class="card">
								<div class="card-header d-flex justify-content-between p-3">
									<p class="fw-bold mb-0">Brad Pitt</p>
									<p class="text-muted small mb-0">
										<i class="far fa-clock"></i> 10 mins ago
									</p>
								</div>
								<div class="card-body">
									<p class="mb-0">Lorem ipsum dolor sit amet, consectetur
										adipiscing elit, sed do eiusmod tempor incididunt ut labore et
										dolore magna aliqua.</p>
								</div>
							</div></li>
						<li class="bg-white mb-3">
							<div data-mdb-input-init class="form-outline">
								<textarea class="form-control bg-body-tertiary"
									id="textAreaExample2" rows="4"></textarea>
								<label class="form-label" for="textAreaExample2">Message</label>
							</div>
						</li>
						<button type="button" data-mdb-button-init data-mdb-ripple-init
							class="btn btn-info btn-rounded float-end">Send</button>
					</ul>

				</div>

			</div>

		</div>
	</section>

</body>
</html>