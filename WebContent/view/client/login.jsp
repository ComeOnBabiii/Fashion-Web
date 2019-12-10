<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Dashboard</title>
	
	<c:url value="/static/client/css/login.css" var="logincss"></c:url>
	<link href="${logincss}" rel="stylesheet" type="text/css" media="all">
	
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- phai co link phia duoi nay nhe -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/crypto-js/3.1.2/rollups/aes.js"></script>
    
</head>
<body>

	<div class="main-container">
        <form method="post">
            <div class="imgcontainer">
                <c:url value="/static/client/images/slides/1.jpg" var="imagelogin"></c:url>
                    <img src="${imagelogin}" />
                <h1>Welcome to Alesia</h1>
            </div>

            <div class="container">
                <label for="uname"><b>Username</b></label>
                <input type="text" placeholder="Enter Username" id="usernameInput" name="uname" required>

                <label for="psw"><b>Password</b></label>
                <input type="password" placeholder="Enter Password" id="passwordInput" name="psw" required>
				<div class="clearfix">
                        <button type="button" class="cancelbtn" onclick="cancel()">Cancel</button>
                        <button type="button" class="signinbtn" onclick="loginUser()">Sign In</button>
                    </div>
				<label>You do not an account? <a style="text-decoration: none;" href="/Fashion/signup">Create now!</a></label>
            </div>

            <!-- <div class="container" style="background-color:#f1f1f1">
                <button type="button" class="cancelbtn">Cancel</button>
                <span class="psw">Forgot <a href="#">password?</a></span>
            </div> -->
        </form>
    </div>
	
	<c:url value="/static/client/js/login.js" var="test"></c:url>
    <script src="${test}"></script>
</body>
</html>
	
<script>
	function cancel(){
		location.replace("http://localhost:8080/Fashion/home");
	}	
</script>
