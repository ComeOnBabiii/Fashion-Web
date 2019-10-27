<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<title>About</title>
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
	<c:url value="/static/client/fonts/Linearicons-Free-v1.0.0/icon-font.min.css" var="Linearicons"/>
	<link rel="stylesheet" type="text/css" href="${Linearicons }">
<!--===============================================================================================-->
	<c:url value="/static/client/fonts/elegant-font/html-css/style.css" var="elegant"/>
	<link rel="stylesheet" type="text/css" href="${elegant }">
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
	<c:url value="/static/client/images/heading-pages-06.jpg" var="headingPage"/>
	<section class="bg-title-page p-t-40 p-b-50 flex-col-c-m" style="background-image: url(${headingPage});">
		<h2 class="l-text2 t-center">
			About
		</h2>
	</section>

	<!-- content page -->
	<section class="bgwhite p-t-66 p-b-38">
		<div class="container">
			<div class="row">
				<div class="col-md-4 p-b-30">
					<div class="hov-img-zoom">
						<c:url value="/static/client/images/banner-14.jpg" var="banner14"/>
						<img src="${banner14 }" alt="IMG-ABOUT">
					</div>
				</div>

				<div class="col-md-8 p-b-30">
					<h3 class="m-text26 p-t-15 p-b-16">
						Our story
					</h3>

					<p class="p-b-28">
						Phasellus egestas nisi nisi, lobortis ultricies risus semper nec. Vestibulum pharetra ac ante ut pellentesque. Curabitur fringilla dolor quis lorem accumsan, vitae molestie urna dapibus. Pellentesque porta est ac neque bibendum viverra. Vivamus lobortis magna ut interdum laoreet. Donec gravida lorem elit, quis condimentum ex semper sit amet. Fusce eget ligula magna. Aliquam aliquam imperdiet sodales. Ut fringilla turpis in vehicula vehicula. Pellentesque congue ac orci ut gravida. Aliquam erat volutpat. Donec iaculis lectus a arcu facilisis, eu sodales lectus sagittis. Etiam pellentesque, magna vel dictum rutrum, neque justo eleifend elit, vel tincidunt erat arcu ut sem. Sed rutrum, turpis ut commodo efficitur, quam velit convallis ipsum, et maximus enim ligula ac ligula. Vivamus tristique vulputate ultricies. Sed vitae ultrices orci.
					</p>

					<div class="bo13 p-l-29 m-l-9 p-b-10">
						<p class="p-b-11">
							Creativity is just connecting things. When you ask creative people how they did something, they feel a little guilty because they didn't really do it, they just saw something. It seemed obvious to them after a while.
						</p>

						<span class="s-text7">
							- Steve Job’s
						</span>
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
