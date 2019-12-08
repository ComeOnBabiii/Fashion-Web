<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Dashboard</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- phai co link phia duoi nay nhe -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/crypto-js/3.1.2/rollups/aes.js"></script>
    
</head>
<body>
	<form>
	  <div class="container">
	    <label for="uname"><b>*Username</b></label>
	    <input type="text" placeholder="Enter Username" id="usernameInput" name="usernameInput">
	    <label for="psw"><b>*Password</b></label>
	    <input type="password" placeholder="Enter Password" id="passwordInput" name="passwordInput">
	    <input type="button" name="addUser" id="submit" value="Submit" onclick="loginUser()">
	  </div>
	</form>
	
	<c:url value="/static/admin/js/login.js" var="test"></c:url>
    <script src="${test}"></script>
</body>


</html>
