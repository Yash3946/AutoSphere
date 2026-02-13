<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Login</title>

<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Font Awesome -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" rel="stylesheet">

<style>

body{
	background: linear-gradient(135deg,#667eea,#764ba2);
	min-height:100vh;
}

.login-card{
	max-width:420px;
	margin:80px auto;
	padding:30px;
	border-radius:20px;
	backdrop-filter:blur(10px);
	box-shadow:0 8px 25px rgba(0,0,0,0.3);
	background:white;
}

.form-control{
	border-radius:12px;
	padding:10px;
	transition:0.3s;
}

.form-control:focus{
	box-shadow:0 0 10px #667eea;
	border-color:#667eea;
}

.btn-primary{
	border-radius:30px;
	font-size:18px;
	padding:10px;
	transition:0.3s;
}

.btn-primary:hover{
	transform:scale(1.05);
}

.input-group-text{
	border-radius:12px 0 0 12px;
}

.login-title{
	font-weight:bold;
	color:#333;
	letter-spacing:1px;
}

</style>

</head>

<body>

<div class="container">

<div class="login-card">

<h3 class="text-center login-title mb-4">
<i class="fa fa-sign-in-alt"></i> User Login
</h3>

<!-- Error Message -->
<c:if test="${not empty error}">
<div class="alert alert-danger text-center">${error}</div>
</c:if>

<form action="login" method="post">

<!-- Email -->
<div class="mb-3">
<label class="form-label">Email Address</label>
<div class="input-group">
<span class="input-group-text">
<i class="fa fa-envelope"></i>
</span>
<input type="email" name="email" class="form-control" placeholder="Enter your email" required>
</div>
</div>

<!-- Password -->
<div class="mb-3">
<label class="form-label">Password</label>
<div class="input-group">
<span class="input-group-text">
<i class="fa fa-lock"></i>
</span>
<input type="password" name="password" id="password" class="form-control" placeholder="Enter password" required>

<span class="input-group-text" onclick="togglePassword()" style="cursor:pointer;">
<i class="fa fa-eye"></i>
</span>
</div>
</div>

<!-- Login Button -->
<div class="d-grid">
<button type="submit" class="btn btn-primary">
<i class="fa fa-sign-in-alt"></i> Login
</button>
</div>

<!-- Signup -->
<p class="text-center mt-3">
Don't have an account? 
<a href="signup" class="fw-bold">Sign Up</a>
</p>

<!-- Forget Password -->
<p class="text-center">
<a href="forgetpassword">Forget Password?</a>
</p>

</form>

</div>
</div>

<!-- Password Toggle Script -->
<script>
function togglePassword(){
	let pass = document.getElementById("password");
	pass.type = pass.type === "password" ? "text" : "password";
}
</script>

</body>
</html>
