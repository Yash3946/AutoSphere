<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>AutoSphere Contact</title>

<style>

body {
    margin: 0;
    font-family: 'Segoe UI', sans-serif;
    background: #f4f6fb;
}

/* HERO */
.hero {
    position: relative;
    height: 340px;
    background: url('https://images.unsplash.com/photo-1556761175-b413da4baf72') center/cover;
    display: flex;
    align-items: center;
    justify-content: center;
    text-align: center;
}

.hero-overlay {
    position: absolute;
    width: 100%;
    height: 100%;
    background: rgba(106,27,154,0.55);
}

.hero-content {
    position: relative;
    z-index: 2;
    color: white;
}

.hero h1 {
    font-size: 42px;
    margin: 0;
}

.hero p {
    margin-top: 10px;
    font-size: 18px;
}

/* MAIN CONTAINER */
.main {
    position: relative;
    margin-top: -120px; /* 🔥 important overlap */
    padding: 20px;
    z-index: 5;
}

/* CONTACT BOX */
.contact-box {
    display: flex;
    flex-wrap: wrap;
    background: white;
    border-radius: 20px;
    box-shadow: 0 20px 50px rgba(0,0,0,0.2);
    overflow: hidden;
}

/* LEFT FORM */
.form-section {
    flex: 1;
    padding: 40px;
}

.form-section h2 {
    color: #6a1b9a;
}

input, textarea, select {
    width: 100%;
    padding: 14px;
    margin-top: 12px;
    border-radius: 10px;
    border: 1px solid #ddd;
    font-size: 14px;
}

/* BUTTON */
button {
    margin-top: 20px;
    padding: 14px;
    background: linear-gradient(to right, #ff416c, #ff4b2b);
    border: none;
    border-radius: 10px;
    color: white;
    width: 100%;
    font-weight: bold;
    cursor: pointer;
}

/* RIGHT SIDE */
.info-section {
    flex: 1;
    padding: 40px;
    background: #fafafa;
}

.info-section h3 {
    color: #6a1b9a;
}

/* MAP */
iframe {
    width: 100%;
    height: 260px;
    border-radius: 12px;
    margin-top: 15px;
}

/* CTA */
.cta {
    text-align: center;
    padding: 40px;
}

.cta button {
    width: auto;
    padding: 15px 40px;
    background: linear-gradient(to right, #6a1b9a, #8e24aa);
}

/* FOOTER */
.footer {
    background: #3b005a;
    color: white;
    padding: 40px;
    text-align: center;
}

</style>

</head>

<body>

<!-- HERO -->
<div class="hero">
    <div class="hero-overlay"></div>

    <div class="hero-content">
        <h1>Contact Us</h1>
        <p>We are here to help you 🚗</p>
        <p>📞 +91 701-682-0461 | 📞 +91  635-344-4700 | ✉ contact@autosphere.com</p>
    </div>
</div>

<!-- MAIN -->
<div class="main">

    <div class="contact-box">

        <!-- LEFT -->
        <div class="form-section">
            <h2>Have a Query? Ask our Team</h2>

            <form>
                <select>
                    <option>Select Type of Query</option>
                    <option>Buy Car</option>
                    <option>Sell Car</option>
                    <option>Complaint</option>
                </select>

                <textarea placeholder="Describe your query"></textarea>
                <input type="text" placeholder="Enter your name">
                <input type="text" placeholder="Mobile number">
                <input type="email" placeholder="Email">

                <button>SUBMIT</button>
            </form>
        </div>

        <!-- RIGHT -->
        <div class="info-section">
            <h3>Visit Us</h3>

            <p><b>Registered Office</b><br>
            AutoSphere Pvt Ltd<br>
            Ahmedabad, Gujarat</p>

            <p><b>Support</b><br>
           📞 +91 701-682-0461 <br>
            📞 +91  635-344-4700 <br>
            ✉ contact@autosphere.com</p>

            <iframe src="https://maps.google.com/maps?q=Ahmedabad&t=&z=13&ie=UTF8&iwloc=&output=embed"></iframe>
        </div>

    </div>

</div>

<!-- CTA -->
<div class="cta">
    <button>VIEW AUTOSPHERE LOCATIONS</button>
</div>

<!-- FOOTER -->
<div class="footer">
    © 2026 AutoSphere | All Rights Reserved
</div>

</body>
</html>