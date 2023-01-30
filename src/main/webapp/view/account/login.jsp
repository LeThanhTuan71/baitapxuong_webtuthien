<%@ page pageEncoding="utf-8" %>
	<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
		<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet"
			id="bootstrap-css">
		<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
		<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<!------ Include the above in your HEAD tag ---------->


		<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
		<link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">

		<!DOCTYPE html>
		<html>

		<head>
			<meta charset="utf-8">
			
		</head>

		<body class="login-page sidebar-collapse">

			<!-- End Navbar -->
			<div class="page-header clear-filter" filter-color="orange">

				<div class="content">
					<div class="container">
						<div class="col-md-4 ml-auto mr-auto">
							<div class="card card-login card-plain">			
								<form class="form" action="/account/login" method="post">
									<h1>LOGIN</h1>				
									<div class="card-body">
										<div class="input-group no-border input-lg">
											<div class="input-group-prepend">
												<span class="input-group-text">
													<i class="now-ui-icons users_circle-08"></i>
												</span>
											</div>
											<input type="text" class="form-control" placeholder="Username..." name="username">
										</div>
										<br>
										<div class="input-group no-border input-lg">
											<div class="input-group-prepend">
												<span class="input-group-text">
													<i class="now-ui-icons text_caps-small"></i>
												</span>
											</div>
											<input type="password" placeholder="Password..." class="form-control" name="password" />
										</div>
									</div>
									<p><b><i>${message}${param.error}</i></b></p>
									<div class="card-footer text-center">
										<button class="btn btn-primary btn-round btn-lg btn-block">Đăng nhập</button>
										<div class="pull-center">
											<h6>
												<a href="#pablo" class="link">Tạo tài khoản</a>
											</h6>
										</div>
										<div class="pull-center">
											<h6>
												<a href="/quenmk" class="link">Quên Mật Khẩu ?</a>
											</h6>
										</div>

								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
			<footer class="footer-08" style="background-color: black;">
		<div class="container-fluid px-lg-12">
			<div class="row">
				<div class="col-md-9 py-5">
					<div class="row">
						<div class="col-md-4 mb-md-0 mb-4">
							<h2 class="footer-heading" style="color: white">About us</h2>
							<p style="color: white">VỀ CHÚNG TÔI
								Quỹ Từ thiện Bông Sen được thành lập theo Quyết định số: 24/QĐ-BNV ngày 5 tháng 1 năm 2018. Quỹ Bông Sen là phiên bản mở rộng của Quỹ Từ thiện Tình Thương thành phố Hồ Chí Minh. Quỹ có phạm vi hoạt động toàn quốc..</p>
							<iframe
								src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2FN%25C3%25B4ng-S%25E1%25BA%25A3n-Vi%25E1%25BB%2587t-104081945730748&tabs=timeline&width=340&height=128&small_header=true&adapt_container_width=true&hide_cover=true&show_facepile=true&appId=479139456796360"
								width="340" height="128" style="border: none; overflow: hidden"
								scrolling="no" frameborder="0" allowfullscreen="true"
								allow="autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share"></iframe>
						</div>
						<div class="col-md-8">
							<div class="row justify-content-center">
								<div class="col-md-12 col-lg-9">
									<div class="row">
										<div class="col-md-4 mb-md-0 mb-4">
											<h2 class="footer-heading" style="color: white">HƯỚNG DẪN 
												</h2>
											<ul class="list-unstyled">
												<li><a href="#" class="py-1 d-block">Hướng dẫn đóng góp</a></li>
												<li><a href="#" class="py-1 d-block">Giới thiệu</a></li>
												<li><a href="#" class="py-1 d-block">Tổ chức
														Policy</a></li>
												<li><a href="#" class="py-1 d-block">	Lịch sử</a></li>
												<li><a href="#" class="py-1 d-block">Quy chế tác viên
														Policy</a></li>
											</ul>
										</div>
										<div class="col-md-4 mb-md-0 mb-4">
											<h2 class="footer-heading" style="color: white">CHƯƠNG TRÌNH</h2>
											<ul class="list-unstyled">
												<li><a href="#" class="py-1 d-block">Trợ giúp y tế
												</a></li>
												<li><a href="#" class="py-1 d-block">Trợ giúp suất ăn giá rẻ</a></li>
												<li><a href="#" class="py-1 d-block">Dự án xây dựng</a></li>
												<li><a href="#" class="py-1 d-block">Cứu trợ khẩn cấp</a></li>
											</ul>
										</div>
										<div class="col-md-4 mb-md-0 mb-4">
											<h2 class="footer-heading" style="color: white">QUỸ TỪ THIỆN BÔNG SEN</h2>
											<ul class="list-unstyled">
												<li><a href="#" class="py-1 d-block"> Tầng 5, số 7 – 9 – 11 Mai Thị Lựu, P. Đa Kao, Quận 1, TP.Hồ Chí Minh.</a></li>
												<li><a href="#" class="py-1 d-block"> Hotline : (84-028) 39107612 – Ext.227</a></li>
												<li><a href="#" class="py-1 d-block"> Fax : (84-028) 3910 7614</a></li>
												<li><a href="#" class="py-1 d-block">Email: contact@quybongsen.org</a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row mt-md-5">
						<div class="col-md-12">
							<p class="copyright">
								<br> <br> <br> <br> Copyright &copy;
								<script>
									document.write(new Date().getFullYear());
								</script>
								All rights reserved | This template is made with <i
									class="ion-ios-heart" aria-hidden="true"></i> by <a
									href="" target="_blank">
								 Lê Thanh Tuấn</a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-3 py-md-5 py-4 aside-stretch-right pl-lg-5">
					<h2 class="footer-heading footer-heading-white"
						style="color: white">Contact us</h2>
					<form action="#" class="contact-form">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="Your Name">
						</div>
						<div class="form-group">
							<input type="text" class="form-control" placeholder="Your Email">
						</div>
						<div class="form-group">
							<input type="text" class="form-control" placeholder="Subject">
						</div>
						<div class="form-group">
							<textarea name="" id="" cols="30" rows="3" class="form-control"
								placeholder="Message"></textarea>
						</div>
						<div class="form-group">
							<button type="submit" class="form-control submit px-3">
								<i class="far fa-paper-plane"></i>&ensp;Send
							</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</footer>
			</div>
			<!--   Core JS Files   -->
			<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>


		</body>

		</html>