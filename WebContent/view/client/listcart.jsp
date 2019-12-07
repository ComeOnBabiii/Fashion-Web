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
      <script src="https://use.fontawesome.com/0cc436713d.js" crossorigin="anonymous"></script>

 	<c:url value="/static/client/css/cart.css" var="bootstrap"></c:url>
	<link href="${bootstrap}" rel="stylesheet" type="text/css" media="all">
</head>

<body>		
     <div class="container">
        <div class="navbar">
            <div class="logo">
                <a href="#">
                    <img src="images/logos/1.png" />
                </a>
            </div>
            <div class="dropdown">
                <div class="menu-icon dropbtn"><i class="fas fa-bars icon-3x"></i></div>
                <div class="dropdown-content">
                    <!-- <a href="#"><img src="./images/shopping-cart.png" /></a> -->
                    <a href="#">PORTFOLIO</a>
                    <a href="#">PAGE</a>
                    <a href="#">MEGA MENU</a>
                    <a href="#">SHOP</a>
                </div>
            </div>


            <div class="searh-icon option">
                <img src="./images/search-icon.png" />
            </div>
            <div class="cart-icon option">
                <a href="#"><img src="./images/shopping-cart.png" /></a>
            </div>
            <div class="portfolio option">
                <a href="#">PORTFOLIO</a>
            </div>
            <div class="blog option">
                <a href="#">PAGE</a>
            </div>
            <div class="mega menu option">
                <a href="#">MEGA MENU</a>
            </div>

            <div class="shop option">
                <a href="#">SHOP</a>
            </div>
        </div>
        <div class="banner">
            <div class="cart-icon">
                <img src="./images/shopping-cart.png" />
            </div>
            <div class="cart-text">
                <h3>CART</h3>
            </div>
        </div>

        <div class="table-block" style="overflow-x:auto;">
            <table class="table">
                <tr>
                    <th class="product-img">PRODUCT NAME </th>
                    <th></th>
                    <th>PRICE</th>
                    <th>QUANTITY</th>
                    <th>TOTAL</th>
                    <th> </th>
                </tr>
			<c:forEach items="${sessionScope.cart}" var="map">
                 <tr>
                    <td class="product-img">
                        <c:url value="/static/client/images/products/14.jpg" var="bootstrap"></c:url>
              			<img src="${bootstrap}" />
                    </td>
                    <td>
                        <div class="product-name"><span>${map.value.product.name }/span></div>
                    </td>

                    <td>${map.value.unitPrice }</td>
                    <td>
                        ${map.value.quantity}
                    </td>
                    <td>$113.00</td>
                    <td><button><i class="fa fa-close"></i></button></i></td>
                </tr>
			 </c:forEach>
            </table>
        </div>
        <div class="payment">
            <div class="payment-price">
                <div class="payment-table">
                    <table style="width:60%">
                        <tr>
                            <th>Sub total</th>
                            <td>$113.00</td>
                        </tr>
                        <tr>
                            <th>Shipping</th>
                            <td>Free Shiping</td>
                        </tr>
                        <tr>
                            <th>Total:</th>
                            <td>$113.00</td>
                        </tr>
                    </table>
                </div>

            </div>
            <div class="payment-btn">
                <button>PROCEED TO CHECK OUT</button>
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