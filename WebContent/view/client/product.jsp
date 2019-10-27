<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<title>Product</title>
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
	<c:url value="/static/client/vendor/noui/nouislider.min.css" var="nouislider"/>
	<link rel="stylesheet" type="text/css" href="${nouislider }">
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
	<c:url value="/static/client/images/heading-pages-02.jpg" var="headingPage02"/>
	<section class="bg-title-page p-t-50 p-b-40 flex-col-c-m" style="background-image: url(${headingPage02});">
		<h2 class="l-text2 t-center">
			Women
		</h2>
		<p class="m-text13 t-center">
			New Arrivals Women Collection 2018
		</p>
	</section>


	<!-- Content page -->
	<section class="bgwhite p-t-55 p-b-65">
		<div class="container">
			<div class="row">
				<div class="col-sm-6 col-md-4 col-lg-3 p-b-50">
					<div class="leftbar p-r-20 p-r-0-sm">
						<!--  -->
						<h4 class="m-text14 p-b-7">
							Categories
						</h4>
						
						<ul class="p-b-54">
						<c:forEach items="${categories }" var="c">
							<li class="p-t-4">
								<a href="#" class="s-text13 active1">
									${c.name }
								</a>
							</li>
						</c:forEach>
						</ul>
						
						<!--  -->
						<h4 class="m-text14 p-b-32">
							Filters
						</h4>

						<div class="filter-price p-t-22 p-b-50 bo3">
							<div class="m-text15 p-b-17">
								Price
							</div>

							<div class="wra-filter-bar">
								<div id="filter-bar"></div>
							</div>

							<div class="flex-sb-m flex-w p-t-16">
								<div class="w-size11">
									<!-- Button -->
									<button class="flex-c-m size4 bg7 bo-rad-15 hov1 s-text14 trans-0-4">
										Filter
									</button>
								</div>

								<div class="s-text3 p-t-10 p-b-10">
									Range: $<span id="value-lower">610</span> - $<span id="value-upper">980</span>
								</div>
							</div>
						</div>

						<div class="filter-color p-t-22 p-b-50 bo3">
							<div class="m-text15 p-b-12">
								Color
							</div>

							<ul class="flex-w">
								<li class="m-r-10">
									<input class="checkbox-color-filter" id="color-filter1" type="checkbox" name="color-filter1">
									<label class="color-filter color-filter1" for="color-filter1"></label>
								</li>

								<li class="m-r-10">
									<input class="checkbox-color-filter" id="color-filter2" type="checkbox" name="color-filter2">
									<label class="color-filter color-filter2" for="color-filter2"></label>
								</li>

								<li class="m-r-10">
									<input class="checkbox-color-filter" id="color-filter3" type="checkbox" name="color-filter3">
									<label class="color-filter color-filter3" for="color-filter3"></label>
								</li>

								<li class="m-r-10">
									<input class="checkbox-color-filter" id="color-filter4" type="checkbox" name="color-filter4">
									<label class="color-filter color-filter4" for="color-filter4"></label>
								</li>

								<li class="m-r-10">
									<input class="checkbox-color-filter" id="color-filter5" type="checkbox" name="color-filter5">
									<label class="color-filter color-filter5" for="color-filter5"></label>
								</li>

								<li class="m-r-10">
									<input class="checkbox-color-filter" id="color-filter6" type="checkbox" name="color-filter6">
									<label class="color-filter color-filter6" for="color-filter6"></label>
								</li>

								<li class="m-r-10">
									<input class="checkbox-color-filter" id="color-filter7" type="checkbox" name="color-filter7">
									<label class="color-filter color-filter7" for="color-filter7"></label>
								</li>
							</ul>
						</div>

						<div class="search-product pos-relative bo4 of-hidden">
							<input class="s-text7 size6 p-l-23 p-r-50" type="text" name="search-product" placeholder="Search Products...">

							<button class="flex-c-m size5 ab-r-m color2 color0-hov trans-0-4">
								<i class="fs-12 fa fa-search" aria-hidden="true"></i>
							</button>
						</div>
					</div>
				</div>

				<div class="col-sm-6 col-md-8 col-lg-9 p-b-50">
					<!--  -->
					<div class="flex-sb-m flex-w p-b-35">
						<div class="flex-w">
							<div class="rs2-select2 bo4 of-hidden w-size12 m-t-5 m-b-5 m-r-10">
								<select class="selection-2" name="sorting">
									<option>Default Sorting</option>
									<option>Popularity</option>
									<option>Price: low to high</option>
									<option>Price: high to low</option>
								</select>
							</div>

							<div class="rs2-select2 bo4 of-hidden w-size12 m-t-5 m-b-5 m-r-10">
								<select class="selection-2" name="sorting">
									<option>Price</option>
									<option>$0.00 - $50.00</option>
									<option>$50.00 - $100.00</option>
									<option>$100.00 - $150.00</option>
									<option>$150.00 - $200.00</option>
									<option>$200.00+</option>

								</select>
							</div>
						</div>

						<span class="s-text8 p-t-5 p-b-5">
							Showing 1–12 of 16 results
						</span>
					</div>

					<!-- Product -->
					<div class="row">
					<c:forEach items="${products }" var = "p">
						<div class="col-sm-12 col-md-6 col-lg-4 p-b-50">
							
							<!-- Block2 -->
							<div class="block2">
								<div class="block2-img wrap-pic-w of-hidden pos-relative block2-labelnew">
									<c:url value="/image?fname=${p.image }" var="imgUrl"></c:url>
									<img src="${imgUrl }" alt="IMG-PRODUCT" height="auto" width="auto">

									<div class="block2-overlay trans-0-4">
										<a href="#" class="block2-btn-addwishlist hov-pointer trans-0-4">
											<i class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
											<i class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
										</a>

										<div class="block2-btn-addcart w-size1 trans-0-4">
											<!-- Button -->
											<button class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
												Add to Cart
											</button>
										</div>
									</div>
								</div>
								
								<div class="block2-txt p-t-20">
									<a href="<c:url value="/chi-tiet-san-pham"/>" class="block2-name dis-block s-text3 p-b-5">
										${p.name }
									</a>

									<span class="block2-price m-text6 p-r-5">
										$${p.price }
									</span>
								</div>
							</div>
						</div>
						</c:forEach>
						<div class="col-sm-12 col-md-6 col-lg-4 p-b-50">
							<!-- Block2 -->
							<div class="block2">
								<div class="block2-img wrap-pic-w of-hidden pos-relative">
									<c:url value="/static/client/images/item-03.jpg" var="item03"/>
									<img src="${item03 }" alt="IMG-PRODUCT">

									<div class="block2-overlay trans-0-4">
										<a href="#" class="block2-btn-addwishlist hov-pointer trans-0-4">
											<i class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
											<i class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
										</a>

										<div class="block2-btn-addcart w-size1 trans-0-4">
											<!-- Button -->
											<button class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
												Add to Cart
											</button>
										</div>
									</div>
								</div>

								<div class="block2-txt p-t-20">
									<a href="<c:url value="/chi-tiet-san-pham"/>" class="block2-name dis-block s-text3 p-b-5">
										Denim jacket blue
									</a>

									<span class="block2-price m-text6 p-r-5">
										$92.50
									</span>
								</div>
							</div>
						</div>

						<div class="col-sm-12 col-md-6 col-lg-4 p-b-50">
							<!-- Block2 -->
							<div class="block2">
								<div class="block2-img wrap-pic-w of-hidden pos-relative">
									<c:url value="/static/client/images/item-05.jpg" var="item05"/>
									<img src="${item05}" alt="IMG-PRODUCT">

									<div class="block2-overlay trans-0-4">
										<a href="#" class="block2-btn-addwishlist hov-pointer trans-0-4">
											<i class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
											<i class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
										</a>

										<div class="block2-btn-addcart w-size1 trans-0-4">
											<!-- Button -->
											<button class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
												Add to Cart
											</button>
										</div>
									</div>
								</div>

								<div class="block2-txt p-t-20">
									<a href="<c:url value="/chi-tiet-san-pham"/>" class="block2-name dis-block s-text3 p-b-5">
										Coach slim easton black
									</a>

									<span class="block2-price m-text6 p-r-5">
										$165.90
									</span>
								</div>
							</div>
						</div>

						<div class="col-sm-12 col-md-6 col-lg-4 p-b-50">
							<!-- Block2 -->
							<div class="block2">
								<div class="block2-img wrap-pic-w of-hidden pos-relative block2-labelsale">
									<c:url value="/static/client/images/item-07.jpg" var="item07"/>
									<img src="${item07 }" alt="IMG-PRODUCT">

									<div class="block2-overlay trans-0-4">
										<a href="#" class="block2-btn-addwishlist hov-pointer trans-0-4">
											<i class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
											<i class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
										</a>

										<div class="block2-btn-addcart w-size1 trans-0-4">
											<!-- Button -->
											<button class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
												Add to Cart
											</button>
										</div>
									</div>
								</div>

								<div class="block2-txt p-t-20">
									<a href="<c:url value="/chi-tiet-san-pham"/>" class="block2-name dis-block s-text3 p-b-5">
										Frayed denim shorts
									</a>

									<span class="block2-oldprice m-text7 p-r-5">
										$29.50
									</span>

									<span class="block2-newprice m-text8 p-r-5">
										$15.90
									</span>
								</div>
							</div>
						</div>

						<div class="col-sm-12 col-md-6 col-lg-4 p-b-50">
							<!-- Block2 -->
							<div class="block2">
								<div class="block2-img wrap-pic-w of-hidden pos-relative block2-labelnew">
									<c:url value="/static/client/images/item-01.jpg" var="item01"/>
									<img src="${item01 }" alt="IMG-PRODUCT">

									<div class="block2-overlay trans-0-4">
										<a href="#" class="block2-btn-addwishlist hov-pointer trans-0-4">
											<i class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
											<i class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
										</a>

										<div class="block2-btn-addcart w-size1 trans-0-4">
											<!-- Button -->
											<button class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
												Add to Cart
											</button>
										</div>
									</div>
								</div>

								<div class="block2-txt p-t-20">
									<a href="<c:url value="/chi-tiet-san-pham"/>" class="block2-name dis-block s-text3 p-b-5">
										Herschel supply co 25l
									</a>

									<span class="block2-price m-text6 p-r-5">
										$75.00
									</span>
								</div>
							</div>
						</div>

						<div class="col-sm-12 col-md-6 col-lg-4 p-b-50">
							<!-- Block2 -->
							<div class="block2">
								<div class="block2-img wrap-pic-w of-hidden pos-relative">
									<c:url value="/static/client/images/item-14.jpg" var="item14"/>
									<img src="${item14 }" alt="IMG-PRODUCT">

									<div class="block2-overlay trans-0-4">
										<a href="#" class="block2-btn-addwishlist hov-pointer trans-0-4">
											<i class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
											<i class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
										</a>

										<div class="block2-btn-addcart w-size1 trans-0-4">
											<!-- Button -->
											<button class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
												Add to Cart
											</button>
										</div>
									</div>
								</div>

								<div class="block2-txt p-t-20">
									<a href="<c:url value="/chi-tiet-san-pham"/>" class="block2-name dis-block s-text3 p-b-5">
										Denim jacket blue
									</a>

									<span class="block2-price m-text6 p-r-5">
										$92.50
									</span>
								</div>
							</div>
						</div>

						<div class="col-sm-12 col-md-6 col-lg-4 p-b-50">
							<!-- Block2 -->
							<div class="block2">
								<div class="block2-img wrap-pic-w of-hidden pos-relative block2-labelnew">
									<c:url value="/static/client/images/item-06.jpg" var="item06"/>
									<img src="${item06 }" alt="IMG-PRODUCT">

									<div class="block2-overlay trans-0-4">
										<a href="#" class="block2-btn-addwishlist hov-pointer trans-0-4">
											<i class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
											<i class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
										</a>

										<div class="block2-btn-addcart w-size1 trans-0-4">
											<!-- Button -->
											<button class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
												Add to Cart
											</button>
										</div>
									</div>
								</div>

								<div class="block2-txt p-t-20">
									<a href="<c:url value="/chi-tiet-san-pham"/>" class="block2-name dis-block s-text3 p-b-5">
										Herschel supply co 25l
									</a>

									<span class="block2-price m-text6 p-r-5">
										$75.00
									</span>
								</div>
							</div>
						</div>

						<div class="col-sm-12 col-md-6 col-lg-4 p-b-50">
							<!-- Block2 -->
							<div class="block2">
								<div class="block2-img wrap-pic-w of-hidden pos-relative">
									<c:url value="/static/client/images/item-08.jpg" var="item08"/>
									<img src="${item08 }" alt="IMG-PRODUCT">

									<div class="block2-overlay trans-0-4">
										<a href="#" class="block2-btn-addwishlist hov-pointer trans-0-4">
											<i class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
											<i class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
										</a>

										<div class="block2-btn-addcart w-size1 trans-0-4">
											<!-- Button -->
											<button class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
												Add to Cart
											</button>
										</div>
									</div>
								</div>

								<div class="block2-txt p-t-20">
									<a href="<c:url value="/chi-tiet-san-pham"/>" class="block2-name dis-block s-text3 p-b-5">
										Denim jacket blue
									</a>

									<span class="block2-price m-text6 p-r-5">
										$92.50
									</span>
								</div>
							</div>
						</div>

						<div class="col-sm-12 col-md-6 col-lg-4 p-b-50">
							<!-- Block2 -->
							<div class="block2">
								<div class="block2-img wrap-pic-w of-hidden pos-relative">
									<c:url value="/static/client/images/item-10.jpg" var="item10"/>
									<img src="${item10 }" alt="IMG-PRODUCT">

									<div class="block2-overlay trans-0-4">
										<a href="#" class="block2-btn-addwishlist hov-pointer trans-0-4">
											<i class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
											<i class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
										</a>

										<div class="block2-btn-addcart w-size1 trans-0-4">
											<!-- Button -->
											<button class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
												Add to Cart
											</button>
										</div>
									</div>
								</div>

								<div class="block2-txt p-t-20">
									<a href="<c:url value="/chi-tiet-san-pham"/>" class="block2-name dis-block s-text3 p-b-5">
										Coach slim easton black
									</a>

									<span class="block2-price m-text6 p-r-5">
										$165.90
									</span>
								</div>
							</div>
						</div>

						<div class="col-sm-12 col-md-6 col-lg-4 p-b-50">
							<!-- Block2 -->
							<div class="block2">
								<div class="block2-img wrap-pic-w of-hidden pos-relative block2-labelsale">
									<c:url value="/static/client/images/item-11.jpg" var="item11"/>
									<img src="${item11 }" alt="IMG-PRODUCT">

									<div class="block2-overlay trans-0-4">
										<a href="#" class="block2-btn-addwishlist hov-pointer trans-0-4">
											<i class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
											<i class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
										</a>

										<div class="block2-btn-addcart w-size1 trans-0-4">
											<!-- Button -->
											<button class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
												Add to Cart
											</button>
										</div>
									</div>
								</div>

								<div class="block2-txt p-t-20">
									<a href="<c:url value="/chi-tiet-san-pham"/>" class="block2-name dis-block s-text3 p-b-5">
										Frayed denim shorts
									</a>

									<span class="block2-oldprice m-text7 p-r-5">
										$29.50
									</span>

									<span class="block2-newprice m-text8 p-r-5">
										$15.90
									</span>
								</div>
							</div>
						</div>

						<div class="col-sm-12 col-md-6 col-lg-4 p-b-50">
							<!-- Block2 -->
							<div class="block2">
								<div class="block2-img wrap-pic-w of-hidden pos-relative block2-labelnew">
									<c:url value="/static/client/images/item-12.jpg" var="item12"/>
									<img src="${item12 }" alt="IMG-PRODUCT">

									<div class="block2-overlay trans-0-4">
										<a href="#" class="block2-btn-addwishlist hov-pointer trans-0-4">
											<i class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
											<i class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
										</a>

										<div class="block2-btn-addcart w-size1 trans-0-4">
											<!-- Button -->
											<button class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
												Add to Cart
											</button>
										</div>
									</div>
								</div>

								<div class="block2-txt p-t-20">
									<a href="<c:url value="/chi-tiet-san-pham"/>" class="block2-name dis-block s-text3 p-b-5">
										Herschel supply co 25l
									</a>

									<span class="block2-price m-text6 p-r-5">
										$75.00
									</span>
								</div>
							</div>
						</div>

						<div class="col-sm-12 col-md-6 col-lg-4 p-b-50">
							<!-- Block2 -->
							<div class="block2">
								<div class="block2-img wrap-pic-w of-hidden pos-relative">
									<c:url value="/static/client/images/item-15.jpg" var="item15"/>
									<img src="${item15 }" alt="IMG-PRODUCT">

									<div class="block2-overlay trans-0-4">
										<a href="#" class="block2-btn-addwishlist hov-pointer trans-0-4">
											<i class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
											<i class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
										</a>

										<div class="block2-btn-addcart w-size1 trans-0-4">
											<!-- Button -->
											<button class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
												Add to Cart
											</button>
										</div>
									</div>
								</div>

								<div class="block2-txt p-t-20">
									<a href="<c:url value="/chi-tiet-san-pham"/>" class="block2-name dis-block s-text3 p-b-5">
										Denim jacket blue
									</a>

									<span class="block2-price m-text6 p-r-5">
										$92.50
									</span>
								</div>
							</div>
						</div>
					</div>

					<!-- Pagination -->
					<div class="pagination flex-m flex-w p-t-26">
						<a href="#" class="item-pagination flex-c-m trans-0-4 active-pagination">1</a>
						<a href="#" class="item-pagination flex-c-m trans-0-4">2</a>
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
	<c:url value="/static/client/vendor/daterangepicker/moment.min.js" var="moment"/>
	<script type="text/javascript" src="${moment }"></script>
	<c:url value="/static/client/vendor/daterangepicker/daterangepicker.js" var="daterangepicker"/>
	<script type="text/javascript" src="${daterangepicker }"></script>
<!--===============================================================================================-->
	<c:url value="/static/client/vendor/slick/slick.min.js" var="slick"/>
	<script type="text/javascript" src="${slick }"></script>
	<c:url value="/static/client/js/slick-custom.js" var="slickcustom"/>
	<script type="text/javascript" src="${slickcustom }"></script>
<!--===============================================================================================-->
	<c:url value="/static/client/vendor/sweetalert/sweetalert.min.js" var="sweetalert"/>
	<script type="text/javascript" src="${sweetalert }"></script>
	<script type="text/javascript">
		$('.block2-btn-addcart').each(function(){
			var nameProduct = $(this).parent().parent().parent().find('.block2-name').html();
			$(this).on('click', function(){
				swal(nameProduct, "is added to cart !", "success");
			});
		});

		$('.block2-btn-addwishlist').each(function(){
			var nameProduct = $(this).parent().parent().parent().find('.block2-name').html();
			$(this).on('click', function(){
				swal(nameProduct, "is added to wishlist !", "success");
			});
		});
	</script>

<!--===============================================================================================-->
	<c:url value="/static/client/vendor/noui/nouislider.min.js" var="nouislider"/>
	<script type="text/javascript" src="${nouislider }"></script>
	<script type="text/javascript">
		/*[ No ui ]
	    ===========================================================*/
	    var filterBar = document.getElementById('filter-bar');

	    noUiSlider.create(filterBar, {
	        start: [ 50, 200 ],
	        connect: true,
	        range: {
	            'min': 50,
	            'max': 200
	        }
	    });

	    var skipValues = [
	    document.getElementById('value-lower'),
	    document.getElementById('value-upper')
	    ];

	    filterBar.noUiSlider.on('update', function( values, handle ) {
	        skipValues[handle].innerHTML = Math.round(values[handle]) ;
	    });
	</script>
<!--===============================================================================================-->
	<c:url value="/static/client/js/main.js" var="mainjs"/>
	<script src="${mainjs }"></script>

</body>
</html>
