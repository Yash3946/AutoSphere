<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>About | AutoSphere</title>

<style>
body {
    margin: 0;
    font-family: Arial;
    background: #f4f6fb;
}

/* HEADER */
.header {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 15px 40px;
    background: white;
    border-bottom: 1px solid #ddd;
}

.logo {
    font-size: 26px;
    font-weight: bold;
    color: #6a1b9a;
}

.menu a {
    margin-left: 20px;
    text-decoration: none;
    color: #333;
}

.menu a:hover {
    color: #6a1b9a;
}

/* HERO */
.hero {
    text-align: center;
    padding: 60px 20px;
    background: linear-gradient(135deg, #ede7f6, #f5f5f5);
}

.hero h1 {
    color: #4a148c;
    font-size: 40px;
}

.hero p {
    font-size: 18px;
    color: #555;
    max-width: 700px;
    margin: auto;
}

/* SECTION */
.section {
    padding: 60px 40px;
    text-align: center;
}

.section h2 {
    color: #4a148c;
    margin-bottom: 20px;
}

.section p {
    max-width: 800px;
    margin: auto;
    color: #555;
    line-height: 1.6;
}

/* CARDS */
.cards {
    display: flex;
    justify-content: center;
    flex-wrap: wrap;
    gap: 20px;
    margin-top: 30px;
}

.card {
    width: 250px;
    background: white;
    padding: 20px;
    border-radius: 15px;
    box-shadow: 0 5px 15px rgba(0,0,0,0.1);
}

.card h3 {
    color: #6a1b9a;
}

/* TEAM */
.team {
    display: flex;
    justify-content: center;
    gap: 30px;
    flex-wrap: wrap;
    margin-top: 30px;
}

.member {
    text-align: center;
}

.member img {
    width: 140px;
    height: 140px;
    border-radius: 50%;
    object-fit: cover;
    transform: scale(1.2);
    margin-bottom: 15px;  /* 🔥 space add */
}


/* hover effect (optional 🔥) */
.member img:hover {
    transform: scale(1.1);
}


/* FOOTER */
.footer {
    background: #3b005a;
    color: white;
    padding: 40px;
    text-align: center;
    margin-top: 40px;
}
</style>

</head>

<body>

<!-- HEADER -->
<div class="header">
    <div class="logo">AutoSphere</div>

    <div class="menu">
        <a href="customer-dashboard">Home</a>
        <a href="ContactPage">Contact</a>
    </div>
</div>

<!-- HERO -->
<div class="hero">
    <h1>About AutoSphere 🚗</h1>
    <p>Your trusted platform to buy and sell quality used cars with complete transparency and confidence.</p>
</div>

<!-- ABOUT -->
<div class="section">
    <h2>Who We Are</h2>
    <p>
        AutoSphere is a modern online platform designed to make buying and selling cars simple, fast, and secure. 
        We connect buyers and sellers with verified listings, ensuring quality and trust at every step.
    </p>
</div>

<!-- FEATURES -->
<div class="section">
    <h2>What We Offer</h2>

    <div class="cards">

        <div class="card">
            <h3>✔ Verified Cars</h3>
            <p>All cars go through 200+ quality checks before listing.</p>
        </div>

        <div class="card">
            <h3>✔ Easy Buying</h3>
            <p>Browse, compare, and book test drives easily.</p>
        </div>

        <div class="card">
            <h3>✔ 1 Year Warranty</h3>
            <p>Drive stress-free with our warranty coverage.</p>
        </div>

        <div class="card">
            <h3>✔ Secure Payment</h3>
            <p>Safe and reliable online transactions.</p>
        </div>

    </div>
</div>

<!-- MISSION -->
<div class="section">
    <h2>Our Mission</h2>
    <p>
        Our mission is to simplify the car buying and selling experience by providing a transparent, 
        reliable, and user-friendly platform for everyone.
    </p>
</div>

<!-- TEAM -->
<div class="section">
    <h2>Our Team</h2>

    <div class="team">

        <div class="member">
            <img src="images/vrutik.jpeg"
            >
            <p><b>Project Developer</b></p>
            <p>Patel Vrutik</p>
        </div>

        <div class="member">
            <img src="images/yash.jpeg">
            <p><b>Project Developer</b></p>
            <p>Patel Yash</p>
        </div>

    </div>
</div>

<!-- FOOTER -->
<div class="footer">
    ©️ 2026 AutoSphere | MCA Sem 4 Project 🚀
</div>

</body>
</html>