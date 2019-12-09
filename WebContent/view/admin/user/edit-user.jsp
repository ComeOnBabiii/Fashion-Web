<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>Dashboard</title>
            <c:url value="/static/admin/css/admin.css" var="bootstrap"></c:url>
            <link href="${bootstrap}" rel="stylesheet" type="text/css" media="all">

            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
            <!-- phai co link phia duoi nay nhe -->
            <script src="https://cdnjs.cloudflare.com/ajax/libs/crypto-js/3.1.2/rollups/aes.js"></script>
        </head>

        <body>
            <div class="container">
                <div class="navbar">
                    <a href="#home">Admin</a>
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
                    <a href="/Fashion/admin/user/list">User</a>
                    <a href="/Fashion/admin/category/list">Category</a>
                    <a href="/Fashion/admin/product/list">Product</a>
                    <a href="/Fashion/admin/cart/list">Cart</a>
                </div>

                <div class="add-content">

                    <br>
                    <h2 align="center">Sua User</h2>
                    <div class="add-table">
                        <div class="hr">
                            <hr>
                        </div>
                        <form method="post" id="ha">
                            <input id="idInput" type="hidden" name="id" value="">
                            <label for="exampleInputName">Name</label>
                            <input id="nameInput" type="text" name="name" value="" required="">
                            <div class="hr">
                                <hr>
                            </div>
                            <label for="exampleInputUsername">Username</label>
                            <input id="usernameInput" type="text" name="username" value="" required="">
                            <div class="hr">
                                <hr>
                            </div>
                            <label for="exampleInputPassword">Password</label>
                            <input id="passwordInput" type="password" name="password" class="lock" value="">
                            <div class="hr">
                                <hr>
                            </div>
                            <label for="exampleInputRoll">Role</label>
                            <input id="role_admin" name="role" type="radio" value="admin">ADMIN
                            <input id="role_user" name="role" type="radio" value="user">USER
                            <div class="hr">
                                <hr>
                            </div>
                            <label for="exampleInputAvatar">Avatar</label>
                            <input id="avtInput" type="file" name="avatar"> </br>
                            <img id="imgOutput" src="" alt="avt" height="100" width="100">
                            <input type="button" name="addUser" id="submit" value="Submit" onclick="updateUser()"> </br>

                        </form>
                    </div>
                </div>
            </div>
            <c:url value="/static/admin/js/user.js" var="test"></c:url>
            <script src="${test}"></script>
        </body>

        </html>