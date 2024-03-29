<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>aranoz</title>
<link rel="icon" href="./img/favicon.png">
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="/GestionCmd/css/bootstrap.min.css">
<!-- animate CSS -->
<link rel="stylesheet" href="/GestionCmd/css/animate.css">
<!-- owl carousel CSS -->
<link rel="stylesheet" href="/GestionCmd/css/owl.carousel.min.css">
<!-- font awesome CSS -->
<link rel="stylesheet" href="/GestionCmd/css/all.css">
<!-- flaticon CSS -->
<link rel="stylesheet" href="/GestionCmd/css/flaticon.css">
<link rel="stylesheet" href="/GestionCmd/css/themify-icons.css">
<!-- font awesome CSS -->
<link rel="stylesheet" href="/GestionCmd/css/magnific-popup.css">
<!-- swiper CSS -->
<link rel="stylesheet" href="/GestionCmd/css/slick.css">
<!-- style CSS -->
<link rel="stylesheet" href="/GestionCmd/css/style.css">

<style>
* {
	padding: 0;
	margin: 0;
	box-sizing: border-box;
}

body {
	/* max-width: 1440px; */
	
}

img {
	width: 60%;
	height: 60%;
	display: block;
	margin-left: auto;
	margin-right: auto margin-top: 30%;
	/* object-fit: cover; */
}

.container {
	/* width: 50%;
      height: 40%; */
	/*  display: grid;
  grid-template-columns: repeat(3, 1fr);    */
	
}

.single_feature_post_text {
	width: 70%;
	/*   display: grid;
  grid-template-columns: 1fr 1fr 1fr; 
   */
}

.Footerimage {
	margin-right: 40px;
	width: 80%;
}

.pagination {
	display: flex;
	justify-content: center;
	align-items: center;
	margin-top: 20px;
}

.pagination a {
	color: #333;
	text-decoration: none;
	padding: 8px 12px;
	margin: 0 5px;
	border-radius: 4px;
	transition: background-color 0.3s;
	background-color: #fff;
	border: 1px solid #ddd;
}

.pagination a.current-page {
	background-color: #333;
	color: #fff;
}

.pagination a:hover {
	background-color: #ddd;
}
</style>
</head>
</head>
<body>
	<!--::header part start::-->
	<header class="main_menu home_menu">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-12">
					<nav class="navbar navbar-expand-lg navbar-light">
						<a class="navbar-brand" href="index.html"> <img
							src="img/logo.png" alt="logo">
						</a>
						<button class="navbar-toggler" type="button"
							data-toggle="collapse" data-target="#navbarSupportedContent"
							aria-controls="navbarSupportedContent" aria-expanded="false"
							aria-label="Toggle navigation">
							<span class="menu_icon"><i class="fas fa-bars"></i></span>
						</button>

						<div class="collapse navbar-collapse main-menu-item"
							id="navbarSupportedContent">
							<ul class="navbar-nav">
								<li class="nav-item"><a class="nav-link" href="index.html">Home</a>
								</li>
								<li class="nav-item dropdown"><a
									class="nav-link dropdown-toggle" href="blog.html"
									id="navbarDropdown_1" role="button" data-toggle="dropdown"
									aria-haspopup="true" aria-expanded="false"> Shop </a>
									<div class="dropdown-menu" aria-labelledby="navbarDropdown_1">
										<a class="dropdown-item" href="category.html"> shop
											category</a> <a class="dropdown-item" href="single-product.html">product
											details</a>

									</div></li>
								<li class="nav-item dropdown"><a
									class="nav-link dropdown-toggle" href="blog.html"
									id="navbarDropdown_3" role="button" data-toggle="dropdown"
									aria-haspopup="true" aria-expanded="false"> pages </a>
									<div class="dropdown-menu" aria-labelledby="navbarDropdown_2">
										<a class="dropdown-item" href="/GestionCmd/do/login"> login</a> <a
											class="dropdown-item" href="tracking.html">tracking</a> <a
											class="dropdown-item" href="checkout.html">product
											checkout</a> <a class="dropdown-item" href="cart.html">shopping
											cart</a> <a class="dropdown-item" href="confirmation.html">confirmation</a>
										<a class="dropdown-item" href="elements.html">elements</a>
									</div></li>
								<li class="nav-item dropdown"><a
									class="nav-link dropdown-toggle" href="blog.html"
									id="navbarDropdown_2" role="button" data-toggle="dropdown"
									aria-haspopup="true" aria-expanded="false"> blog </a>
									<div class="dropdown-menu" aria-labelledby="navbarDropdown_2">
										<a class="dropdown-item" href="blog.html"> blog</a> <a
											class="dropdown-item" href="single-blog.html">Single blog</a>
									</div></li>

								<li class="nav-item"><a class="nav-link"
									href="contact.html">Contact</a></li>

								<li class="nav-item"><a class="nav-link"
									href="/GestionCmd/pages/login.jsp">Login</a></li>
							</ul>
						</div>
						<div class="hearer_icon d-flex">
							<a id="search_1" href="javascript:void(0)"><i
								class="ti-search"></i></a> <a href=""><i class="ti-heart"></i></a>
							<div class="dropdown cart">
								<a class="dropdowtgle" href="#" id="navbarDropdown3"
									role="button" data-toggle="dropdown" aria-haspopup="true"
									aria-expanded="false"> <i class="fas fa-cart-plus"></i>
								</a>
								<!-- <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <div class="single_product">
    
                                    </div>
                                </div> -->

							</div>
						</div>
					</nav>
				</div>
			</div>
		</div>
		<!-- <div class="search_input" id="search_input_box">
			<div class="container ">
				<form class="d-flex justify-content-between search-inner">
					<input type="text" class="form-control" id="search_input"
						placeholder="Search Here">
					<button type="submit" class="btn"></button>
					<span class="ti-close" id="close_search" title="Close Search"></span>
				</form>
			</div>
		</div> -->
	</header>
	<!-- Header part end-->

	<!-- banner part start-->
	<section class="banner_part">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-12">
					<div class="banner_slider owl-carousel">

						<%-- <section class="slider">
    <div class="slides">
        <c:set var="images" value="${produits}" />
								<c:forEach var="i" begin="0" end="${fn:length(images) - 1}"
									varStatus="status">
									<c:set var="randomIndex"
										value="${fn:random() * (fn:length(images) - status.index)}" />
									<c:set var="image" value="${images[randomIndex]}" />
									<div class="slide">
										<img src="${image}" alt="Image ${status.index + 1}">
									</div>
									<c:set var="images" value="${fn:remove(images, randomIndex)}" />
								</c:forEach>
							</div>
</section>
	
 --%>
						<%-- 	<div class="single_banner_slider">
							<div class="row">
								<div class="col-lg-5 col-md-8">
									<div class="banner_text">
										<div class="banner_text_iner">
											<h1>Wood & Cloth Sofa</h1>
											<p>Incididunt ut labore et dolore magna aliqua quis ipsum
												suspendisse ultrices gravida. Risus commodo viverra</p>
											<a href="#" class="btn_2">buy now</a>
										</div>
									</div>
								</div>
								<div class="banner_img d-none d-lg-block">
									<c:forEach var="produit" items="${requestScope.produits}">
										<img src="${produit.thumbnail}" alt="">
									</c:forEach>
								</div>
							</div>
						</div>
						 --%>


						<!-- 	My slider
						<div class="single_banner_slider">
							<div class="row">
								<div class="col-lg-5 col-md-8">
									<div class="banner_text">
										<div class="banner_text_iner">
											<h1>Cloth & Wood Sofa</h1>
											<p>Incididunt ut labore et dolore magna aliqua quis ipsum
												suspendisse ultrices gravida. Risus commodo viverra</p>
											<a href="#" class="btn_2">buy now</a>
										</div>
									</div>
								</div>
								<div class="banner_img d-none d-lg-block">
									<img src="img/banner_img.png" alt="">
								</div>
							</div>
						</div> -->
						<!-- 		<div class="single_banner_slider">
							<div class="row">
								<div class="col-lg-5 col-md-8">
									<div class="banner_text">
										<div class="banner_text_iner">
											<h1>Wood & Cloth Sofa</h1>
											<p>Incididunt ut labore et dolore magna aliqua quis ipsum
												suspendisse ultrices gravida. Risus commodo viverra</p>
											<a href="#" class="btn_2">buy now</a>
										</div>
									</div>
								</div>
								<div class="banner_img d-none d-lg-block">
									<img src="img/banner_img.png" alt="">
								</div>
							</div>
						</div> -->
						<!-- 	<div class="single_banner_slider">
							<div class="row">
								<div class="col-lg-5 col-md-8">
									<div class="banner_text">
										<div class="banner_text_iner">
											<h1>Cloth $ Wood Sofa</h1>
											<p>Incididunt ut labore et dolore magna aliqua quis ipsum
												suspendisse ultrices gravida. Risus commodo viverra</p>
											<a href="#" class="btn_2">buy now</a>
										</div>
									</div>
								</div>
								<div class="banner_img d-none d-lg-block">
									<img src="img/banner_img.png" alt="">
								</div>
							</div>
						</div> -->
					</div>
					<div class="slider-counter"></div>
				</div>
			</div>
		</div>
	</section>
	<!-- banner part start-->

	<!-- feature_part start-->
	<section class="feature_part padding_top">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-8">
					<div class="section_tittle text-center">
						<h2>Featured Products</h2>
					</div>
				</div>
			</div>
			<div class="row align-items-center justify-content-between">
				<c:forEach var="produit" items="${requestScope.paginatedProducts}">
					<div class="col-6">
						<div class="single_feature_post_text">
							<p>Premium Quality</p>
							<h3>${produit.title}</h3>
							<a href="#" class="feature_btn" href= "">EXPLORE NOW <i
								class="fas fa-play"></i></a> <img src="${produit.image1}" alt="">
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</section>
	<%
	int totalPages = (int) request.getAttribute("totalPages");
	int currentPage = (int) request.getAttribute("currentPage");
	%>

	<div class="pagination">
		<%
		if (totalPages > 1) {
		%>
		<%-- Lien vers la première page --%>
		<%
		if (currentPage > 1) {
		%>
		<a href="?pageNumber=1"><<</a>
		<%
		}
		%>

		<%-- Lien vers la page précédente --%>
		<%
		if (currentPage > 1) {
		%>
		<a href="?pageNumber=<%=currentPage - 1%>"><</a>
		<%
		}
		%>

		<%-- Affichage des numéros de page --%>
		<%
		for (int pageNumber = 1; pageNumber <= totalPages; pageNumber++) {
		%>
		<%
		if (pageNumber == currentPage) {
		%>
		<a href="?pageNumber=<%=pageNumber%>" class="current-page"><%=pageNumber%></a>
		<%
		} else {
		%>
		<a href="?pageNumber=<%=pageNumber%>"><%=pageNumber%></a>
		<%
		}
		%>
		<%
		}
		%>

		<%-- Lien vers la page suivante --%>
		<%
		if (currentPage < totalPages) {
		%>
		<a href="?pageNumber=<%=currentPage + 1%>">></a>
		<%
		}
		%>

		<%-- Lien vers la dernière page --%>
		<%
		if (currentPage < totalPages) {
		%>
		<a href="?pageNumber=<%=totalPages%>">>></a>
		<%
		}
		%>
		<%
		}
		%>
	</div>
	<!-- upcoming_event part start-->

	<!-- product_list start-->
	<section class="product_list section_padding">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-12">
					<div class="section_tittle text-center">
						<h2>
							awesome <span>shop</span>
						</h2>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="product_list_slider owl-carousel">
						<div class="single_product_list_slider">
							<div class="row align-items-center justify-content-between">
								<div class="col-lg-3 col-sm-4">
									<c:forEach var="produit" items="${requestScope.produits }">
										<div class="single_product_item">
											<img src="${produit.image2}" alt="">
											<div class="single_product_text">
												<h4>${produit.title}</h4>
												<h3>$${produit.price}</h3>
												<a href="/GestionCmd/pages/singleProduct.jsp" class="add_cart">+ add to cart<i
													class="ti-heart"></i>
												</a>
											</div>
										</div>
									</c:forEach>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- product_list part start-->

	<!-- awesome_shop start-->
	<section class="our_offer section_padding">
		<div class="container">
			<div class="row align-items-center justify-content-between">
				<div class="col-lg-6 col-md-6">
					<div class="offer_img">
						<img src="/GestionCmd/img/thumbnail.jpg" alt=""
							class="Footerimage">
					</div>
				</div>
				<div class="col-lg-6 col-md-6">
					<div class="offer_text">
						<h2>Weekly Sale on 60% Off All Products</h2>
						<div class="date_countdown">
							<div id="timer">
								<div id="days" class="date"></div>
								<div id="hours" class="date"></div>
								<div id="minutes" class="date"></div>
								<div id="seconds" class="date"></div>
							</div>
						</div>
						<div class="input-group">
							<input type="text" class="form-control"
								placeholder="enter email address"
								aria-label="Recipient's username"
								aria-describedby="basic-addon2">
							<div class="input-group-append">
								<a href="#" class="input-group-text btn_2" id="basic-addon2">book
									now</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- awesome_shop part start-->

	<!-- product_list part start-->
	<section class="product_list best_seller section_padding">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-12">
					<div class="section_tittle text-center">
						<h2>
							Best Sellers <span>shop</span>
						</h2>
					</div>
				</div>
			</div>
			<div class="row align-items-center justify-content-between">
				<div class="col-lg-12">
					<div class="best_product_slider owl-carousel">
						<c:forEach var="produit" items="${requestScope.produits }">
							<div class="single_product_item">
								<img src="${produit.image1}" alt="">
								<div class="single_product_text">
									<h4>${produit.title}</h4>
									<h3>$${produit.price}</h3>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
		</div>
	</section>
	<!--::footer_part start::-->
	<footer class="footer_part">
		<div class="container">
			<div class="row justify-content-around">
				<div class="col-sm-6 col-lg-2">
					<div class="single_footer_part">
						<h4>Top Products</h4>
						<ul class="list-unstyled">
							<li><a href="">Managed Website</a></li>
							<li><a href="">Manage Reputation</a></li>
							<li><a href="">Power Tools</a></li>
							<li><a href="">Marketing Service</a></li>
						</ul>
					</div>
				</div>
				<div class="col-sm-6 col-lg-2">
					<div class="single_footer_part">
						<h4>Quick Links</h4>
						<ul class="list-unstyled">
							<li><a href="">Jobs</a></li>
							<li><a href="">Brand Assets</a></li>
							<li><a href="">Investor Relations</a></li>
							<li><a href="">Terms of Service</a></li>
						</ul>
					</div>
				</div>
				<div class="col-sm-6 col-lg-2">
					<div class="single_footer_part">
						<h4>Features</h4>
						<ul class="list-unstyled">
							<li><a href="">Jobs</a></li>
							<li><a href="">Brand Assets</a></li>
							<li><a href="">Investor Relations</a></li>
							<li><a href="">Terms of Service</a></li>
						</ul>
					</div>
				</div>
				<div class="col-sm-6 col-lg-2">
					<div class="single_footer_part">
						<h4>Resources</h4>
						<ul class="list-unstyled">
							<li><a href="">Guides</a></li>
							<li><a href="">Research</a></li>
							<li><a href="">Experts</a></li>
							<li><a href="">Agencies</a></li>
						</ul>
					</div>
				</div>
				<div class="col-sm-6 col-lg-4">
					<div class="single_footer_part">
						<h4>Newsletter</h4>
						<p>Heaven fruitful doesn't over lesser in days. Appear
							creeping</p>
						<div id="mc_embed_signup">
							<form target="_blank"
								action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01"
								method="get" class="subscribe_form relative mail_part">
								<input type="email" name="email" id="newsletter-form-email"
									placeholder="Email Address" class="placeholder hide-on-focus"
									onfocus="this.placeholder = ''"
									onblur="this.placeholder = ' Email Address '">
								<button type="submit" name="submit" id="newsletter-submit"
									class="email_icon newsletter-submit button-contactForm">subscribe</button>
								<div class="mt-10 info"></div>
							</form>
						</div>
					</div>
				</div>
			</div>

		</div>
		<div class="copyright_part">
			<div class="container">
				<div class="row">
					<div class="col-lg-8">
						<div class="copyright_text">
							<P>
								<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
								Copyright &copy;
								<script>
									document.write(new Date().getFullYear());
								</script>
								All rights reserved | This template is made with <i
									class="ti-heart" aria-hidden="true"></i> by <a
									href="https://colorlib.com" target="_blank">Colorlib</a>
								<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							</P>
						</div>
					</div>
					<div class="col-lg-4">
						<div class="footer_icon social_icon">
							<ul class="list-unstyled">
								<li><a href="#" class="single_social_icon"><i
										class="fab fa-facebook-f"></i></a></li>
								<li><a href="#" class="single_social_icon"><i
										class="fab fa-twitter"></i></a></li>
								<li><a href="#" class="single_social_icon"><i
										class="fas fa-globe"></i></a></li>
								<li><a href="#" class="single_social_icon"><i
										class="fab fa-behance"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!--::footer_part end::-->

	<!-- jquery plugins here-->
	<script src="/GestionCmd/js/jquery-1.12.1.min.js"></script>
	<!-- popper js -->
	<script src="/GestionCmd/js/popper.min.js"></script>
	<!-- bootstrap js -->
	<script src="/GestionCmd/js/bootstrap.min.js"></script>
	<!-- easing js -->
	<script src="/GestionCmd/js/jquery.magnific-popup.js"></script>
	<!-- swiper js -->
	<script src="/GestionCmd/js/swiper.min.js"></script>
	<!-- swiper js -->
	<script src="/GestionCmd/js/masonry.pkgd.js"></script>
	<!-- particles js -->
	<script src="/GestionCmd/js/owl.carousel.min.js"></script>
	<script src="/GestionCmd/js/jquery.nice-select.min.js"></script>
	<!-- slick js -->
	<script src="/GestionCmd/js/slick.min.js"></script>
	<script src="/GestionCmd/js/jquery.counterup.min.js"></script>
	<script src="/GestionCmd/js/waypoints.min.js"></script>
	<script src="/GestionCmd/js/contact.js"></script>
	<script src="/GestionCmd/js/jquery.ajaxchimp.min.js"></script>
	<script src="/GestionCmd/js/jquery.form.js"></script>
	<script src="/GestionCmd/js/jquery.validate.min.js"></script>
	<script src="/GestionCmd/js/mail-script.js"></script>
	<!-- custom js -->
	<script src="/GestionCmd/js/custom.js"></script>
</body>
</html>