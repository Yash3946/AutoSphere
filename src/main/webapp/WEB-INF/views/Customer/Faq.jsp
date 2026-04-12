<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
    <title>AutoSphere - FAQs | Online Car Sales · Fixed Price Promise</title>
<%--     <jsp:include page="CustomerCSS.jsp"></jsp:include> --%>
    <!-- Bootstrap 5 + Icons + Google Fonts -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700&display=swap" rel="stylesheet">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Inter', sans-serif;
            background: linear-gradient(135deg, #f5f3ff 0%, #ede7f6 100%);
            color: #1e1b2f;
            scroll-behavior: smooth;
        }

        /* animations */
        @keyframes fadeSlideUp {
            0% { opacity: 0; transform: translateY(30px); }
            100% { opacity: 1; transform: translateY(0); }
        }

        @keyframes pulseGlow {
            0% { box-shadow: 0 0 0 0 rgba(255, 77, 109, 0.5); }
            70% { box-shadow: 0 0 0 12px rgba(255, 77, 109, 0); }
            100% { box-shadow: 0 0 0 0 rgba(255, 77, 109, 0); }
        }

        .animate-on-load {
            animation: fadeSlideUp 0.6s ease forwards;
            opacity: 0;
        }
        .delay-1 { animation-delay: 0.1s; }
        .delay-2 { animation-delay: 0.2s; }
        .delay-3 { animation-delay: 0.3s; }
        .delay-4 { animation-delay: 0.4s; }

        /* custom purple/pink theme */
        .header {
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
        .menu a {
            text-decoration: none;
            color: #4a3b5e;
            font-weight: 600;
            margin-left: 25px;
            transition: 0.2s;
        }
        .menu a:hover {
            color: #ff4d6d;
        }
        .info-banner {
            background: #4a148c;
            color: #f3e5f5;
            font-size: 0.85rem;
            text-align: center;
            padding: 8px;
            font-weight: 500;
        }
        .info-banner i {
            margin-right: 8px;
            color: #ffb3c6;
        }
        .hero-section {
            background: transparent;
            padding: 2rem 0 1rem;
        }
        .trial-badge {
            background: linear-gradient(95deg, #ff4d6d, #e91e63);
            color: white;
            border-radius: 60px;
            padding: 8px 22px;
            display: inline-flex;
            align-items: center;
            gap: 12px;
            font-weight: 700;
            animation: pulseGlow 2s infinite;
            box-shadow: 0 10px 20px -5px rgba(255, 77, 109, 0.4);
        }
        .fixed-price-card, .trial-card {
            border: none;
            border-radius: 28px;
            background: white;
            box-shadow: 0 12px 28px rgba(74, 20, 140, 0.08);
            transition: all 0.25s ease;
        }
        .fixed-price-card:hover, .trial-card:hover {
            transform: translateY(-6px);
            box-shadow: 0 24px 36px -12px rgba(74, 20, 140, 0.2);
        }
        .accordion-item {
            border: none;
            background: white;
            margin-bottom: 1rem;
            border-radius: 24px !important;
            overflow: hidden;
            box-shadow: 0 6px 14px rgba(0, 0, 0, 0.02), 0 2px 6px rgba(0, 0, 0, 0.03);
        }
        .accordion-button {
            background: white;
            font-weight: 700;
            padding: 1.2rem 1.8rem;
            font-size: 1rem;
            color: #2d2a3a;
            border-radius: 24px !important;
        }
        .accordion-button:not(.collapsed) {
            background: #faf7ff;
            color: #4a148c;
            border-bottom: 1px solid #ede7f6;
        }
        .accordion-button:focus {
            box-shadow: none;
            border-color: transparent;
        }
        .accordion-body {
            padding: 1.5rem 1.8rem;
            background: white;
            color: #4a3b5e;
            line-height: 1.55;
        }
        .brand-strip {
            background: white;
            border-radius: 60px;
            padding: 0.8rem 1.5rem;
            display: inline-flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 1.5rem;
            box-shadow: 0 8px 20px rgba(74,20,140,0.05);
        }
        .btn-primary-custom {
            background: #ff4d6d;
            border: none;
            border-radius: 40px;
            padding: 10px 28px;
            font-weight: 600;
            color: white;
            transition: 0.2s;
        }
        .btn-primary-custom:hover {
            background: #e91e63;
            transform: scale(1.02);
            box-shadow: 0 10px 20px rgba(255, 77, 109, 0.3);
        }
        h1, h2, h3, .fw-bold {
            color: #2a1a4a;
        }
        .text-accent {
            color: #ff4d6d;
        }
        .footer {
            background: #3b005a;
            color: white;
            padding: 40px;
            text-align: center;
            margin-top: 40px;
        }
        /* Modal custom styling */
        .modal-content {
            border-radius: 28px;
            border: none;
            box-shadow: 0 30px 40px rgba(0,0,0,0.2);
        }
        .modal-header {
            border-bottom: 1px solid #ede7f6;
            background: #faf7ff;
            border-radius: 28px 28px 0 0;
        }
        .contact-detail-item {
            display: flex;
            align-items: center;
            gap: 15px;
            padding: 12px 0;
            border-bottom: 1px solid #f0ebfa;
        }
        .contact-icon {
            width: 45px;
            height: 45px;
            background: #f3e5f5;
            border-radius: 30px;
            display: flex;
            align-items: center;
            justify-content: center;
            color: #ff4d6d;
            font-size: 1.3rem;
        }
        .social-icons a {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            width: 40px;
            height: 40px;
            background: #f3e5f5;
            border-radius: 50%;
            color: #4a148c;
            transition: 0.2s;
            margin-right: 12px;
        }
        .social-icons a:hover {
            background: #ff4d6d;
            color: white;
            transform: translateY(-3px);
        }
        @media (max-width: 768px) {
            .accordion-button { padding: 1rem 1.2rem; }
            .header { padding: 15px 20px; }
            .menu a { margin-left: 15px; }
        }
    </style>
</head>
<body>

<!-- INFO BANNER : WE DON'T BUY CUSTOMER CARS -->
<div class="info-banner">
    <i class="bi bi-shop"></i> AutoSphere is an <strong>online-only car seller</strong> — we sell quality used cars directly to you. We do NOT buy cars from individuals. <i class="bi bi-emoji-smile"></i>
</div>

<!-- HEADER (simple) -->
<div class="header">
    <div class="logo">
        <div class="logo-icon"><span>A</span></div>
        AutoSphere
    </div>
    <div class="menu">
        <a href="customer-dashboard">Home</a>
        <a href="faq">Faq</a>
    </div>
</div>

<!-- ========== HERO + 7-DAY TRIAL & FIXED PRICE ========== -->
<div class="hero-section">
    <div class="container py-3">
        <div class="row align-items-center g-5">
            <div class="col-lg-7 animate-on-load">
                <span class="trial-badge mb-3 d-inline-flex">
                    <i class="bi bi-calendar-check fs-5"></i> 7-DAY TRIAL · FIXED PRICE GUARANTEE
                </span>
                <h1 class="display-5 fw-bold mt-3" style="color: #2a1a4a;">Got questions?<br>We're here to help.</h1>
                <p class="lead text-secondary mt-3">Everything about our no-haggle fixed pricing, 7-day test drive trial, online buying process, and more — because we sell cars, we don't buy yours.</p>
                <div class="d-flex flex-wrap gap-3 mt-4">
                    <div class="d-flex align-items-center gap-2"><i class="bi bi-patch-check-fill text-accent"></i> <span>No hidden fees</span></div>
                    <div class="d-flex align-items-center gap-2"><i class="bi bi-patch-check-fill text-accent"></i> <span>7-day money-back trial</span></div>
                    <div class="d-flex align-items-center gap-2"><i class="bi bi-patch-check-fill text-accent"></i> <span>Fixed & fair pricing</span></div>
                    <div class="d-flex align-items-center gap-2"><i class="bi bi-building-slash text-accent"></i> <span>We don't buy from individuals</span></div>
                </div>
            </div>
            <div class="col-lg-5 text-center animate-on-load delay-1">
                <div class="brand-strip">
                    <span>Maruti Suzuki</span> <span>Hyundai</span> <span>Toyota</span> <span>VW</span>
                    <span>Skoda</span> <span>Mahindra</span> <span>Kia</span> <span>Tata</span> <span>Land Rover</span>
                </div>
                <div class="mt-4">
                    <img src="https://placehold.co/400x200/FAF5FF/4a148c?text=100%25+Online+Sales&font=montserrat" alt="online car sales" class="img-fluid rounded-4 shadow-sm" style="max-width: 280px;">
                </div>
            </div>
        </div>
    </div>
</div>

<!-- ========== 7-DAY TRIAL + FIXED PRICE CARDS ========== -->
<div class="container mt-2 mb-5">
    <div class="row g-4 justify-content-center">
        <div class="col-md-6 animate-on-load delay-1">
            <div class="fixed-price-card p-4 h-100">
                <div class="d-flex align-items-center gap-3 mb-3">
                    <div class="bg-light rounded-4 p-3" style="background: #f3e5f5 !important;"><i class="bi bi-tag fs-1 text-accent"></i></div>
                    <h3 class="h4 fw-bold mb-0">Fixed Price. Zero Negotiation.</h3>
                </div>
                <p class="text-secondary">What you see is exactly what you pay. No last-minute markup, no dealer fees. Transparent pricing backed by our market-first algorithm.</p>
                <div class="mt-2"><i class="bi bi-check2-circle text-accent me-2"></i> Starting at best market value</div>
            </div>
        </div>
        <div class="col-md-6 animate-on-load delay-2">
            <div class="trial-card p-4 h-100">
                <div class="d-flex align-items-center gap-3 mb-3">
                    <div class="bg-light rounded-4 p-3" style="background: #f3e5f5 !important;"><i class="bi bi-calendar-week fs-1 text-accent"></i></div>
                    <h3 class="h4 fw-bold mb-0">7-Day Test Drive Trial</h3>
                </div>
                <p class="text-secondary">Love it or return it. Drive your car for 7 full days. If it doesn't fit your lifestyle, we'll take it back — no questions asked. Only at AutoSphere.</p>
                <div class="mt-2"><i class="bi bi-arrow-return-left text-accent me-2"></i> Hassle-free returns, full refund</div>
            </div>
        </div>
    </div>
</div>

<!-- ========== FAQ ACCORDION SECTION ========== -->
<div class="container my-5 pt-3">
    <div class="text-center mb-5 animate-on-load">
        <span class="badge px-4 py-2 rounded-pill fw-semibold" style="background:#ede7f6; color:#4a148c;">📌 Most asked questions</span>
        <h2 class="display-6 fw-bold mt-3">Frequently Asked Questions</h2>
        <p class="text-secondary w-75 mx-auto">All about 7-day trial, fixed price, online buying & support (we don't purchase used cars from individuals).</p>
    </div>

    <div class="row justify-content-center">
        <div class="col-lg-9">
            <div class="accordion" id="faqAccordion">
                <!-- FAQ 1 -->
                <div class="accordion-item animate-on-load delay-1">
                    <h2 class="accordion-header" id="faq1">
                        <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                            <i class="bi bi-question-circle-fill me-3" style="color:#ff4d6d;"></i> How does the 7-Day Trial work exactly?
                        </button>
                    </h2>
                    <div id="collapseOne" class="accordion-collapse collapse show" data-bs-parent="#faqAccordion">
                        <div class="accordion-body">
                            After purchasing any used car from AutoSphere, you get 7 calendar days or 500 km (whichever comes first) to test the car in real conditions. If you're not 100% satisfied, we arrange free inspection and issue a full refund — no restocking fees. It’s our fixed-price promise with complete peace of mind.
                        </div>
                    </div>
                </div>
                <!-- FAQ 2 - Fixed price -->
                <div class="accordion-item animate-on-load delay-2">
                    <h2 class="accordion-header" id="faq2">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                            <i class="bi bi-calculator-fill me-3" style="color:#ff4d6d;"></i> What does “Fixed Price” mean? Can I negotiate?
                        </button>
                    </h2>
                    <div id="collapseTwo" class="accordion-collapse collapse" data-bs-parent="#faqAccordion">
                        <div class="accordion-body">
                            Our fixed-price model means every car is priced upfront based on real-time market data, vehicle condition, and demand. No haggling, no stress — just fair, transparent pricing. This saves you hours of negotiation and ensures you always pay a competitive price, not a cent more.
                        </div>
                    </div>
                </div>
                <!-- FAQ 3 - Car Loan -->
                <div class="accordion-item animate-on-load delay-3">
                    <h2 class="accordion-header" id="faq3">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                            <i class="bi bi-bank2 me-3" style="color:#ff4d6d;"></i> How do I apply for a car loan through AutoSphere?
                        </button>
                    </h2>
                    <div id="collapseThree" class="accordion-collapse collapse" data-bs-parent="#faqAccordion">
                        <div class="accordion-body">
                            We’ve partnered with 15+ leading banks and NBFCs to offer instant pre-approved loans. Simply fill out a 2-minute application on our Car Loan page, compare interest rates, and get approval within hours. You can drive away with financing up to 100% of the car’s fixed price.
                        </div>
                    </div>
                </div>
                <!-- FAQ 4 - "Do you buy cars from customers?" (important) -->
                <div class="accordion-item animate-on-load delay-4">
                    <h2 class="accordion-header" id="faq4">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                            <i class="bi bi-building-slash me-3" style="color:#ff4d6d;"></i> Does AutoSphere purchase used cars from individuals?
                        </button>
                    </h2>
                    <div id="collapseFour" class="accordion-collapse collapse" data-bs-parent="#faqAccordion">
                        <div class="accordion-body">
                            <strong class="text-accent">No, we don't.</strong> AutoSphere is a dedicated online car selling platform — we only sell high-quality, certified used cars to customers. We do NOT buy cars from individuals. This helps us maintain transparent pricing and focus entirely on giving you the best buying experience.
                        </div>
                    </div>
                </div>
                <!-- FAQ 5 - Insurance -->
                <div class="accordion-item animate-on-load delay-1">
                    <h2 class="accordion-header" id="faq5">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
                            <i class="bi bi-shield-plus me-3" style="color:#ff4d6d;"></i> Does AutoSphere provide insurance during the trial?
                        </button>
                    </h2>
                    <div id="collapseFive" class="accordion-collapse collapse" data-bs-parent="#faqAccordion">
                        <div class="accordion-body">
                            Yes! Every car delivered for the 7-day trial comes with complimentary insurance coverage (third-party + own damage) for the trial period. Once you confirm the purchase, we help you transfer or extend the policy at competitive rates.
                        </div>
                    </div>
                </div>
                <!-- FAQ 6 - Return conditions -->
                <div class="accordion-item animate-on-load delay-2">
                    <h2 class="accordion-header" id="faq6">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseSix" aria-expanded="false" aria-controls="collapseSix">
                            <i class="bi bi-arrow-repeat me-3" style="color:#ff4d6d;"></i> What are the return conditions for the 7-day trial?
                        </button>
                    </h2>
                    <div id="collapseSix" class="accordion-collapse collapse" data-bs-parent="#faqAccordion">
                        <div class="accordion-body">
                            The car must be returned without any accidental damage beyond normal wear & tear, and within the 7-day/500km limit. We handle the return pickup. The full purchase amount is refunded within 5 business days. Simple, transparent, and customer-first.
                        </div>
                    </div>
                </div>
                <!-- FAQ 7 - warranty -->
                <div class="accordion-item animate-on-load delay-3">
                    <h2 class="accordion-header" id="faq7">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseSeven" aria-expanded="false" aria-controls="collapseSeven">
                            <i class="bi bi-tools me-3" style="color:#ff4d6d;"></i> Is there any warranty after the trial period?
                        </button>
                    </h2>
                    <div id="collapseSeven" class="accordion-collapse collapse" data-bs-parent="#faqAccordion">
                        <div class="accordion-body">
                            Absolutely. After you finalize the purchase, every car comes with a minimum 1-year / 20,000 km comprehensive warranty (extendable up to 3 years). Coverage includes engine, transmission, electrical, and AC. Plus, 24/7 roadside assistance included.
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- extra support CTA with modal trigger -->
    <div class="text-center mt-5 animate-on-load delay-4">
        <div class="bg-white rounded-4 p-4 shadow-sm d-inline-block w-auto px-5" style="border: 1px solid #ede7f6;">
            <i class="bi bi-chat-dots-fill fs-2 text-accent"></i>
            <h5 class="mt-2 fw-semibold">Still have questions?</h5>
            <p class="mb-3 text-secondary">Our support team is here to help you 24/7</p>
            <!-- Button triggers modal -->
            <button type="button" class="btn btn-primary-custom px-4" data-bs-toggle="modal" data-bs-target="#contactModal">
                Contact Support <i class="bi bi-arrow-right"></i>
            </button>
        </div>
    </div>
</div>

<!-- FOOTER -->
<div class="footer">
    © 2026 AutoSphere | MCA Sem 4 Project 🚀
</div>

<!-- ========== CONTACT MODAL POPUP ========== -->
<div class="modal fade" id="contactModal" tabindex="-1" aria-labelledby="contactModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title fw-bold" id="contactModalLabel"><i class="bi bi-headset text-accent me-2"></i>Get in Touch</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <p class="text-secondary mb-4">We’re here to answer all your questions about fixed price, 7-day trial, or any other support.</p>
                
                <div class="contact-detail-item">
                    <div class="contact-icon"><i class="bi bi-telephone-fill"></i></div>
                    <div>
                        <strong>Phone / WhatsApp</strong><br>
                        <a href="tel:+919876543210" class="text-decoration-none">+91 98765 43210</a> (Mon-Sat, 10AM - 7PM)
                    </div>
                </div>

                <div class="contact-detail-item">
                    <div class="contact-icon"><i class="bi bi-envelope-fill"></i></div>
                    <div>
                        <strong>Email</strong><br>
                        <a href="mailto:support@autosphere.com" class="text-decoration-none">support@autosphere.com</a><br>
                        <span class="small">Response within 24 hours</span>
                    </div>
                </div>

                <div class="contact-detail-item">
                    <div class="contact-icon"><i class="bi bi-geo-alt-fill"></i></div>
                    <div>
                        <strong>Corporate Office</strong><br>
                        AutoSphere Tech Park, Sector 62, Noida, UP - 201301
                    </div>
                </div>

                <div class="contact-detail-item">
                    <div class="contact-icon"><i class="bi bi-clock-fill"></i></div>
                    <div>
                        <strong>Support Hours</strong><br>
                        24/7 chat & email support | Phone: 10 AM – 7 PM (IST)
                    </div>
                </div>

                <div class="mt-4 text-center">
                    <strong class="d-block mb-2">Follow us</strong>
                    <div class="social-icons">
                        <a href="#"><i class="bi bi-facebook"></i></a>
                        <a href="#"><i class="bi bi-instagram"></i></a>
                        <a href="#"><i class="bi bi-twitter-x"></i></a>
                        <a href="#"><i class="bi bi-linkedin"></i></a>
                        <a href="#"><i class="bi bi-youtube"></i></a>
                    </div>
                </div>
            </div>
            <div class="modal-footer justify-content-center">
                <button type="button" class="btn btn-outline-secondary rounded-pill px-4" data-bs-dismiss="modal">Close</button>
                <a href="mailto:support@autosphere.com" class="btn btn-primary-custom rounded-pill px-4">Send Email <i class="bi bi-send"></i></a>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
<script>
    // subtle hover effect on accordion items
    document.querySelectorAll('.accordion-item').forEach(item => {
        item.addEventListener('mouseenter', () => {
            item.style.transition = 'all 0.2s';
            item.style.boxShadow = '0 16px 28px -8px rgba(74, 20, 140, 0.12)';
        });
        item.addEventListener('mouseleave', () => {
            item.style.boxShadow = '0 6px 14px rgba(0, 0, 0, 0.02), 0 2px 6px rgba(0, 0, 0, 0.03)';
        });
    });
</script>
</body>
</html>