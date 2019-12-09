<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Order</title>
      <script src="https://use.fontawesome.com/0cc436713d.js"></script>

 	<c:url value="/static/client/css/order.css" var="bootstrap"></c:url>
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
                        <div class="menu-icon dropbtn"><i class="fa fa-bars icon-3x"></i></div>
                        <div class="dropdown-content">                
                            <a href="/Fashion/listcart" >
                           		<c:url value="/static/client/images/shopping-cart.png" var="bootstrap"></c:url>
              					<img src="${bootstrap}" />
                            </a> 
                            <a href="/Fashion/shop">SHOP</a>
                            <a href="/Fashion/home">HOME</a>
                        </div>
                    </div>


					<div class="shop option">
                     <c:if test="${user == null}">
                     	<a href="/Fashion/login">Login?</a>
                     </c:if>
                     <c:if test="${user != null }">
                     	 <span>Xin chào ${user.name} !</span><br>  
                     	 <a href="/Fashion/logout">Logout</a>              	
                     </c:if>                      
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
            <div class="cart-icon">
                <c:url value="/static/client/images/shopping-cart.png" var="bootstrap"></c:url>
              		<img src="${bootstrap}" />
            </div>
            <div class="cart-text">
                <h3>ORDER</h3>
            </div>
        </div>
        <div class="body">
            <div class="login">RETURNING CUSTOMER <a href="/Fashion/login">CLICK HERE TO LOGIN</a></div>
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
                    <form action="/Fashion/addOrder" method="post" name="myform">
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
                        <input type="button" class="payment-button"  onclick="submitform()" value="ORDER">
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
                <a href="https://www.facebook.com/"><p>Facebook<p></a>
                <a href=""><p>Instagram<p></a>

            </div>
            <div class="footer-content">
                <h5>&copy;QDND</h5>
            </div>
        </div>
    </div>
</body>
</html>
<script>
function submitform(){
	var usernamelogin = '${userlogin}';
	 if(usernamelogin === "abc"){
		alert("You need login !!!");
		return false;		
	}
	var cartnull = '${cartnull}';
	if(cartnull === 'cartnull'){
		alert("Cart null . Please order at least 1 product!");
		return false;
	}
	else{
		document.myform.submit();
		alert("You order successfully! Thank you ^^")
	} 
	
}
</script>