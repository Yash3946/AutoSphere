<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes">
    <title>AutoSphere | Fixed Price Promise</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', 'Arial', sans-serif;
            background: linear-gradient(135deg, #f5f3ff 0%, #ede7f6 100%);
            min-height: 100vh;
        }

        /* header navigation - AutoSphere theme */
        .top-bar {
            background: white;
            padding: 15px 40px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            flex-wrap: wrap;
            gap: 15px;
            box-shadow: 0 2px 12px rgba(0,0,0,0.05);
            border-bottom: 1px solid #e0d6f0;
        }
        .logo {
            display: flex;
            align-items: center;
            gap: 12px;
            font-size: 24px;
            font-weight: 700;
            color: #4a148c;
            text-decoration: none;
        }
        .logo-icon {
            width: 38px;
            height: 38px;
            background: #ff4d6d;
            display: flex;
            align-items: center;
            justify-content: center;
            transform: rotate(45deg);
            border-radius: 10px;
        }
        .logo-icon span {
            color: white;
            font-size: 18px;
            font-weight: 700;
            transform: rotate(-45deg);
        }
        .back-link {
            text-decoration: none;
            color: #6a1b9a;
            font-weight: 600;
            background: #f3e5f5;
            padding: 8px 20px;
            border-radius: 40px;
            transition: 0.3s;
        }
        .back-link:hover {
            background: #e1bee7;
            color: #4a148c;
        }

        /* main container */
        .fixedprice-container {
            max-width: 1300px;
            margin: 40px auto;
            padding: 20px 30px;
        }

        /* hero section */
        .hero-fixed {
            text-align: center;
            margin-bottom: 50px;
        }
        .hero-fixed h1 {
            font-size: 2.5rem;
            color: #4a148c;
            margin-bottom: 15px;
            font-weight: 800;
        }
        .hero-fixed p {
            font-size: 1.1rem;
            color: #4a3b5e;
            max-width: 700px;
            margin: 0 auto;
        }
        .price-badge {
            display: inline-block;
            background: #ff4d6d;
            color: white;
            font-size: 1.3rem;
            font-weight: bold;
            padding: 10px 32px;
            border-radius: 60px;
            margin-top: 25px;
            box-shadow: 0 8px 18px rgba(255, 77, 109, 0.3);
        }

        /* feature highlight */
        .feature-highlight {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 40px;
            margin: 60px 0;
            background: white;
            border-radius: 48px;
            padding: 40px;
            box-shadow: 0 15px 30px rgba(0,0,0,0.05);
        }
        .highlight-item {
            text-align: center;
            flex: 1;
            min-width: 180px;
        }
        .highlight-icon {
            width: 80px;
            height: 80px;
            background: #f3e5f5;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 15px;
        }
        .highlight-icon svg {
            width: 45px;
            height: 45px;
        }
        .highlight-item h3 {
            font-size: 1.3rem;
            color: #4a148c;
            margin-bottom: 8px;
        }
        .highlight-item p {
            color: #6a5a7a;
        }

        /* benefits grid */
        .benefits-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 30px;
            margin: 50px 0;
        }
        .benefit-card {
            background: white;
            border-radius: 32px;
            padding: 30px 25px;
            transition: 0.3s;
            box-shadow: 0 15px 30px rgba(0,0,0,0.05);
            border: 1px solid rgba(106, 27, 154, 0.08);
        }
        .benefit-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 25px 35px rgba(106, 27, 154, 0.12);
        }
        .benefit-icon {
            width: 70px;
            height: 70px;
            background: #f3e5f5;
            border-radius: 24px;
            display: flex;
            align-items: center;
            justify-content: center;
            margin-bottom: 20px;
        }
        .benefit-icon svg {
            width: 40px;
            height: 40px;
        }
        .benefit-card h3 {
            font-size: 1.4rem;
            color: #4a148c;
            margin-bottom: 12px;
        }
        .benefit-card p {
            color: #5a4a6e;
            line-height: 1.5;
        }

        /* price comparison table */
        .comparison-section {
            background: white;
            border-radius: 48px;
            padding: 40px;
            margin: 40px 0;
            box-shadow: 0 10px 25px rgba(0,0,0,0.05);
        }
        .comparison-section h2 {
            font-size: 1.8rem;
            color: #4a148c;
            margin-bottom: 25px;
            text-align: center;
        }
        .comparison-table {
            width: 100%;
            border-collapse: collapse;
            overflow-x: auto;
            display: block;
        }
        .comparison-table th, .comparison-table td {
            padding: 15px 20px;
            text-align: left;
            border-bottom: 1px solid #ede7f6;
        }
        .comparison-table th {
            background: #f3e5f5;
            color: #4a148c;
            font-weight: 700;
            font-size: 1rem;
        }
        .comparison-table td {
            color: #4a3b5e;
        }
        .comparison-table .check {
            color: #2e7d32;
            font-weight: bold;
        }
        .comparison-table .cross {
            color: #c62828;
        }
        .price-highlight {
            color: #ff4d6d;
            font-weight: 800;
            font-size: 1.1rem;
        }

        /* how it works */
        .process-section {
            background: #f3e5f5;
            border-radius: 48px;
            padding: 40px;
            margin: 40px 0;
        }
        .process-section h2 {
            font-size: 1.8rem;
            color: #4a148c;
            margin-bottom: 30px;
            text-align: center;
        }
        .steps {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 30px;
        }
        .step {
            flex: 1;
            min-width: 180px;
            text-align: center;
        }
        .step-circle {
            width: 60px;
            height: 60px;
            background: #6a1b9a;
            color: white;
            font-size: 1.6rem;
            font-weight: bold;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 15px;
        }
        .step h4 {
            font-size: 1.1rem;
            color: #4a148c;
            margin-bottom: 8px;
        }
        .step p {
            color: #6a5a7a;
            font-size: 0.9rem;
        }

        /* faq / terms */
        .terms-box {
            background: white;
            border-radius: 28px;
            padding: 30px;
            margin-top: 30px;
            border-left: 6px solid #ff4d6d;
            box-shadow: 0 5px 15px rgba(0,0,0,0.03);
        }
        .terms-box h3 {
            color: #4a148c;
            margin-bottom: 15px;
        }
        .terms-box ul {
            list-style: none;
            padding-left: 0;
        }
        .terms-box li {
            padding: 8px 0;
            display: flex;
            align-items: center;
            gap: 12px;
            color: #4a3b5e;
        }

        /* cta */
        .cta-fixed {
            text-align: center;
            margin-top: 50px;
            padding: 45px 20px;
            background: linear-gradient(120deg, #4a148c, #6a1b9a);
            border-radius: 48px;
            color: white;
        }
        .cta-fixed h3 {
            font-size: 1.8rem;
            margin-bottom: 15px;
        }
        .cta-btn {
            background: #ff4d6d;
            border: none;
            padding: 14px 40px;
            font-size: 1.1rem;
            font-weight: bold;
            border-radius: 50px;
            color: white;
            cursor: pointer;
            margin-top: 20px;
            transition: 0.3s;
            box-shadow: 0 5px 15px rgba(0,0,0,0.2);
        }
        .cta-btn:hover {
            background: #e91e63;
            transform: scale(1.03);
        }

        @media (max-width: 760px) {
            .fixedprice-container {
                padding: 15px;
            }
            .hero-fixed h1 {
                font-size: 1.8rem;
            }
            .comparison-table th, .comparison-table td {
                padding: 10px;
                font-size: 0.85rem;
            }
            .feature-highlight {
                flex-direction: column;
                gap: 25px;
            }
        }
        footer {
            text-align: center;
            padding: 30px;
            color: #7b6b8e;
            font-size: 0.85rem;
        }
    </style>
</head>
<body>

<!-- header matching AutoSphere theme -->
<div class="top-bar">
    <a href="customer-dashboard" class="logo">
        <div class="logo-icon"><span>A</span></div>
        AutoSphere
    </a>
    <a href="javascript:history.back()" class="back-link">← Back to Dashboard</a>
</div>

<div class="fixedprice-container">
    <!-- Hero Section -->
    <div class="hero-fixed">
        <h1>💰 Fixed Price Promise</h1>
        <p>No negotiation stress. No hidden surprises. What you see is exactly what you pay — transparent, fair, and final.</p>
        <div class="price-badge">
            🔒 100% TRANSPARENT PRICING 🔒
        </div>
    </div>

    <!-- Key Features Highlight -->
    <div class="feature-highlight">
        <div class="highlight-item">
            <div class="highlight-icon">
                <svg viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M12 2V4M12 20V22M4 12H2M6.5 6.5L5 5M17.5 6.5L19 5M6.5 17.5L5 19M17.5 17.5L19 19M22 12H20" stroke="#6A1B9A" stroke-width="1.5" stroke-linecap="round"/>
                    <circle cx="12" cy="12" r="4" fill="#FF4D6D" stroke="#6A1B9A" stroke-width="1.5"/>
                </svg>
            </div>
            <h3>No Hidden Fees</h3>
            <p>What you see is what you pay</p>
        </div>
        <div class="highlight-item">
            <div class="highlight-icon">
                <svg viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M3 6H21V18H3V6Z" stroke="#6A1B9A" stroke-width="1.5" fill="none"/>
                    <path d="M7 10H17" stroke="#6A1B9A" stroke-width="1.5" stroke-linecap="round"/>
                    <path d="M7 14H13" stroke="#6A1B9A" stroke-width="1.5" stroke-linecap="round"/>
                    <circle cx="17" cy="14" r="2" fill="#FF4D6D"/>
                </svg>
            </div>
            <h3>No Negotiation</h3>
            <p>Fair price for everyone</p>
        </div>
        <div class="highlight-item">
            <div class="highlight-icon">
                <svg viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M12 2L15 8H22L16 12L19 18L12 14L5 18L8 12L2 8H9L12 2Z" fill="#FF4D6D" stroke="#6A1B9A" stroke-width="1"/>
                </svg>
            </div>
            <h3>Best Value</h3>
            <p>Certified + competitively priced</p>
        </div>
    </div>

    <!-- Benefits Grid -->
    <div class="benefits-grid">
        <div class="benefit-card">
            <div class="benefit-icon">
                <svg viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M20 12V8H4V12M20 12L12 16L4 12M20 12V16L12 20L4 16V12" stroke="#6A1B9A" stroke-width="1.5" fill="none"/>
                    <circle cx="12" cy="12" r="2" fill="#FF4D6D"/>
                </svg>
            </div>
            <h3>Same Price for All</h3>
            <p>No bargaining, no discrimination. Every customer gets the same best price.</p>
        </div>
        <div class="benefit-card">
            <div class="benefit-icon">
                <svg viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <rect x="4" y="8" width="16" height="12" rx="2" stroke="#6A1B9A" stroke-width="1.5" fill="none"/>
                    <path d="M8 6V8M16 6V8" stroke="#6A1B9A" stroke-width="1.5"/>
                    <path d="M12 12V16M10 14H14" stroke="#6A1B9A" stroke-width="1.5" stroke-linecap="round"/>
                </svg>
            </div>
            <h3>Price Lock Guarantee</h3>
            <p>Once listed, price stays valid for 7 days. No sudden increases.</p>
        </div>
        <div class="benefit-card">
            <div class="benefit-icon">
                <svg viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M9 12L11 14L15 10M21 12C21 16.9706 16.9706 21 12 21C7.02944 21 3 16.9706 3 12C3 7.02944 7.02944 3 12 3C16.9706 3 21 7.02944 21 12Z" stroke="#6A1B9A" stroke-width="1.5" stroke-linecap="round"/>
                </svg>
            </div>
            <h3>Price Match Promise</h3>
            <p>Find a better price for same car? We'll match it.</p>
        </div>
        <div class="benefit-card">
            <div class="benefit-icon">
                <svg viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M12 2V4M12 20V22M4 12H2M22 12H20M19.07 4.93L17.66 6.34M6.34 17.66L4.93 19.07M17.66 17.66L19.07 19.07M4.93 4.93L6.34 6.34" stroke="#6A1B9A" stroke-width="1.5" stroke-linecap="round"/>
                    <circle cx="12" cy="12" r="3" fill="#FF4D6D"/>
                </svg>
            </div>
            <h3>Transparent Breakdown</h3>
            <p>Full price breakup: Car cost, taxes, RTO, insurance — nothing hidden.</p>
        </div>
    </div>

    <!-- Price Comparison: AutoSphere vs Market -->
    <div class="comparison-section">
        <h2>📊 AutoSphere Fixed Price vs Traditional Market</h2>
        <div style="overflow-x: auto;">
            <table class="comparison-table">
                <thead>
                    <tr><th>Parameter</th><th>AutoSphere Fixed Price</th><th>Traditional Dealers / Online</th></tr>
                </thead>
                <tbody>
                    <tr><td>Price Transparency</td><td class="check">✅ Full breakdown visible</td><td class="cross">❌ Hidden charges possible</td></tr>
                    <tr><td>Negotiation Needed</td><td class="check">✅ No negotiation required</td><td class="cross">❌ Heavy bargaining expected</td></tr>
                    <tr><td>Price Lock Period</td><td class="check">✅ 7 days locked price</td><td class="cross">❌ Price changes frequently</td></tr>
                    <tr><td>Inspection Report</td><td class="check">✅ Free 200+ point report</td><td class="cross">❌ Usually paid or not provided</td></tr>
                    <tr><td>Warranty Included</td><td class="check">✅ 1 year warranty</td><td class="cross">❌ Limited or zero warranty</td></tr>
                    <tr><td>Hidden RTO/Registration</td><td class="check">✅ Included in displayed price</td><td class="cross">❌ Added later</td></tr>
                    <tr><td>Typical Savings</td><td class="price-highlight">💰 Up to 15% less</td><td>Market price + markup</td></tr>
                </tbody>
            </table>
        </div>
    </div>

    <!-- How Fixed Price Works -->
    <div class="process-section">
        <h2>📋 How Our Fixed Price Works</h2>
        <div class="steps">
            <div class="step">
                <div class="step-circle">1</div>
                <h4>Browse Cars</h4>
                <p>See exact price displayed on each car card.</p>
            </div>
            <div class="step">
                <div class="step-circle">2</div>
                <h4>Check Breakdown</h4>
                <p>Click "View Details" for complete price breakup.</p>
            </div>
            <div class="step">
                <div class="step-circle">3</div>
                <h4>Book Online</h4>
                <p>Pay exactly the amount shown — no surprises.</p>
            </div>
            <div class="step">
                <div class="step-circle">4</div>
                <h4>Drive Home</h4>
                <p>Get delivery with all documents at same price.</p>
            </div>
        </div>
    </div>

    <!-- Price Breakup Example -->
    <div class="terms-box">
        <h3>💰 Sample Price Breakup (Example: Maruti Suzuki Swift)</h3>
        <ul>
            <li>✔️ Car Base Price: ₹5,50,000</li>
            <li>✔️ RTO Registration + Tax: ₹45,000</li>
            <li>✔️ Insurance (1 Year Comprehensive): ₹18,000</li>
            <li>✔️ Handling & Logistics: ₹5,000</li>
            <li>✔️ 200+ Quality Check Fee: ₹0 (FREE)</li>
            <li>✔️ 1 Year Warranty: ₹0 (FREE)</li>
            <li style="border-top: 1px solid #e0d6f0; margin-top: 8px; padding-top: 8px;"><strong>💰 Final Fixed Price: ₹6,18,000</strong> <span style="color: #ff4d6d;">(No extra charges)</span></li>
        </ul>
    </div>

    <!-- Call to Action -->
    <div class="cta-fixed">
        <h3>🚗 No Haggling. Just Fair Price.</h3>
        <p>Experience the most transparent car buying journey with AutoSphere Fixed Price.</p>
        <button class="cta-btn" onclick="alert('Browse our inventory with fixed prices! All cars show final price. No negotiation needed.')">Browse Fixed Price Cars →</button>
    </div>
    <footer>
        © 2026 AutoSphere | MCA Sem 4 Project | Fixed Price Promise — Fair & Transparent
    </footer>
</div>

</body>
</html>