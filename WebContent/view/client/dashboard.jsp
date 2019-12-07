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
    <script src="https://kit.fontawesome.com/c02aa7e78c.js" crossorigin="anonymous"></script> 
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
            <div class="searh-icon">
              <c:url value="/static/client/images/search-icon.png" var="bootstrap"></c:url>
              <img src="${bootstrap}" />
            </div>
            <div class="cart-icon">
               <c:url value="/static/client/images/shopping-cart.png" var="bootstrap"></c:url>
              <img src="${bootstrap}" />
            </div>
            <div class="portfolio">
                <a>PORTFOLIO</a>
            </div>
            <div class="blog">
                <a>PAGE</a>
            </div>
            <div class="mega menu">
                <a>MEGA MENU</a>
            </div>

            <div class="shop">
                <a>SHOP</a>
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
                    <c:url value="/static/client/images/products/2.jpg" var="bootstrap"></c:url>
              		<img src="${bootstrap}" />
                </div>
                <div class="product-image">
                    <c:url value="/static/client/images/products/2.jpg" var="bootstrap"></c:url>
              		<img src="${bootstrap}" />
                </div>
                <div class="product-image">
                    <c:url value="/static/client/images/products/2.jpg" var="bootstrap"></c:url>
              		<img src="${bootstrap}" />
                </div>
                <div class="product-image">
                    <c:url value="/static/client/images/products/2.jpg" var="bootstrap"></c:url>
              		<img src="${bootstrap}" />
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
                <p>My account</p>
                <p>Payment</p>
                <p>Shipping</p>
                <p>About</p>
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