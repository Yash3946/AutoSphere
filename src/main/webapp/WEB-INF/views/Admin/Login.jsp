<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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

<!-- Google Font -->
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">

<style>

body{
	font-family: 'Poppins', sans-serif;
	background: linear-gradient(135deg,#0f2027,#203a43,#2c5364);
	min-height:100vh;
	display:flex;
	justify-content:center;
	align-items:center;
	overflow:hidden;
}

/* Animated background circles */
body::before, body::after{
	content:"";
	position:absolute;
	width:400px;
	height:400px;
	border-radius:50%;
	background:rgba(255,255,255,0.1);
	animation: float 6s infinite ease-in-out;
}

body::before{
	top:-100px;
	left:-100px;
}

body::after{
	bottom:-100px;
	right:-100px;
	animation-delay:2s;
}

@keyframes float{
	0%,100%{transform:translateY(0);}
	50%{transform:translateY(20px);}
}

/* Card */
.login-card{
	width:420px;
	padding:35px;
	border-radius:20px;
	background:rgba(255,255,255,0.08);
	backdrop-filter:blur(15px);
	box-shadow:0 8px 32px rgba(0,0,0,0.4);
	color:white;
	animation: fadeIn 1s ease-in-out;
}

@keyframes fadeIn{
	from{opacity:0; transform:translateY(20px);}
	to{opacity:1; transform:translateY(0);}
}

.login-title{
	font-weight:600;
	text-align:center;
	margin-bottom:25px;
	letter-spacing:1px;
}

/* Input */
.form-control{
	background:rgba(255,255,255,0.1);
	border:none;
	color:white;
	border-radius:12px;
}

.form-control::placeholder{
	color:#ccc;
}

.form-control:focus{
	background:rgba(255,255,255,0.2);
	box-shadow:0 0 10px #00c6ff;
	color:white;
}

/* Input group */
.input-group-text{
	background:rgba(255,255,255,0.15);
	border:none;
	color:white;
}

/* Button */
.btn-primary{
	background:linear-gradient(135deg,#00c6ff,#0072ff);
	border:none;
	border-radius:30px;
	font-size:18px;
	transition:0.3s;
}

.btn-primary:hover{
	transform:scale(1.08);
	box-shadow:0 0 15px #00c6ff;
}

/* Links */
a{
	color:#00c6ff;
	text-decoration:none;
}

a:hover{
	text-decoration:underline;
}

/* Error */
.alert{
	border-radius:10px;
}

</style>

</head>

<body>

<div class="login-card">

<h3 class="login-title">
<i class="fa fa-user-circle"></i> Welcome Back
</h3>

<!-- Error Message -->
<c:if test="${not empty error}">
<div class="alert alert-danger text-center">${error}</div>
</c:if>

<form action="authenticate" method="post">

<!-- Email -->
<div class="mb-3">
<label>Email Address</label>
<div class="input-group">
<span class="input-group-text">
<i class="fa fa-envelope"></i>
</span>
<input type="email" name="email" class="form-control" placeholder="Enter your email" required>
</div>
</div>

<!-- Password -->
<div class="mb-3">
<label>Password</label>
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

<!-- Login -->
<div class="d-grid mt-3">
<button type="submit" class="btn btn-primary">
<i class="fa fa-sign-in-alt"></i> Login
</button>
</div>

<!-- Extra -->
<p class="text-center mt-3">
Don't have an account? 
<a href="signup">Sign Up</a>
</p>

<p class="text-center">
<a href="forgetpassword">Forgot Password?</a>
</p>

</form>

</div>

<script>
function togglePassword(){
	let pass = document.getElementById("password");
	pass.type = pass.type === "password" ? "text" : "password";
}
</script>

</body>
</html>