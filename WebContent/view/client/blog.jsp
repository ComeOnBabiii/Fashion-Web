<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<title>Blog</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<c:url value="/static/client/images/icons/favicon.png" var="favicon"/>
	<link rel="icon" type="image/png" href="${favicon }"/>
<!--===============================================================================================-->
	<c:url value="/static/client/vendor/bootstrap/css/bootstrap.min.css" var="boostsrapMin"/>
	<link rel="stylesheet" type="text/css" href="${boostsrapMin }">
<!--===============================================================================================-->
	<c:url value="/static/client/fonts/font-awesome-4.7.0/css/font-awesome.min.css" var="awesome"/>
	<link rel="stylesheet" type="text/css" href="${awesome }">
<!--===============================================================================================-->
	<c:url value="/static/client/fonts/themify/themify-icons.css" var="themify"/>
	<link rel="stylesheet" type="text/css" href="${themify }">
<!--===============================================================================================-->
	<c:url value="/static/client/fonts/Linearicons-Free-v1.0.0/icon-font.min.css" var="iconFont"/>
	<link rel="stylesheet" type="text/css" href="${iconFont }">
<!--===============================================================================================-->
	<c:url value="/static/client/fonts/elegant-font/html-css/style.css" var="styleCss"/>
	<link rel="stylesheet" type="text/css" href="${styleCss }">
<!--===============================================================================================-->
	<c:url value="/static/client/vendor/animate/animate.css" var="animate"/>
	<link rel="stylesheet" type="text/css" href="${animate }">
<!--===============================================================================================-->
	<c:url value="/static/client/vendor/css-hamburgers/hamburgers.min.css" var="hambugers"/>
	<link rel="stylesheet" type="text/css" href="${hambugers }">
<!--===============================================================================================-->
	<c:url value="/static/client/vendor/animsition/css/animsition.min.css" var="animsition"/>
	<link rel="stylesheet" type="text/css" href="${animsition }">
<!--===============================================================================================-->
	<c:url value="/static/client/vendor/select2/select2.min.css" var="select2"/>
	<link rel="stylesheet" type="text/css" href="${select2 }">
<!--===============================================================================================-->
	<c:url value="/static/client/vendor/slick/slick.css" var="slick"/>
	<link rel="stylesheet" type="text/css" href="${slick }">
<!--===============================================================================================-->
	<c:url value="/static/client/css/util.css" var="util"/>
	<link rel="stylesheet" type="text/css" href="${util }">
	<c:url value="/static/client/css/main.css" var="main"/>
	<link rel="stylesheet" type="text/css" href="${main }">
<!--===============================================================================================-->
</head>
<body class="animsition">

	<!-- Header -->
	<jsp:include page="/view/client/include/hearder.jsp"></jsp:include>

	<!-- Title Page -->
	<c:url value="/static/client/images/heading-pages-05.jpg" var="headingpage05"/>
	<section class="bg-title-page p-t-40 p-b-50 flex-col-c-m" style="background-image: url(${headingpage05});">
		<h2 class="l-text2 t-center">
			Blog
		</h2>
	</section>

	<!-- content page -->
	<section class="bgwhite p-t-60">
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-lg-9 p-b-75">
					<div class="p-r-50 p-r-0-lg">
						<!-- item blog -->
						<div class="item-blog p-b-80">
							<a href="blog-detail.html" class="item-blog-img pos-relative dis-block hov-img-zoom">
								<c:url value="/static/client/images/blog-04.jpg" var="blog04"/>
								<img src="${blog04}" alt="IMG-BLOG">

								<span class="item-blog-date dis-block flex-c-m pos1 size17 bg4 s-text1">
									28 Dec, 2018
								</span>
							</a>

							<div class="item-blog-txt p-t-33">
								<h4 class="p-b-11">
									<a href="blog-detail.html" class="m-text24">
										Black Friday Guide: Best Sales & Discount Codes
									</a>
								</h4>

								<div class="s-text8 flex-w flex-m p-b-21">
									<span>
										By Admin
										<span class="m-l-3 m-r-6">|</span>
									</span>

									<span>
										Cooking, Food
										<span class="m-l-3 m-r-6">|</span>
									</span>

									<span>
										8 Comments
									</span>
								</div>

								<p class="p-b-12">
									Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce eget dictum tortor. Donec dictum vitae sapien eu varius
								</p>

								<a href="blog-detail.html" class="s-text20">
									Continue Reading
									<i class="fa fa-long-arrow-right m-l-8" aria-hidden="true"></i>
								</a>
							</div>
						</div>

						<!-- item blog -->
						<div class="item-blog p-b-80">
							<a href="blog-detail.html" class="item-blog-img pos-relative dis-block hov-img-zoom">
								<c:url value="/static/client/images/blog-05.jpg" var="blog05"/>
								<img src="${blog05}" alt="IMG-BLOG">

								<span class="item-blog-date dis-block flex-c-m pos1 size17 bg4 s-text1">
									26 Dec, 2018
								</span>
							</a>

							<div class="item-blog-txt p-t-33">
								<h4 class="p-b-11">
									<a href="blog-detail.html" class="m-text24">
										The White Sneakers Nearly Every Fashion Girls Own
									</a>
								</h4>

								<div class="s-text8 flex-w flex-m p-b-21">
									<span>
										By Admin
										<span class="m-l-3 m-r-6">|</span>
									</span>

									<span>
										Fashion, Life style
										<span class="m-l-3 m-r-6">|</span>
									</span>

									<span>
										8 Comments
									</span>
								</div>

								<p class="p-b-12">
									Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce eget dictum tortor. Donec dictum vitae sapien eu varius
								</p>

								<a href="blog-detail.html" class="s-text20">
									Continue Reading
									<i class="fa fa-long-arrow-right m-l-8" aria-hidden="true"></i>
								</a>
							</div>
						</div>

						<!-- item blog -->
						<div class="item-blog p-b-80">
							<a href="blog-detail.html" class="item-blog-img pos-relative dis-block hov-img-zoom">
								<c:url value="/static/client/images/blog-08.jpg" var="blog08"/>
								<img src="${blog08}" alt="IMG-BLOG">

								<span class="item-blog-date dis-block flex-c-m pos1 size17 bg4 s-text1">
									22 Dec, 2018
								</span>
							</a>

							<div class="item-blog-txt p-t-33">
								<h4 class="p-b-11">
									<a href="blog-detail.html" class="m-text24">
										Black Friday Guide: Best Sales & Discount Codes
									</a>
								</h4>

								<div class="s-text8 flex-w flex-m p-b-21">
									<span>
										By Admin
										<span class="m-l-3 m-r-6">|</span>
									</span>

									<span>
										Cooking, Food
										<span class="m-l-3 m-r-6">|</span>
									</span>

									<span>
										8 Comments
									</span>
								</div>

								<p class="p-b-12">
									Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce eget dictum tortor. Donec dictum vitae sapien eu varius
								</p>

								<a href="blog-detail.html" class="s-text20">
									Continue Reading
									<i class="fa fa-long-arrow-right m-l-8" aria-hidden="true"></i>
								</a>
							</div>
						</div>

						<!-- item blog -->
						<div class="item-blog p-b-80">
							<a href="blog-detail.html" class="item-blog-img pos-relative dis-block hov-img-zoom">
								<c:url value="/static/client/images/blog-02.jpg" var="blog02"/>
								<img src="${blog02}" alt="IMG-BLOG">

								<span class="item-blog-date dis-block flex-c-m pos1 size17 bg4 s-text1">
									18 Dec, 2018
								</span>
							</a>

							<div class="item-blog-txt p-t-33">
								<h4 class="p-b-11">
									<a href="blog-detail.html" class="m-text24">
										Black Friday Guide: Best Sales & Discount Codes
									</a>
								</h4>

								<div class="s-text8 flex-w flex-m p-b-21">
									<span>
										By Admin
										<span class="m-l-3 m-r-6">|</span>
									</span>

									<span>
										Cooking, Food
										<span class="m-l-3 m-r-6">|</span>
									</span>

									<span>
										8 Comments
									</span>
								</div>

								<p class="p-b-12">
									Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce eget dictum tortor. Donec dictum vitae sapien eu varius
								</p>

								<a href="blog-detail.html" class="s-text20">
									Continue Reading
									<i class="fa fa-long-arrow-right m-l-8" aria-hidden="true"></i>
								</a>
							</div>
						</div>

						<!-- item blog -->
						<div class="item-blog p-b-80">
							<a href="blog-detail.html" class="item-blog-img pos-relative dis-block hov-img-zoom">
								<c:url value="/static/client/images/blog-03.jpg" var="blog03"/>
								<img src="${blog03}" alt="IMG-BLOG">

								<span class="item-blog-date dis-block flex-c-m pos1 size17 bg4 s-text1">
									16 Dec, 2018
								</span>
							</a>

							<div class="item-blog-txt p-t-33">
								<h4 class="p-b-11">
									<a href="blog-detail.html" class="m-text24">
										Black Friday Guide: Best Sales & Discount Codes
									</a>
								</h4>

								<div class="s-text8 flex-w flex-m p-b-21">
									<span>
										By Admin
										<span class="m-l-3 m-r-6">|</span>
									</span>

									<span>
										Cooking, Food
										<span class="m-l-3 m-r-6">|</span>
									</span>

									<span>
										8 Comments
									</span>
								</div>

								<p class="p-b-12">
									Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce eget dictum tortor. Donec dictum vitae sapien eu varius
								</p>

								<a href="blog-detail.html" class="s-text20">
									Continue Reading
									<i class="fa fa-long-arrow-right m-l-8" aria-hidden="true"></i>
								</a>
							</div>
						</div>
					</div>

					<!-- Pagination -->
					<div class="pagination flex-m flex-w p-r-50">
						<a href="#" class="item-pagination flex-c-m trans-0-4 active-pagination">1</a>
						<a href="#" class="item-pagination flex-c-m trans-0-4">2</a>
					</div>
				</div>

				<div class="col-md-4 col-lg-3 p-b-75">
					<div class="rightbar">
						<!-- Search -->
						<div class="pos-relative bo11 of-hidden">
							<input class="s-text7 size16 p-l-23 p-r-50" type="text" name="search-product" placeholder="Search">

							<button class="flex-c-m size5 ab-r-m color1 color0-hov trans-0-4">
								<i class="fs-13 fa fa-search" aria-hidden="true"></i>
							</button>
						</div>

						<!-- Categories -->
						<h4 class="m-text23 p-t-56 p-b-34">
							Categories
						</h4>

						<ul>
							<li class="p-t-6 p-b-8 bo6">
								<a href="#" class="s-text13 p-t-5 p-b-5">
									Fashion
								</a>
							</li>

							<li class="p-t-6 p-b-8 bo7">
								<a href="#" class="s-text13 p-t-5 p-b-5">
									Beauty
								</a>
							</li>

							<li class="p-t-6 p-b-8 bo7">
								<a href="#" class="s-text13 p-t-5 p-b-5">
									Street Style
								</a>
							</li>

							<li class="p-t-6 p-b-8 bo7">
								<a href="#" class="s-text13 p-t-5 p-b-5">
									Life Style
								</a>
							</li>

							<li class="p-t-6 p-b-8 bo7">
								<a href="#" class="s-text13 p-t-5 p-b-5">
									DIY & Crafts
								</a>
							</li>
						</ul>

						<!-- Featured Products -->
						<h4 class="m-text23 p-t-65 p-b-34">
							Featured Products
						</h4>

						<ul class="bgwhite">
							<li class="flex-w p-b-20">
								<a href="<c:url value="/chi-tiet-san-pham"/>" class="dis-block wrap-pic-w w-size22 m-r-20 trans-0-4 hov4">
									<c:url value="/static/client/images/item-16.jpg" var="item16"/>
									<img src="${item16}" alt="IMG-BLOG">
								</a>

								<div class="w-size23 p-t-5">
									<a href="<c:url value="/chi-tiet-san-pham"/>" class="s-text20">
										White Shirt With Pleat Detail Back
									</a>

									<span class="dis-block s-text17 p-t-6">
										$19.00
									</span>
								</div>
							</li>

							<li class="flex-w p-b-20">
								<a href="<c:url value="/chi-tiet-san-pham"/>" class="dis-block wrap-pic-w w-size22 m-r-20 trans-0-4 hov4">
									<c:url value="/static/client/images/item-17.jpg" var="item17"/>
									<img src="${item17}" alt="IMG-BLOG">
								</a>

								<div class="w-size23 p-t-5">
									<a href="<c:url value="/chi-tiet-san-pham"/>" class="s-text20">
										Converse All Star Hi Black Canvas
									</a>

									<span class="dis-block s-text17 p-t-6">
										$39.00
									</span>
								</div>
							</li>

							<li class="flex-w p-b-20">
								<a href="<c:url value="/chi-tiet-san-pham"/>" class="dis-block wrap-pic-w w-size22 m-r-20 trans-0-4 hov4">
									<c:url value="/static/client/images/item-08.jpg" var="item08"/>
									<img src="${item08}" alt="IMG-BLOG">
								</a>

								<div class="w-size23 p-t-5">
									<a href="<c:url value="/chi-tiet-san-pham"/>" class="s-text20">
										Nixon Porter Leather Watch In Tan
									</a>

									<span class="dis-block s-text17 p-t-6">
										$17.00
									</span>
								</div>
							</li>

							<li class="flex-w p-b-20">
								<a href="<c:url value="/chi-tiet-san-pham"/>" class="dis-block wrap-pic-w w-size22 m-r-20 trans-0-4 hov4">
									<c:url value="/static/client/images/item-03.jpg" var="item03"/>
									<img src="${item03}" alt="IMG-BLOG">
								</a>

								<div class="w-size23 p-t-5">
									<a href="<c:url value="/chi-tiet-san-pham"/>" class="s-text20">
										Denim jacket blue
									</a>

									<span class="dis-block s-text17 p-t-6">
										$39.00
									</span>
								</div>
							</li>

							<li class="flex-w p-b-20">
								<a href="<c:url value="/chi-tiet-san-pham"/>" class="dis-block wrap-pic-w w-size22 m-r-20 trans-0-4 hov4">
									<c:url value="/static/client/images/item-05.jpg" var="item05"/>
									<img src="${item05}" alt="IMG-BLOG">
								</a>

								<div class="w-size23 p-t-5">
									<a href="<c:url value="/chi-tiet-san-pham"/>" class="s-text20">
										Nixon Porter Leather Watch In Tan
									</a>

									<span class="dis-block s-text17 p-t-6">
										$17.00
									</span>
								</div>
							</li>
						</ul>

						<!-- Archive -->
						<h4 class="m-text23 p-t-50 p-b-16">
							Archive
						</h4>

						<ul>
							<li class="flex-sb-m">
								<a href="#" class="s-text13 p-t-5 p-b-5">
									July 2018
								</a>

								<span class="s-text13">
									(9)
								</span>
							</li>

							<li class="flex-sb-m">
								<a href="#" class="s-text13 p-t-5 p-b-5">
									June 2018
								</a>

								<span class="s-text13">
									(39)
								</span>
							</li>

							<li class="flex-sb-m">
								<a href="#" class="s-text13 p-t-5 p-b-5">
									May 2018
								</a>

								<span class="s-text13">
									(29)
								</span>
							</li>

							<li class="flex-sb-m">
								<a href="#" class="s-text13 p-t-5 p-b-5">
									April  2018
								</a>

								<span class="s-text13">
									(35)
								</span>
							</li>

							<li class="flex-sb-m">
								<a href="#" class="s-text13 p-t-5 p-b-5">
									March 2018
								</a>

								<span class="s-text13">
									(22)
								</span>
							</li>

							<li class="flex-sb-m">
								<a href="#" class="s-text13 p-t-5 p-b-5">
									February 2018
								</a>

								<span class="s-text13">
									(32)
								</span>
							</li>

							<li class="flex-sb-m">
								<a href="#" class="s-text13 p-t-5 p-b-5">
									January 2018
								</a>

								<span class="s-text13">
									(21)
								</span>
							</li>

							<li class="flex-sb-m">
								<a href="#" class="s-text13 p-t-5 p-b-5">
									December 2017
								</a>

								<span class="s-text13">
									(26)
								</span>
							</li>
						</ul>

						<!-- Tags -->
						<h4 class="m-text23 p-t-50 p-b-25">
							Tags
						</h4>

						<div class="wrap-tags flex-w">
							<a href="#" class="tag-item">
								Fashion
							</a>

							<a href="#" class="tag-item">
								Lifestyle
							</a>

							<a href="#" class="tag-item">
								Denim
							</a>

							<a href="#" class="tag-item">
								Streetstyle
							</a>

							<a href="#" class="tag-item">
								Crafts
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>


	<!-- Footer -->
	<jsp:include page="/view/client/include/footer.jsp"></jsp:include>

	<!-- Back to top -->
	<div class="btn-back-to-top bg0-hov" id="myBtn">
		<span class="symbol-btn-back-to-top">
			<i class="fa fa-angle-double-up" aria-hidden="true"></i>
		</span>
	</div>

	<!-- Container Selection -->
	<div id="dropDownSelect1"></div>
	<div id="dropDownSelect2"></div>



<!--===============================================================================================-->
	<c:url value="/static/client/vendor/jquery/jquery-3.2.1.min.js" var="jqueryMin"/>
	<script type="text/javascript" src="${jqueryMin }"></script>
<!--===============================================================================================-->
	<c:url value="/static/client/vendor/animsition/js/animsition.min.js" var="animsitionMin"/>
	<script type="text/javascript" src="${animsitionMin }"></script>
<!--===============================================================================================-->
	<c:url value="/static/client/vendor/bootstrap/js/popper.js" var="popper"/>
	<script type="text/javascript" src="${popper }"></script>
	<c:url value="/static/client/vendor/bootstrap/js/bootstrap.min.js" var="bootstrapMin"/>
	<script type="text/javascript" src="${bootstrapMin }"></script>
<!--===============================================================================================-->
	<c:url value="/static/client/vendor/select2/select2.min.js" var="select2"/>
	<script type="text/javascript" src="${select2 }"></script>
	<script type="text/javascript">
		$(".selection-1").select2({
			minimumResultsForSearch: 20,
			dropdownParent: $('#dropDownSelect1')
		});

		$(".selection-2").select2({
			minimumResultsForSearch: 20,
			dropdownParent: $('#dropDownSelect2')
		});
	</script>
<!--===============================================================================================-->
	<c:url value="/static/client/js/main.js" var="mainjs"/>
	<script src="${mainjs }"></script>

</body>
</html>
