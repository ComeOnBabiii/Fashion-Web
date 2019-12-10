<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>Cart List</title>
            <c:url value="/static/admin/css/admin.css" var="bootstrap"></c:url>
            <link href="${bootstrap}" rel="stylesheet" type="text/css" media="all">

            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        </head>


        <body>
            <div class="container">
                <div class="navbar">
	                <div class="admin">
	                <a href="#home"><i class="fa fa-wrench"></i> ALESIA</a>
	                </div>
                    
                    <div class="dropdown">
                        <button class="dropbtn">Xin chào ${user.name} !
                    <i class="fa fa-caret-down"></i>
                </button>
                        <div class="dropdown-content">
                            <a href="#">User Profile</a>
                            <a href="#">Setting</a>
                            <hr />
                            <a href="/Fashion/admin/logout">Log out</a>
                        </div>
                    </div>
                </div>

                <div class="sidenav">
                    <a href="/Fashion/admin/user/list"><div><p class="nav-text">User <i class="ikon fa fa-user"></i></p></div></a>                  
                    <a href="/Fashion/admin/category/list"><div><p class="nav-text">Category <i class="ikon fa fa-list-alt" aria-hidden="true"></i></p></div></a> 

                    <a href="/Fashion/admin/product/list"><div><p class="nav-text">Product <i class="ikon fa fa-product-hunt"></i></p></div></a>  
                    <a href="/Fashion/admin/cart/list"><div><p class="nav-text">Cart <i class="ikon fa fa-shopping-cart"></i></p></div></a> 
                </div>

                <div class="content">
                    <div class="table-container">
                        <div class="title">
                            <h3>List Cart</h3>
                        </div>
                        <div class="table">
                            <table id="table">
                                <thead>
                                    <tr>
                                        <th>No.</th>
                                        <th>Customer's Name</th>
                                        <th>Customer's Address</th>
                                        <th>Customer's Phone</th>
                                        <th>Date of purchase</th>
                                        <th>Detail</th>
                                    </tr>
                                </thead>
                                <tbody id="tbody">
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>

            <c:url value="/static/admin/js/cart.js" var="test"></c:url>
            <script src="${test}"></script>

        </body>

        </html>