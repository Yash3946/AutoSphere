<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" rel="stylesheet">

<style>

body{
	font-family: 'Poppins', sans-serif;
	background: linear-gradient(135deg,#0f2027,#203a43,#2c5364);
	min-height:100vh;
	display:flex;
	justify-content:center;
	align-items:center;
}

/* Floating circles */
body::before, body::after{
	content:"";
	position:absolute;
	width:400px;
	height:400px;
	border-radius:50%;
	background:rgba(255,255,255,0.1);
	animation: float 6s infinite ease-in-out;
}
body::before{ top:-100px; left:-100px; }
body::after{ bottom:-100px; right:-100px; animation-delay:2s; }

@keyframes float{
	0%,100%{transform:translateY(0);}
	50%{transform:translateY(20px);}
}

/* Card */
.register-card{
	width:500px;
	max-height:90vh;
	overflow-y:auto;
	padding:30px;
	border-radius:20px;
	background:rgba(255,255,255,0.08);
	backdrop-filter:blur(15px);
	box-shadow:0 8px 32px rgba(0,0,0,0.4);
	color:white;
}

/* Title */
.title{
	text-align:center;
	font-weight:600;
	margin-bottom:20px;
}

/* Inputs */
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
}

.btn-primary:hover{
	transform:scale(1.05);
	box-shadow:0 0 15px #00c6ff;
}

/* Scroll bar */
.register-card::-webkit-scrollbar{
	width:6px;
}
.register-card::-webkit-scrollbar-thumb{
	background:#00c6ff;
	border-radius:10px;
}

</style>
</head>

<body>

<div class="register-card">

<h3 class="title">
<i class="fa fa-user-plus"></i> Create Account
</h3>

<form action="/register" method="post" enctype="multipart/form-data">

<!-- Name -->
<div class="row">
	<div class="col-md-6 mb-3">
		<input type="text" name="firstName" class="form-control" placeholder="First Name" required>
	</div>
	<div class="col-md-6 mb-3">
		<input type="text" name="lastName" class="form-control" placeholder="Last Name" required>
	</div>
</div>

<!-- Email -->
<div class="mb-3">
	<div class="input-group">
		<span class="input-group-text"><i class="fa fa-envelope"></i></span>
		<input type="email" name="email" class="form-control" placeholder="Email" required>
	</div>
</div>

<!-- Password -->
<div class="mb-3">
	<div class="input-group">
		<span class="input-group-text"><i class="fa fa-lock"></i></span>
		<input type="password" name="password" id="password" class="form-control" placeholder="Password" required>
		<span class="input-group-text" onclick="togglePassword()" style="cursor:pointer;">
			<i class="fa fa-eye"></i>
		</span>
	</div>
</div>

<!-- Gender -->
<div class="mb-3 text-white">
<label>Gender:</label><br>
<input type="radio" name="gender" value="MALE"> Male
<input type="radio" name="gender" value="FEMALE"> Female
<input type="radio" name="gender" value="OTHER"> Other
</div>

<!-- Birth + Contact -->
<div class="row">
	<div class="col-md-6 mb-3">
		<input type="number" name="birthYear" class="form-control" placeholder="Birth Year" required>
	</div>
	<div class="col-md-6 mb-3">
		<input type="text" name="contactNum" class="form-control" placeholder="Contact Number" required>
	</div>
</div>

<!-- Qualification -->
<div class="mb-3">
	<input type="text" name="qualification" class="form-control" placeholder="Qualification" required>
</div>

<!-- Location -->
<div class="row">
	<div class="col-md-4 mb-3">
		<input type="text" name="city" class="form-control" placeholder="City" required>
	</div>
	<div class="col-md-4 mb-3">
		<input type="text" name="state" class="form-control" placeholder="State" required>
	</div>
	<div class="col-md-4 mb-3">
		<input type="text" name="country" value="India" class="form-control" placeholder="Country">
	</div>
</div>

<!-- File -->
<div class="mb-3">
	<input type="file" name="profilePic" class="form-control">
</div>

<!-- Button -->
<div class="d-grid mt-3">
	<button type="submit" class="btn btn-primary">
		<i class="fa fa-user-plus"></i> Register
	</button>
</div>

<p class="text-center mt-3">
Already have an account? <a href="customerLogin">Login</a>
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