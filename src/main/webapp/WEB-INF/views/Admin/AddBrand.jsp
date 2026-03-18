<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html;charset=UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>AutoSphere | Buy & Sell Cars</title>

<style>

html,body{
margin:0;
font-family:Arial;
background:#f4f6fb;
}

/* HEADER */
.header{
position:fixed;
top:0;
left:0;
width:100%;
display:flex;
align-items:center;
padding:12px 30px;
background:white;
z-index:1000;
box-shadow:0 2px 8px rgba(0,0,0,0.08);
}

/* LOGO */
.logo{
display:flex;
align-items:center;
gap:12px;
font-size:26px;
font-weight:bold;
color:#6a1b9a;
text-decoration:none;
}

.logo-icon{
width:38px;
height:38px;
background:#ff4d6d;
display:flex;
align-items:center;
justify-content:center;
transform:rotate(45deg);
border-radius:10px;
}

.logo-icon span{
color:white;
transform:rotate(-45deg);
font-weight:bold;
}

/* SEARCH */
.city-select{
margin-left:20px;
padding:8px 14px;
border-radius:20px;
border:1px solid #ddd;
background:#f3e5f5;
width:130px;
}

.search-bar{
margin-left:10px;
background:#f3e5f5;
padding:8px 12px;
border-radius:20px;
width:260px;
display:flex;
}

.search-bar input{
border:none;
background:transparent;
outline:none;
width:100%;
}

/* MENU */
.menu{
margin-left:auto;
display:flex;
align-items:center;
gap:18px;
}

.menu a{
text-decoration:none;
color:#333;
font-size:14px;
white-space:nowrap;
}

/* LOGIN BUTTON */
.login-btn{
border:1px solid #6a1b9a;
padding:6px 14px;
border-radius:6px;
}

/* REGISTER BUTTON */
.register-btn{
background:#6a1b9a;
color:white !important;
padding:6px 14px;
border-radius:6px;
}

/* HERO */
.hero{
margin-top:90px;
padding:40px;
text-align:center;
background:linear-gradient(135deg,#ede7f6,#f5f5f5);
}

.hero h1{
color:#4a148c;
}

/* SLIDER */
.slider-container{
position:relative;
overflow:hidden;
margin-top:30px;
}

.slider{
display:flex;
transition:transform 0.6s ease;
}

.slider img{
width:280px;
height:180px;
margin:0 10px;
border-radius:12px;
object-fit:cover;
}

/* ARROWS */
.arrow{
position:absolute;
top:50%;
transform:translateY(-50%);
background:#6a1b9a;
color:white;
border:none;
border-radius:50%;
padding:10px;
cursor:pointer;
}

.left{ left:10px; }
.right{ right:10px; }

/* BUTTON */
.sell-btn{
margin-top:20px;
padding:12px 25px;
background:#e91e63;
color:white;
border:none;
border-radius:6px;
}

/* BENEFITS */
.section{
padding:50px;
text-align:center;
}

.cards{
display:flex;
justify-content:center;
gap:20px;
flex-wrap:wrap;
margin-top:30px;
}

.card{
width:220px;
padding:15px;
background:#fff;
border-radius:10px;
box-shadow:0 4px 10px rgba(0,0,0,0.08);
}

.card img{
width:100%;
height:120px;
object-fit:cover;
border-radius:8px;
}

/* FOOTER */
.footer{
background:#3b005a;
color:white;
padding:50px;
text-align:center;
margin-top:40px;
}

</style>
</head>

<body>

<!-- HEADER -->
<div class="header">

<a href="customer-dashboard" class="logo">
<div class="logo-icon"><span>A</span></div>
AutoSphere
</a>

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

<a href="login" class="login-btn">Login</a>
<a href="signup" class="register-btn">Register</a>
</div>

</div>

<!-- HERO -->
<div class="hero">

<h1>Cars you’ll love to buy</h1>
<p>Verified used cars with full inspection</p>

<div class="slider-container">

<button class="arrow left" onclick="slideLeft()">❮</button>

<div class="slider" id="slider">
<c:forEach var="img" items="${image}">
<img src="${img.imageURL}">
</c:forEach>
</div>

<button class="arrow right" onclick="slideRight()">❯</button>

</div>

<button class="sell-btn">Sell My Car</button>

</div>

<!-- BENEFITS -->
<div class="section">

<h2>AutoSphere Assured Benefits</h2>

<div class="cards">

<div class="card">
<img src="https://tse2.mm.bing.net/th/id/OIP.Dt_cmV3c7iAiI9hH3a_-oQHaHa">
<p>✔ 200+ Quality Checks</p>
</div>

<div class="card">
<img src="https://tse2.mm.bing.net/th/id/OIP.dLwwkw6ARI0Jm1Y6LMvgXwHaFL">
<p>✔ 7 Days Trial</p>
</div>

<div class="card">
<img src="https://tse4.mm.bing.net/th/id/OIP.2-oHKJ06_H3EnJgGQQKTiQHaE8">
<p>✔ 1 Year Warranty</p>
</div>

<div class="card">
<img src="https://tse3.mm.bing.net/th/id/OIP.ApW2_1cwNgxi_flgt4ZQngHaEl">
<p>✔ Fixed Price</p>
</div>

</div>

</div>

<!-- FOOTER -->
<div class="footer">
© 2026 AutoSphere
</div>

<script>

let scroll = 0;
const slider = document.getElementById("slider");
const imageWidth = 300;

function slideLeft(){
scroll += imageWidth;
if(scroll > 0){
scroll = -(imageWidth * (slider.children.length - 1));
}
slider.style.transform = "translateX(" + scroll + "px)";
}

function slideRight(){
scroll -= imageWidth;
if(Math.abs(scroll) >= imageWidth * slider.children.length){
scroll = 0;
}
slider.style.transform = "translateX(" + scroll + "px)";
}

setInterval(slideRight,3000);

</script>

</body>
</html>