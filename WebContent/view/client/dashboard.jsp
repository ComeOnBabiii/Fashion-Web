<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Home</title>
    <script src="https://use.fontawesome.com/0cc436713d.js" crossorigin="anonymous"></script> 
    <c:url value="/static/client/css/index1.css" var="bootstrap"></c:url>
	<link href="${bootstrap}" rel="stylesheet" type="text/css" media="all">

</head>
<body>
 <div class="container">
        <div class="navbar">
            <div class="logo">
                <a href="#">
                    <c:url value="/static/client/images/logos/1.png" var="bootstrap"></c:url>
              					<img src="${bootstrap}" />
                </a>
            </div>
                    <div class="dropdown">
                        <div class="menu-icon dropbtn"><i class="fas fa-bars icon-3x"></i></div>
                        <div class="dropdown-content">                
                            <a href="/Fashion/listcart" >
                           		<c:url value="/static/client/images/shopping-cart.png" var="bootstrap"></c:url>
              					<img src="${bootstrap}" />
                            </a> 
                            <a href="/Fashion/shop">SHOP</a>
                            <a href="/Fashion/home">HOME</a>
                        </div>
                    </div>


            <div class="cart-icon option">
                  <a href="/Fashion/listcart">
                        <c:url value="/static/client/images/shopping-cart.png" var="bootstrap"></c:url>
              		<img src="${bootstrap}" />
              		</a> 
            </div>
                    <div class="mega menu option">
                        <a href="/Fashion/shop">SHOP</a>
                    </div>

                    <div class="shop option">
                        <a href="/Fashion/home">HOME</a>
                    </div>
        </div>
        <div class="banner">
             <c:url value="/static/client/images/slides/1.jpg" var="bootstrap"></c:url>
              		<img src="${bootstrap}" />
        </div>
        <div class="NewArrival-Block">
            <div class="new-arrival">
                <h2>New Arrival</h2>
            </div>
            <div class="product-container">
                <div class="product-image">
                    <a href="/">                     <c:url value="/static/client/images/products/2.jpg" var="bootstrap"></c:url>
              		<img src="${bootstrap}" /></a>
                </div>
                <div class="product-image">
                    <a href="/">                     <c:url value="/static/client/images/products/2.jpg" var="bootstrap"></c:url>
              		<img src="${bootstrap}" /></a>
                </div>
                <div class="product-image">
                    <a href="/">
                     <c:url value="/static/client/images/products/2.jpg" var="bootstrap"></c:url>
              		<img src="${bootstrap}" />
                    </a>
                </div>
                <div class="product-image">
                    <a href="/">                     <c:url value="/static/client/images/products/2.jpg" var="bootstrap"></c:url>
              		<img src="${bootstrap}" /></a>
                </div>
            </div>
        </div>

        <div class="middle-banner">
            <div class="middle-image">
                <a>
                    <c:url value="/static/client/images/banners/11.jpg" var="bootstrap"></c:url>
              		<img src="${bootstrap}" />
                </a></div>
            <div class="middle-image">
                <a>
                    <c:url value="/static/client/images/banners/12.jpg" var="bootstrap"></c:url>
              	<img src="${bootstrap}" />
                </a></div>
        </div>
        <div class="footer">
            <div class="footer-content">
                <a href="/">
                    <p>My account</p>
                </a>
                <a href="/">
                    <p>Payment</p>
                </a>

                <a href="/">
                    <p>Shipping</p>
                </a>

                <a href="/">
                    <p>About</p>
                </a>

            </div>
            <div class="footer-content">
                <h4>Stay Connected</h4>
                <a href="https://www.facebook.com/"><i class="fab fa-facebook-f"></i></a>
                <a href=""><i class="fab fa-instagram"></i></a>

            </div>
            <div class="footer-content">
                <h5>&copy;QDND</h5>
            </div>
        </div>
    </div>

</body>
</html>