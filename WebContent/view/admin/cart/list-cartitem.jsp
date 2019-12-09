<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>Cart Items List</title>
            <c:url value="/static/admin/css/admin.css" var="bootstrap"></c:url>
            <link href="${bootstrap}" rel="stylesheet" type="text/css" media="all">

            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        </head>


        <body>
            <div class="container">
                <div class="navbar">
                    <a href="#home">Admin</a>
                    <div class="dropdown">
                        <button class="dropbtn">
                    Xin chào ${user.name} ! <i class="fa fa-caret-down"></i>
                </button>
                        <div class="dropdown-content">
                            <a href="#">User Profile</a> <a href="#">Setting</a>
                            <hr />
                            <a href="/Fashion/admin/logout">Log out</a>
                        </div>
                    </div>
                </div>

                <div class="sidenav">
                    <a href="/Fashion/admin/user/list">User</a>
                    <a href="/Fashion/admin/category/list">Category</a>
                    <a href="/Fashion/admin/product/list">Product</a>
                    <a href="/Fashion/admin/cart/list">Cart</a>
                </div>

                <div class="content">
                    <div class="table-container">
                        <div class="title">
                            <h3>List Cart Items</h3>
                        </div>
                        <div class="table">
                            <table id="table">
                                <thead>
                                    <tr>
                                        <th>No.</th>
                                        <th>CartID</th>
                                        <th>Product</th>
                                        <th>Quantity</th>
                                        <th>Unit Price</th>
                                    </tr>
                                </thead>
                                <tbody id="tbody">
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>

            <c:url value="/static/admin/js/cartitem.js" var="test"></c:url>
            <script src="${test}"></script>

        </body>

        </html>