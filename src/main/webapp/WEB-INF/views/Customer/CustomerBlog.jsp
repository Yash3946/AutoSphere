<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>Explore Cars - AutoSphere</title>

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
    padding: 60px;
    text-align: center;
}

.hero h1 {
    font-size: 40px;
}

.hero p {
    margin-top: 10px;
    font-size: 18px;
}

/* GRID */
.container {
    padding: 40px;
}

.grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
    gap: 25px;
}

/* CARD */
.card {
    background: white;
    border-radius: 15px;
    overflow: hidden;
    box-shadow: 0 8px 25px rgba(0,0,0,0.1);
    transition: 0.3s;
}

.card:hover {
    transform: translateY(-10px) scale(1.02);
}

/* IMAGE */
.card img {
    width: 100%;
    height: 200px;
    object-fit: cover;
}

/* CONTENT */
.card-body {
    padding: 15px;
}

.card-body h3 {
    margin: 0;
    color: #6a1b9a;
}

.card-body p {
    font-size: 14px;
    color: #555;
    margin-top: 8px;
}

/* BUTTON */
.card-body button {
    margin-top: 10px;
    padding: 10px;
    border: none;
    background: linear-gradient(to right, #ff416c, #ff4b2b);
    color: white;
    border-radius: 8px;
    cursor: pointer;
}

/* FOOTER */
.footer {
    margin-top: 40px;
    background: #3b005a;
    color: white;
    padding: 30px;
    text-align: center;
}

</style>

</head>

<body>

<!-- HERO -->
<div class="hero">
    <h1>Explore Cars 🚗</h1>
    <p>Find your dream car with AutoSphere</p>
</div>

<!-- GRID -->
<div class="container">

<div class="grid">

    <!-- CARD 1 -->
    <div class="card">
        <img src="https://images.unsplash.com/photo-1691367512028-3e4b4be8d7a5?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fGluZGFpbiUyMGNhcnN8ZW58MHx8MHx8fDA%3D">
        <div class="card-body">
            <h3>Vw POLO</h3>
            <p>HathBack with premium features and great mileage.</p>
            <button>View Details</button>
        </div>
    </div>

    <!-- CARD 2 -->
    <div class="card">
        <img src="https://images.unsplash.com/photo-1627745640239-df413704fb4f?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTA4fHxpbmRhaW4lMjBjYXJzfGVufDB8fDB8fHww">
        <div class="card-body">
            <h3>Skoda Rapid</h3>
            <p>Luxury sedan with smooth performance and comfort.</p>
            <button>View Details</button>
        </div>
    </div>

    <!-- CARD 3 -->
    <div class="card">
        <img src="https://images.unsplash.com/photo-1662230094768-7b59f618afa7?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDJ8fGluZGFpbiUyMGNhcnN8ZW58MHx8MHx8fDA%3D">
        <div class="card-body">
            <h3>JEEP Compass</h3>
            <p>Stylish SUV with advanced technology and safety.</p>
            <button>View Details</button>
        </div>
    </div>

    <!-- CARD 4 -->
    <div class="card">
        <img src="https://images.unsplash.com/photo-1628573042918-a91e94c2c906?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTA5fHxpbmRhaW4lMjBjYXJzfGVufDB8fDB8fHww">
        <div class="card-body">
            <h3>TATA Harrier</h3>
            <p>Powerful SUV built for rough roads and performance.</p>
            <button>View Details</button>
        </div>
    </div>

    <!-- CARD 5 -->
    <div class="card">
        <img src="https://images.unsplash.com/photo-1725862415301-4b3dc17bd8e8?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fGluZGFpbiUyMGNhcnN8ZW58MHx8MHx8fDA%3D">
        <div class="card-body">
            <h3>Mahindra Thar</h3>
            <p>Off-road king with rugged design and adventure feel.</p>
           
            <button>View Details</button>
        </div>
    </div>

    <!-- CARD 6 -->
    <div class="card">
        <img src="https://images.unsplash.com/photo-1619767886645-0ae16581bf6b?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8Zm9ydHVuZXJ8ZW58MHx8MHx8fDA%3D">
        <div class="card-body">
           
            <h3>TOYOTA Fortuner</h3>
            <p>Premium SUV with unmatched road presence.</p>
            <button>View Details</button>
        </div>
    </div>

</div>

</div>

<!-- FOOTER -->
<div class="footer">
    © 2026 AutoSphere | Explore Cars
</div>

</body>
</html>