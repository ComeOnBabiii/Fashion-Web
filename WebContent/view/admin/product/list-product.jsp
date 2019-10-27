<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User List</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript">
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 

</script>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<c:url value="/static/admin/css/bootstrap.css" var="bootstrap"></c:url>
<link href="${bootstrap}" rel="stylesheet" type="text/css" media="all">
<!-- Custom Theme files -->
<c:url value="/static/admin/css/style.css" var="style"></c:url>
<link href="${style}" rel="stylesheet" type="text/css" media="all" />
<!--js-->
<c:url value="/static/admin/js/jquery-2.1.1.min.js" var="jquery"></c:url>
<script src="${jquery}"></script>
<!--icons-css-->
<c:url value="/static/admin/css/font-awesome.css" var="fontAwesome"></c:url>
<link href="${fontAwesome}" rel="stylesheet">
<!--Google Fonts-->
<link href='//fonts.googleapis.com/css?family=Carrois+Gothic'
	rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Work+Sans:400,500,600'
	rel='stylesheet' type='text/css'>
<!--static chart-->
<c:url value="/static/admin/js/Chart.min.js" var="chart"></c:url>
<script src="${chart}"></script>
<!--//charts-->
<!-- geo chart -->
<script src="//cdn.jsdelivr.net/modernizr/2.8.3/modernizr.min.js"
	type="text/javascript"></script>
<script>
	window.modernizr
			|| document
					.write('<script src="lib/modernizr/modernizr-custom.js"><\/script>')
</script>
<!--<script src="lib/html5shiv/html5shiv.js"></script>-->
<!-- Chartinator  -->
<c:url value="/static/admin/js/chartinator.js" var="chartinator"></c:url>
<script src="${chartinator}"></script>
<script type="text/javascript">
	jQuery(function($) {

		var chart3 = $('#geoChart').chartinator(
				{
					tableSel : '.geoChart',

					columns : [ {
						role : 'tooltip',
						type : 'string'
					} ],

					colIndexes : [ 2 ],

					rows : [ [ 'China - 2015' ], [ 'Colombia - 2015' ],
							[ 'France - 2015' ], [ 'Italy - 2015' ],
							[ 'Japan - 2015' ], [ 'Kazakhstan - 2015' ],
							[ 'Mexico - 2015' ], [ 'Poland - 2015' ],
							[ 'Russia - 2015' ], [ 'Spain - 2015' ],
							[ 'Tanzania - 2015' ], [ 'Turkey - 2015' ] ],

					ignoreCol : [ 2 ],

					chartType : 'GeoChart',

					chartAspectRatio : 1.5,

					chartZoom : 1.75,

					chartOffset : [ -12, 0 ],

					chartOptions : {

						width : null,

						backgroundColor : '#fff',

						datalessRegionColor : '#F5F5F5',

						region : 'world',

						resolution : 'countries',

						legend : 'none',

						colorAxis : {

							colors : [ '#679CCA', '#337AB7' ]
						},
						tooltip : {

							trigger : 'focus',

							isHtml : true
						}
					}

				});
	});
</script>
<!--geo chart-->

<!--skycons-icons-->
<c:url value="/static/admin/js/skycons.js" var="skycons"></c:url>
<script src="${skycons}"></script>
<!--//skycons-icons-->
<c:url value="/static/admin/css/listuser.css" var="listuser"></c:url>
<link href="${listuser}" rel="stylesheet" type="text/css" media="all">
</head>
<body>
	<div class="page-container">
		<div class="left-content">
			<div class="mother-grid-inner">
				<!--header start here-->
				<jsp:include page="/view/admin/include/header-main.jsp"></jsp:include>
				<!--heder end here-->
				<!-- /script-for sticky-nav -->
				<!--inner block start here-->
				<div class="inner-block">
					<div class="market-updates">
						<div class="col-md-4 market-update-gd">
							<div class="market-update-block clr-block-1">
								<div class="col-md-8 market-update-left">
									<h3>83</h3>
									<h4>Registered User</h4>
									<p>Other hand, we denounce</p>
								</div>
								<div class="col-md-4 market-update-right">
									<i class="fa fa-file-text-o"> </i>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
						<div class="col-md-4 market-update-gd">
							<div class="market-update-block clr-block-2">
								<div class="col-md-8 market-update-left">
									<h3>135</h3>
									<h4>Daily Visitors</h4>
									<p>Other hand, we denounce</p>
								</div>
								<div class="col-md-4 market-update-right">
									<i class="fa fa-eye"> </i>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
						<div class="col-md-4 market-update-gd">
							<div class="market-update-block clr-block-3">
								<div class="col-md-8 market-update-left">
									<h3>23</h3>
									<h4>New Messages</h4>
									<p>Other hand, we denounce</p>
								</div>
								<div class="col-md-4 market-update-right">
									<i class="fa fa-envelope-o"> </i>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="chit-chat-layer1 bg">
						<div class="work-progres">
							<div class="chit-chat-heading">List Product</div>

							<div class="table-responsive">
								<table class="table table-hover">
									<thead>
										<tr>
											<th>#</th>
											<th>Name</th>
											<th>Price</th>
											<th>Category</th>
											<th>Image</th>
											<th>Edit</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${proList}" var="p">
											<tr>
												<td>${p.id }</td>
												<td>${p.name }</td>
												<td>${p.price}</td>
												<td>${p.category.getName()}</td>
												<c:url value="/image?fname=${p.image }" var="imgUrl"></c:url>
												<td><img height="150" src="${imgUrl}"/></td>
												<td>
												<a href="<c:url value='/admin/product/edit?id=${p.id }'/>" class="hvr-grow label label-warning">Edit</a> 
												<a href="<c:url value='/admin/product/delete?id=${p.id }'/>" class="hvr-grow label label-info">Delete</a>
												<a href="<c:url value='/admin/cart/add-to-cart?pId=${p.id }'/>" class="hvr-grow label label-info">Add To Cart</a>
												</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>

							</div>
						</div>
						<div class="clearfix"></div>

					</div>
				</div>
				<!--inner block end here-->
				<!--copy rights start here-->
				<jsp:include page="/view/admin/include/copyright.jsp"></jsp:include>
				<!--COPY rights end here-->
			</div>
		</div>
		<!--slider menu-->
		<jsp:include page="/view/admin/include/menu.jsp"></jsp:include>

		<!--slide bar menu end here-->
		<jsp:include page="/view/admin/include/script.jsp"></jsp:include>
</body>
</html>