<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>AutoSphere Careers</title>

<style>

body {
    margin: 0;
    font-family: 'Segoe UI', sans-serif;
    background: #f4f6fb;
}

/* HERO */
.hero {
    background: linear-gradient(135deg, #6a1b9a, #8e24aa);
    color: white;
    padding: 80px 20px;
    text-align: center;
}

.hero h1 {
    font-size: 42px;
}

.hero p {
    font-size: 18px;
    margin-top: 10px;
}

.hero button {
    margin-top: 20px;
    padding: 12px 25px;
    border: none;
    border-radius: 8px;
    background: #ff4081;
    color: white;
    font-weight: bold;
    cursor: pointer;
}

/* CONTACT */
.contact {
    text-align: center;
    padding: 30px;
    background: white;
}

.contact h3 {
    color: #6a1b9a;
}

/* TESTIMONIALS */
.testimonials {
    padding: 50px 20px;
    text-align: center;
}

.testimonials h2 {
    color: #4a148c;
    margin-bottom: 30px;
}

.testimonial-cards {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    gap: 25px;
}

.card {
    width: 300px;
    background: white;
    padding: 20px;
    border-radius: 12px;
    box-shadow: 0 5px 20px rgba(0,0,0,0.1);
    text-align: left;
    transition: 0.3s;
}

.card:hover {
    transform: translateY(-8px);
}

.card p {
    font-size: 14px;
    color: #555;
}

.card h4 {
    margin-top: 15px;
    color: #6a1b9a;
}

/* WHY JOIN */
.why {
    background: linear-gradient(135deg, #ede7f6, #f3e5f5);
    padding: 60px 20px;
    text-align: center;
}

.why h2 {
    color: #4a148c;
}

.why p {
    max-width: 800px;
    margin: auto;
    margin-top: 20px;
    color: #555;
    line-height: 1.6;
}

/* CTA */
.cta {
    text-align: center;
    padding: 60px;
}

.cta button {
    padding: 14px 30px;
    background: linear-gradient(to right, #ff7a18, #ffb347);
    border: none;
    border-radius: 10px;
    color: white;
    font-size: 16px;
    cursor: pointer;
    margin: 10px;
}

</style>

</head>
<body>

<!-- HERO -->
<div class="hero">
    <h1>Put Your Career in Next Gear 🚗</h1>
    <p>Join AutoSphere & build the future of car buying</p>
    <button>See Job Openings</button>
</div>

<!-- CONTACT -->
<div class="contact">
    <h3>📍 Ahmedabad | 📞 701-682-0461 | 📞 635-344-4700</h3>
</div>

<!-- TESTIMONIALS -->
<div class="testimonials">
    <h2>What Our Team Says 💬</h2>

    <div class="testimonial-cards">

        <div class="card">
            <p>Technology plays a vital role in building transparency for customers. Working here is amazing!</p>
            <h4>Ashiv - Software Engineer</h4>
            <small>Favourite Car: Kia Sonet</small>
        </div>

        <div class="card">
            <p>The culture here is innovative and growth-focused. Every day is exciting!</p>
            <h4>Sahil - Sales Team Leader</h4>
            <small>Favourite Car: Hyundai Elantra</small>
        </div>

        <div class="card">
            <p>Great workplace with motivated people working towards a common vision.</p>
            <h4>Naveen - Supply Head</h4>
            <small>Favourite Car: Honda City</small>
        </div>

        <div class="card">
            <p>We focus on building teams that genuinely solve customer problems.</p>
            <h4>Priti - HR Manager</h4>
            <small>Favourite Car: Honda Jazz</small>
        </div>

        <div class="card">
            <p>My work directly impacts customers and improves their experience.</p>
            <h4>Mayank - Operation Analyst</h4>
            <small>Favourite Car: Scorpio</small>
        </div>

        <div class="card">
            <p>Creative freedom and innovation define our design culture.</p>
            <h4>Arindam - Creative Head</h4>
            <small>Favourite Car: Honda Civic</small>
        </div>

    </div>
</div>

<!-- WHY JOIN -->
<div class="why">
    <h2>Why Join AutoSphere?</h2>
    <p>
        At AutoSphere, we are transforming the used car industry with transparency,
        trust, and innovation. Our team is driven by passion for cars and customer satisfaction.
        Join us not just to grow your career, but to create real impact.
    </p>
</div>

<!-- CTA -->
<div class="cta">
    <button>See Job Openings</button>
    <button>Apply Now</button>
    <p>Email us at: careers@autosphere.com</p>
</div>

</body>
</html>