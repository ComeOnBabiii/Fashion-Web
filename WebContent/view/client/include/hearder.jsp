 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<header class="header1">
		<!-- Header desktop -->
		<div class="container-menu-header">
			<div class="topbar">
				<div class="topbar-social">
					<a href="#" class="topbar-social-item fa fa-facebook"></a>
					<a href="#" class="topbar-social-item fa fa-instagram"></a>
					<a href="#" class="topbar-social-item fa fa-pinterest-p"></a>
					<a href="#" class="topbar-social-item fa fa-snapchat-ghost"></a>
					<a href="#" class="topbar-social-item fa fa-youtube-play"></a>
				</div>

				<span class="topbar-child1">
					Free shipping for standard order over $100
				</span>

				<div class="topbar-child2">
					<span class="topbar-email">
						thanhpham04061998@gmail.com
					</span>
				</div>
			</div>

			<div class="wrap_header">
				<!-- Logo -->
				<c:url value="/trang-chu" var="trangchu"/>
				<a href="${trangchu }" class="logo">
					<c:url value="/static/client/images/icons/logo.png" var="iconLogo"/>
					<img src="${iconLogo }" alt="IMG-LOGO">
				</a>

				<!-- Menu -->
				<div class="wrap_menu">
					<nav class="menu">
						<ul class="main_menu">
							<li>
								<a href="${trangchu }">Home</a>
							</li>

							<li>
								<c:url value="/san-pham" var="sanpham"/>
								<a href="${sanpham }">Shop</a>
							</li>

							<li class="sale-noti">
								<a href="${sanpham }">Sale</a>
							</li>

							<li>
								<c:url value="/gio-hang" var="gioHang"/>
								<a href="${gioHang }">Features</a>
							</li>

							<li>
								<c:url value="/bai-viet" var="baiViet"/>
								<a href="${baiViet }">Blog</a>
							</li>

							<li>
								<c:url value="/about" var="about"/>
								<a href="${about}">About</a>
							</li>

							<li>
								<c:url value="/lien-he" var="lienHe"/>
								<a href="${lienHe }">Contact</a>
							</li>
						</ul>
					</nav>
				</div>

				<!-- Header Icon -->
				<div class="header-icons">
					 
					<a href="#" class="header-wrapicon1 dis-block">Login</a>
					<span class="linedivide1"></span>
					<a href="#" class="header-wrapicon1 dis-block">Sign Up</a>
					<span class="linedivide1"></span>

					<div class="header-wrapicon2">
						<c:url value="/static/client/images/icons/icon-header-02.png" var="header02"/>
						<img src="${header02 }" class="header-icon1 js-show-header-dropdown" alt="ICON">
						<span class="header-icons-noti">0</span>

						<!-- Header cart noti -->
						<div class="header-cart header-dropdown">
							<ul class="header-cart-wrapitem">
								<li class="header-cart-item">
									<div class="header-cart-item-img">
										<c:url value="/static/client/images/item-cart-01.jpg" var="itemcart01"/>
										<img src="${itemcart01 }" alt="IMG">
									</div>

									<div class="header-cart-item-txt">
										<a href="#" class="header-cart-item-name">
											White Shirt With Pleat Detail Back
										</a>

										<span class="header-cart-item-info">
											1 x $19.00
										</span>
									</div>
								</li>

								<li class="header-cart-item">
									<div class="header-cart-item-img">
										<c:url value="/static/client/images/item-cart-02.jpg" var="itemcart02"/>
										<img src="${itemcart02 }" alt="IMG">
									</div>

									<div class="header-cart-item-txt">
										<a href="#" class="header-cart-item-name">
											Converse All Star Hi Black Canvas
										</a>

										<span class="header-cart-item-info">
											1 x $39.00
										</span>
									</div>
								</li>

								<li class="header-cart-item">
									<div class="header-cart-item-img">
										<c:url value="/static/client/images/item-cart-03.jpg" var="itemcart03"/>
										<img src="${itemcart03 }" alt="IMG">
									</div>

									<div class="header-cart-item-txt">
										<a href="#" class="header-cart-item-name">
											Nixon Porter Leather Watch In Tan
										</a>

										<span class="header-cart-item-info">
											1 x $17.00
										</span>
									</div>
								</li>
							</ul>

							<div class="header-cart-total">
								Total: $75.00
							</div>

							<div class="header-cart-buttons">
								<div class="header-cart-wrapbtn">
									<!-- Button -->
									<c:url value="/gio-hang" var="gioHang"/>
									<a href="${gioHang }" class="flex-c-m size1 bg1 bo-rad-20 hov1 s-text1 trans-0-4">
										View Cart
									</a>
								</div>

								<div class="header-cart-wrapbtn">
									<!-- Button -->
									<a href="#" class="flex-c-m size1 bg1 bo-rad-20 hov1 s-text1 trans-0-4">
										Check Out
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Header Mobile -->
		<div class="wrap_header_mobile">
			<!-- Logo moblie -->
			<c:url value="/trang-chu" var="trangchu"/>
			<a href="${trangchu }" class="logo-mobile">
				<c:url value="/static/client/images/icons/logo.png" var="logoPng"/>
				<img src="${logoPng }" alt="IMG-LOGO">
			</a>

			<!-- Button show menu -->
			<div class="btn-show-menu">
				<!-- Header Icon mobile -->
				<div class="header-icons-mobile">
					<a href="#" class="header-wrapicon1 dis-block">
						<c:url value="/static/client/images/icons/icon-header-01.png" var="header01"/>
						<img src="${header01 }" class="header-icon1" alt="ICON">
					</a>

					<span class="linedivide2"></span>

					<div class="header-wrapicon2">
						<c:url value="/static/client/images/icons/icon-header-02.png" var="header02"/>
						<img src="${header02 }" class="header-icon1 js-show-header-dropdown" alt="ICON">
						<span class="header-icons-noti">0</span>

						<!-- Header cart noti -->
						<div class="header-cart header-dropdown">
							<ul class="header-cart-wrapitem">
								<li class="header-cart-item">
									<div class="header-cart-item-img">
										<c:url value="/static/client/images/item-cart-01.jpg" var="itemcart01"/>
										<img src="${itemcart01 }" alt="IMG">
									</div>

									<div class="header-cart-item-txt">
										<a href="#" class="header-cart-item-name">
											White Shirt With Pleat Detail Back
										</a>

										<span class="header-cart-item-info">
											1 x $19.00
										</span>
									</div>
								</li>

								<li class="header-cart-item">
									<div class="header-cart-item-img">
										<c:url value="/static/client/images/item-cart-02.jpg" var="itemcart02"/>
										<img src="${itemcart02 }" alt="IMG">
									</div>

									<div class="header-cart-item-txt">
										<a href="#" class="header-cart-item-name">
											Converse All Star Hi Black Canvas
										</a>

										<span class="header-cart-item-info">
											1 x $39.00
										</span>
									</div>
								</li>

								<li class="header-cart-item">
									<div class="header-cart-item-img">
										<c:url value="/static/client/images/item-cart-03.jpg" var="itemcart03"/>
										<img src="${itemcart03 }" alt="IMG">
									</div>

									<div class="header-cart-item-txt">
										<a href="#" class="header-cart-item-name">
											Nixon Porter Leather Watch In Tan
										</a>

										<span class="header-cart-item-info">
											1 x $17.00
										</span>
									</div>
								</li>
							</ul>

							<div class="header-cart-total">
								Total: $75.00
							</div>

							<div class="header-cart-buttons">
								<div class="header-cart-wrapbtn">
									<!-- Button -->
									<c:url value="/gio-hang" var="gioHang"/>
									<a href="${gioHang }" class="flex-c-m size1 bg1 bo-rad-20 hov1 s-text1 trans-0-4">
										View Cart
									</a>
								</div>

								<div class="header-cart-wrapbtn">
									<!-- Button -->
									<a href="#" class="flex-c-m size1 bg1 bo-rad-20 hov1 s-text1 trans-0-4">
										Check Out
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="btn-show-menu-mobile hamburger hamburger--squeeze">
					<span class="hamburger-box">
						<span class="hamburger-inner"></span>
					</span>
				</div>
			</div>
		</div>

		<!-- Menu Mobile -->
		<div class="wrap-side-menu" >
			<nav class="side-menu">
				<ul class="main-menu">
					<li class="item-topbar-mobile p-l-20 p-t-8 p-b-8">
						<span class="topbar-child1">
							Free shipping for standard order over $100
						</span>
					</li>

					<li class="item-topbar-mobile p-l-20 p-t-8 p-b-8">
						<div class="topbar-child2-mobile">
							<span class="topbar-email">
								thanhpham04061998@gmail.com
							</span>

							
						</div>
					</li>

					<li class="item-topbar-mobile p-l-10">
						<div class="topbar-social-mobile">
							<a href="#" class="topbar-social-item fa fa-facebook"></a>
							<a href="#" class="topbar-social-item fa fa-instagram"></a>
							<a href="#" class="topbar-social-item fa fa-pinterest-p"></a>
							<a href="#" class="topbar-social-item fa fa-snapchat-ghost"></a>
							<a href="#" class="topbar-social-item fa fa-youtube-play"></a>
						</div>
					</li>

					<li class="item-menu-mobile">
						<c:url value="/trang-chu" var="trangchu"/>
						<a href="${trangchu }">Home</a>
						<i class="arrow-main-menu fa fa-angle-right" aria-hidden="true"></i>
					</li>

					<li class="item-menu-mobile">
						
						<a href="${sanpham }">Shop</a>
					</li>

					<li class="item-menu-mobile">
						<a href="${sanpham }">Sale</a>
					</li>

					<li class="item-menu-mobile">
						<c:url value="/gio-hang" var="gioHang"/>
						<a href="${gioHang }">Features</a>
					</li>

					<li class="item-menu-mobile">
						<c:url value="/bai-viet" var="baiViet"/>
						<a href="${baiViet }">Blog</a>
					</li>

					<li class="item-menu-mobile">
						<c:url value="/about" var="about"/>
						<a href="${about}">About</a>
					</li>

					<li class="item-menu-mobile">
						<c:url value="/lien-he" var="lienHe"/>
						<a href="${lienHe }">Contact</a>
					</li>
				</ul>
			</nav>
		</div>
	</header>