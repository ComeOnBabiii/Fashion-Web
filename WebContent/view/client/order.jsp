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

 	<c:url value="/static/client/css/order.css" var="bootstrap"></c:url>
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
                <h3>ORDER</h3>
            </div>
        </div>
        <div class="body">
            <div class="login">RETURNING CUSTOMER <a href="#">CLICK HERE TO LOGIN</a></div>
            <div class="order">
                <div class="billing order-block">
                    <h2>BILLING ADDRESS</h2>
                    <div class="table">
                        <form>
                            <table>
                                <input placeholder="Phone Number" />
                                <div class="first-name">
                                    <input placeholder="First Name" />
                                </div>
                                <div class="last-name">
                                    <input placeholder="Last Name" />
                                </div>
                                <input placeholder="Address" />
                                <div class="note">
                                    <input placeholder="Note here something if you want..." />
                                </div>
                            </table>

                        </form>
                    </div>

                </div>
                <div class="your-order order-block">
                    <h2>YOUR ORDER</h2>
                    <form action="/Fashion/addOrder" method="post">
                        <div class="payment-price">
                            <div class="payment-table">
                                <table style="width:100%">
                                    <thead>
										<tr>
											<th class="product-name">Product</th>
										</tr>
									</thead>
									<tbody>
									<c:forEach items="${sessionScope.cart}" var="map">
										<tr class="cart_item">	
											<td class="product-name">${map.value.product.name} 
											</td>
											<td class="product-total"><span class="amount">${map.value.quantity}</span>
											</td>
										</tr>	
										</c:forEach>
									</tbody>
									<tfoot>
										<tr class="shipping">
											<th>Shipping</th>
											<td data-title="Shipping">
												<p>Free Shipping</p>
											</td>
										</tr>
										<tr class="order-total">
											<th>Total</th>
											<td><strong><span class="amount">$ ${total}</span></strong>
											</td>	
										</tr>
									</tfoot>
                                </table>
                            </div>
                        </div>
                        <!-- <button class="submit" type="button" onclick="AddOrder()">ORDER</button> -->
                        <input type="submit" class="button" >
                    </form>

                </div>
            </div>
        </div>
        <hr>
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