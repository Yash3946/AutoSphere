<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes">
    <title>AutoSphere | 7 Days Free Trial</title>
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

        /* header navigation - matching AutoSphere theme */
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
        .trial-container {
            max-width: 1300px;
            margin: 40px auto;
            padding: 20px 30px;
        }

        /* hero section - AutoSphere purple theme */
        .hero-trial {
            text-align: center;
            margin-bottom: 50px;
        }
        .hero-trial h1 {
            font-size: 2.5rem;
            color: #4a148c;
            margin-bottom: 15px;
            font-weight: 800;
        }
        .hero-trial p {
            font-size: 1.1rem;
            color: #4a3b5e;
            max-width: 700px;
            margin: 0 auto;
        }
        .trial-badge {
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

        /* 7 days timeline */
        .days-timeline {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(180px, 1fr));
            gap: 20px;
            margin: 50px 0;
        }
        .day-card {
            background: white;
            border-radius: 28px;
            padding: 25px 15px;
            text-align: center;
            transition: all 0.3s;
            box-shadow: 0 12px 24px rgba(0,0,0,0.06);
            border: 1px solid rgba(106, 27, 154, 0.1);
        }
        .day-card:hover {
            transform: translateY(-8px);
            box-shadow: 0 20px 30px rgba(106, 27, 154, 0.15);
            border-color: #b39ddb;
        }
        .day-number {
            width: 55px;
            height: 55px;
            background: #6a1b9a;
            color: white;
            font-size: 1.8rem;
            font-weight: bold;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 15px;
        }
        .day-card h3 {
            font-size: 1.3rem;
            color: #4a148c;
            margin-bottom: 10px;
        }
        .day-card p {
            font-size: 0.9rem;
            color: #6a5a7a;
        }

        /* benefits grid */
        .benefits-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 30px;
            margin: 60px 0;
        }
        .benefit-card {
            background: white;
            border-radius: 32px;
            padding: 30px 25px;
            text-align: center;
            transition: 0.3s;
            box-shadow: 0 15px 30px rgba(0,0,0,0.05);
            border: 1px solid rgba(106, 27, 154, 0.08);
        }
        .benefit-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 25px 35px rgba(106, 27, 154, 0.12);
        }
        .benefit-icon {
            width: 80px;
            height: 80px;
            background: #f3e5f5;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 20px;
        }
        .benefit-icon svg {
            width: 45px;
            height: 45px;
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

        /* process section */
        .process-section {
            background: white;
            border-radius: 48px;
            padding: 40px;
            margin: 40px 0;
            box-shadow: 0 10px 25px rgba(0,0,0,0.05);
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

        /* terms box */
        .terms-box {
            background: #f3e5f5;
            border-radius: 28px;
            padding: 30px;
            margin-top: 30px;
            border-left: 6px solid #ff4d6d;
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
        .cta-trial {
            text-align: center;
            margin-top: 50px;
            padding: 45px 20px;
            background: linear-gradient(120deg, #4a148c, #6a1b9a);
            border-radius: 48px;
            color: white;
        }
        .cta-trial h3 {
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
            .trial-container {
                padding: 15px;
            }
            .hero-trial h1 {
                font-size: 1.8rem;
            }
            .days-timeline {
                grid-template-columns: repeat(2, 1fr);
            }
            .process-section {
                padding: 25px;
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

<div class="trial-container">
    <!-- Hero Section -->
    <div class="hero-trial">
        <h1>🚗 7 Days Free Trial</h1>
        <p>Drive with confidence — test your dream car for 7 full days. If you don't love it, return it. No questions asked.</p>
        <div class="trial-badge">
            ⭐ 7 DAYS | 100% MONEY BACK GUARANTEE ⭐
        </div>
    </div>

    <!-- 7 Days Experience Timeline -->
    <div class="days-timeline">
        <div class="day-card">
            <div class="day-number">1</div>
            <h3>Day 1 - Delivery</h3>
            <p>Car delivered to your doorstep with full tank & documents.</p>
        </div>
        <div class="day-card">
            <div class="day-number">2</div>
            <h3>Day 2 - City Drive</h3>
            <p>Test mileage, comfort, and daily commute experience.</p>
        </div>
        <div class="day-card">
            <div class="day-number">3</div>
            <h3>Day 3 - Highway Test</h3>
            <p>Take it on open roads, check stability & performance.</p>
        </div>
        <div class="day-card">
            <div class="day-number">4</div>
            <h3>Day 4 - Features Check</h3>
            <p>Explore infotainment, AC, lights, and all electronics.</p>
        </div>
        <div class="day-card">
            <div class="day-number">5</div>
            <h3>Day 5 - Family Review</h3>
            <p>Get feedback from family on space & comfort.</p>
        </div>
        <div class="day-card">
            <div class="day-number">6</div>
            <h3>Day 6 - Mechanic Check</h3>
            <p>Get it inspected by your trusted mechanic (on us).</p>
        </div>
        <div class="day-card">
            <div class="day-number">7</div>
            <h3>Day 7 - Decision Day</h3>
            <p>Keep it or return it — we honor your choice.</p>
        </div>
    </div>

    <!-- Key Benefits of Trial -->
    <div class="benefits-grid">
        <div class="benefit-card">
            <div class="benefit-icon">
                <svg viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M20 12V8H4V12M20 12L12 16L4 12M20 12V16L12 20L4 16V12" stroke="#6A1B9A" stroke-width="1.5" fill="none"/>
                    <circle cx="12" cy="12" r="2" fill="#FF4D6D"/>
                </svg>
            </div>
            <h3>Zero Down Payment</h3>
            <p>No upfront payment for the trial period. Only pay if you decide to keep the car.</p>
        </div>
        <div class="benefit-card">
            <div class="benefit-icon">
                <svg viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M12 2L15 8H22L16 12L19 18L12 14L5 18L8 12L2 8H9L12 2Z" fill="#FF4D6D" stroke="#6A1B9A" stroke-width="1"/>
                </svg>
            </div>
            <h3>Free Insurance Cover</h3>
            <p>7-day comprehensive insurance included at no extra cost during trial.</p>
        </div>
        <div class="benefit-card">
            <div class="benefit-icon">
                <svg viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <rect x="4" y="6" width="16" height="12" rx="2" stroke="#6A1B9A" stroke-width="1.5" fill="none"/>
                    <path d="M8 6V4H16V6" stroke="#6A1B9A" stroke-width="1.5"/>
                    <circle cx="12" cy="12" r="1.5" fill="#FF4D6D"/>
                </svg>
            </div>
            <h3>Free Pickup & Return</h3>
            <p>If you're not satisfied, we'll pick up the car for free. Hassle-free return.</p>
        </div>
        <div class="benefit-card">
            <div class="benefit-icon">
                <svg viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M12 8V12L15 15" stroke="#6A1B9A" stroke-width="1.5"/>
                    <circle cx="12" cy="12" r="9" stroke="#6A1B9A" stroke-width="1.5" fill="none"/>
                    <path d="M12 22C17.5228 22 22 17.5228 22 12C22 6.47715 17.5228 2 12 2" stroke="#6A1B9A" stroke-width="1.5"/>
                </svg>
            </div>
            <h3>Unlimited Kilometers</h3>
            <p>No mileage limits during the 7-day trial. Drive as much as you want.</p>
        </div>
    </div>

    <!-- How Trial Process Works -->
    <div class="process-section">
        <h2>📋 How 7-Day Trial Works</h2>
        <div class="steps">
            <div class="step">
                <div class="step-circle">1</div>
                <h4>Choose a Car</h4>
                <p>Select any certified car from our inventory.</p>
            </div>
            <div class="step">
                <div class="step-circle">2</div>
                <h4>Book Trial</h4>
                <p>Schedule delivery at your doorstep.</p>
            </div>
            <div class="step">
                <div class="step-circle">3</div>
                <h4>Drive 7 Days</h4>
                <p>Test the car in real-life conditions.</p>
            </div>
            <div class="step">
                <div class="step-circle">4</div>
                <h4>Keep or Return</h4>
                <p>Love it? Keep it. Not satisfied? Return for free.</p>
            </div>
        </div>
    </div>

    <!-- Terms & Conditions -->
    <div class="terms-box">
        <h3>✅ Trial Terms You Should Know</h3>
        <ul>
            <li>✔️ 7-day trial starts from the time of delivery.</li>
            <li>✔️ Car must be returned in same condition (normal wear accepted).</li>
            <li>✔️ Free return within 7 days — no hidden charges.</li>
            <li>✔️ If you decide to keep the car, the booking amount is adjusted in final price.</li>
            <li>✔️ Full refund if returned within trial period (except for any intentional damage).</li>
            <li>✔️ 24/7 roadside assistance available during trial period.</li>
        </ul>
    </div>

    <!-- Call to Action -->
    <div class="cta-trial">
        <h3>🚀 Ready for a Risk-Free Test Drive?</h3>
        <p>Book your 7-day trial now and experience your next car before you buy.</p>
        <button class="cta-btn" onclick="alert('📞 Contact our trial specialist at 1800-AUTOSPHERE or visit nearest hub. Limited slots available!')">Start Your 7-Day Trial →</button>
    </div>
    <footer>
        © 2026 AutoSphere | MCA Sem 4 Project | 7 Days Free Trial — Drive First, Decide Later
    </footer>
</div>

</body>
</html>