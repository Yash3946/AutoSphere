<%@ page contentType="text/html;charset=UTF-8"%>

<style>

body {
	margin: 0;
	font-family: Arial;
	background: #f4f6fb;

	/* 🔥 ADD THIS (content niche shift) */
	padding-top: 80px;
}

/* HEADER */
.header {
	display: flex;
	align-items: center;
	padding: 15px 40px;
	background: white;
	border-bottom: 1px solid #ddd;

	/* 🔥 MAIN FIX */
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	z-index: 1000;

	box-shadow: 0 2px 10px rgba(0,0,0,0.1);
}

.logo {
	font-size: 26px;
	font-weight: bold;
	color: #6a1b9a;
}

.city-select {
	padding: 8px 16px;
	border-radius: 22px;
	border: 1px solid #d1c4e9;
	background: #f3e5f5;
	margin: 0 20px;
}

.search-bar {
	display: flex;
	align-items: center;
	background: #f3e5f5;
	padding: 8px 14px;
	border-radius: 25px;
	width: 320px;
}

.search-bar input {
	border: none;
	background: transparent;
	outline: none;
	width: 100%;
}

.menu {
	margin-left: auto;
}

.menu a {
	margin-left: 18px;
	text-decoration: none;
	color: #333;
}

.menu a:hover {
	color: #6a1b9a;
}

</style>

<div class="header">

	<div class="logo">AutoSphere</div>

	<input type="text" class="city-select" placeholder="Select City">

	<div class="search-bar">
		<input type="text" placeholder="Search cars by brand or model">
	</div>

	<div class="menu">
		<a href="CustomerCarList">List Car</a>
		<a href="#brands">Car Brand</a>
		<a href="wishlist">My Cart</a>
		<a href="#">Buy Car</a>
		<a href="#">Sell Car</a>
		<a href="#">Login</a>
		<a href="CustomerSignup">Register</a>
	</div>

</div>