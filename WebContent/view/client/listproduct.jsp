<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <meta http-equiv="X-UA-Compatible" content="ie=edge">
            <title>Document</title>
            <script src="https://use.fontawesome.com/0cc436713d.js"></script>

            <c:url value="/static/client/css/shop.css" var="bootstrap"></c:url>
            <link href="${bootstrap}" rel="stylesheet" type="text/css" media="all">
        </head>

        <body>
            <div class="container">
                <div class="navbar">
                    <div class="logo">
                        <a href="/Fashion/home">                         
                            <c:url value="/static/client/images/logos/1.png" var="bootstrap"></c:url>
              				<img src="${bootstrap}" />
                        </a>
                    </div>
                    <div class="dropdown">
                        <div class="menu-icon dropbtn"><i class="fa fa-bars"></i></div>
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
                <div id="selector" class="selector">

                </div>
                <hr>

                <div class="product-list">
                    <div id="product-container" class="product-container">

                    </div>
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
                        <a href="https://www.facebook.com/"><p>Facebook<p></a>
                <a href=""><p>Instagram<p></a>

                    </div>
                    <div class="footer-content">
                        <h5>&copy;QDND</h5>
                    </div>
                </div>
            </div>

            <c:url value="/static/client/js/listProduct.js" var="test"></c:url>
            <script src="${test}"></script>
        </body>

        </html>