<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
    <title>AutoSphere - Terms & Conditions | Fixed Price · 7-Day Trial</title>
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

        @keyframes fadeSlideUp {
            0% { opacity: 0; transform: translateY(30px); }
            100% { opacity: 1; transform: translateY(0); }
        }

        .animate-on-load {
            animation: fadeSlideUp 0.6s ease forwards;
            opacity: 0;
        }
        .delay-1 { animation-delay: 0.1s; }
        .delay-2 { animation-delay: 0.2s; }
        .delay-3 { animation-delay: 0.3s; }
        .delay-4 { animation-delay: 0.4s; }

        /* Header */
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
            font-size: 24px;
            font-weight: 700;
            color: #4a148c;
            text-decoration: none;
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
            box-shadow: 0 10px 20px -5px rgba(255, 77, 109, 0.4);
        }
        .accordion-item {
            border: none;
            background: white;
            margin-bottom: 1rem;
            border-radius: 24px !important;
            overflow: hidden;
            box-shadow: 0 6px 14px rgba(0, 0, 0, 0.02);
        }
        .accordion-button {
            background: white;
            font-weight: 700;
            padding: 1.2rem 1.8rem;
            font-size: 1rem;
            color: #2d2a3a;
        }
        .accordion-button:not(.collapsed) {
            background: #faf7ff;
            color: #4a148c;
        }
        .accordion-body {
            padding: 1.5rem 1.8rem;
            color: #4a3b5e;
            line-height: 1.55;
        }
        .text-accent {
            color: #ff4d6d;
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
        }
        .footer {
            background: #3b005a;
            color: white;
            padding: 40px;
            text-align: center;
            margin-top: 40px;
        }
        /* Modal styling */
        .modal-content {
            border-radius: 28px;
            border: none;
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
            margin-right: 12px;
            transition: 0.2s;
        }
        .social-icons a:hover {
            background: #ff4d6d;
            color: white;
        }
        @media (max-width: 768px) {
            .accordion-button { padding: 1rem 1.2rem; }
            .header { padding: 15px 20px; }
            .menu a { margin-left: 15px; }
        }
    </style>
</head>
<body>

<!-- INFO BANNER -->
<div class="info-banner">
    <i class="bi bi-shop"></i> AutoSphere is an <strong>online-only car seller</strong> — we sell quality used cars directly to you. We do NOT buy cars from individuals.
</div>

<!-- HEADER -->
<div class="header">
    <div class="logo">AutoSphere</div>
    <div class="menu">
        <a href="customer-dashboard">Home</a>      
        <a href="terms">Terms</a>
     
    </div>
</div>

<!-- HERO SECTION -->
<div class="hero-section">
    <div class="container py-3">
        <div class="row align-items-center g-5">
            <div class="col-lg-8 animate-on-load">
                <span class="trial-badge mb-3 d-inline-flex">
                    <i class="bi bi-file-text-fill"></i> Terms & Conditions
                </span>
                <h1 class="display-5 fw-bold mt-3" style="color: #2a1a4a;">Our Commitment to You</h1>
                <p class="lead text-secondary mt-3">Clear, fair, and transparent terms for buying your next car with AutoSphere’s fixed price and 7-day trial.</p>
                <div class="d-flex flex-wrap gap-3 mt-4">
                    <div class="d-flex align-items-center gap-2"><i class="bi bi-patch-check-fill text-accent"></i> <span>Fixed Price Promise</span></div>
                    <div class="d-flex align-items-center gap-2"><i class="bi bi-patch-check-fill text-accent"></i> <span>7-Day Trial Terms</span></div>
                    <div class="d-flex align-items-center gap-2"><i class="bi bi-patch-check-fill text-accent"></i> <span>Warranty & Support</span></div>
                </div>
            </div>
            <div class="col-lg-4 text-center animate-on-load delay-1">
                <img src="https://placehold.co/300x200/FAF5FF/4a148c?text=Terms+of+Service&font=montserrat" alt="terms" class="img-fluid rounded-4 shadow-sm" style="max-width: 250px;">
            </div>
        </div>
    </div>
</div>

<!-- TERMS ACCORDION -->
<div class="container my-5 pt-3">
    <div class="text-center mb-5 animate-on-load">
        <span class="badge px-4 py-2 rounded-pill fw-semibold" style="background:#ede7f6; color:#4a148c;">📜 Legal & Policies</span>
        <h2 class="display-6 fw-bold mt-3">Terms and Conditions</h2>
        <p class="text-secondary w-75 mx-auto">Please read these terms carefully before using AutoSphere services.</p>
    </div>

    <div class="row justify-content-center">
        <div class="col-lg-10">
            <div class="accordion" id="termsAccordion">
                <!-- 1. Fixed Price Terms -->
                <div class="accordion-item animate-on-load delay-1">
                    <h2 class="accordion-header" id="term1">
                        <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true">
                            <i class="bi bi-tag-fill me-3" style="color:#ff4d6d;"></i> 1. Fixed Price Promise
                        </button>
                    </h2>
                    <div id="collapseOne" class="accordion-collapse collapse show" data-bs-parent="#termsAccordion">
                        <div class="accordion-body">
                            <p>All cars listed on AutoSphere have a <strong>non-negotiable fixed price</strong>. The price displayed includes:</p>
                            <ul>
                                <li>Vehicle base cost</li>
                                <li>RTO registration and road tax</li>
                                <li>1-year comprehensive insurance (if applicable)</li>
                                <li>Handling and logistics charges</li>
                                <li>1-year/20,000km warranty</li>
                            </ul>
                            <p>No hidden fees, no last-minute markups. The price is valid for 7 days from listing. AutoSphere reserves the right to update prices due to market changes, but any price lock for a booked car is honored.</p>
                        </div>
                    </div>
                </div>

                <!-- 2. 7-Day Trial -->
                <div class="accordion-item animate-on-load delay-2">
                    <h2 class="accordion-header" id="term2">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo">
                            <i class="bi bi-calendar-check me-3" style="color:#ff4d6d;"></i> 2. 7-Day Trial & Return Policy
                        </button>
                    </h2>
                    <div id="collapseTwo" class="accordion-collapse collapse" data-bs-parent="#termsAccordion">
                        <div class="accordion-body">
                            <p>After delivery, you have <strong>7 calendar days or 500 km</strong> (whichever comes first) to test the car. If you are not satisfied:</p>
                            <ul>
                                <li>Contact support within the trial period to initiate a return.</li>
                                <li>We arrange free inspection and pickup of the vehicle.</li>
                                <li>Refund of full purchase price (excluding any excess usage or damage beyond normal wear & tear).</li>
                                <li>Refund processed within 5-7 business days.</li>
                            </ul>
                            <p>Return is not applicable for accidental damage, unauthorized modifications, or odometer tampering.</p>
                        </div>
                    </div>
                </div>

                <!-- 3. Warranty Terms -->
                <div class="accordion-item animate-on-load delay-3">
                    <h2 class="accordion-header" id="term3">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree">
                            <i class="bi bi-shield-check me-3" style="color:#ff4d6d;"></i> 3. Warranty Coverage
                        </button>
                    </h2>
                    <div id="collapseThree" class="accordion-collapse collapse" data-bs-parent="#termsAccordion">
                        <div class="accordion-body">
                            <p>Every car comes with a <strong>1-year / 20,000 km comprehensive warranty</strong> (from delivery date) covering:</p>
                            <ul>
                                <li>Engine, transmission, electrical systems</li>
                                <li>Air conditioning and cooling system</li>
                                <li>24/7 roadside assistance</li>
                            </ul>
                            <p>Warranty does not cover wear-and-tear items (tyres, brake pads, clutch, bulbs, etc.) or damage caused by misuse/accident. Extended warranty up to 3 years available at additional cost.</p>
                        </div>
                    </div>
                </div>

                <!-- 4. Payment & Cancellation -->
                <div class="accordion-item animate-on-load delay-4">
                    <h2 class="accordion-header" id="term4">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFour">
                            <i class="bi bi-credit-card me-3" style="color:#ff4d6d;"></i> 4. Payment & Cancellation
                        </button>
                    </h2>
                    <div id="collapseFour" class="accordion-collapse collapse" data-bs-parent="#termsAccordion">
                        <div class="accordion-body">
                            <p><strong>Booking Amount:</strong> ₹5,000 (adjustable against final price).</p>
                            <p><strong>Full Payment:</strong> Balance due before delivery. Options: online transfer, card, or finance.</p>
                            <p><strong>Cancellation:</strong></p>
                            <ul>
                                <li>Before delivery: Full refund of booking amount.</li>
                                <li>After delivery but within 7-day trial: Full refund as per trial terms.</li>
                                <li>After trial period: No refund unless warranty claim.</li>
                            </ul>
                        </div>
                    </div>
                </div>

                <!-- 5. Car Loan Terms -->
                <div class="accordion-item animate-on-load delay-1">
                    <h2 class="accordion-header" id="term5">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFive">
                            <i class="bi bi-bank me-3" style="color:#ff4d6d;"></i> 5. Financing & Car Loan
                        </button>
                    </h2>
                    <div id="collapseFive" class="accordion-collapse collapse" data-bs-parent="#termsAccordion">
                        <div class="accordion-body">
                            <p>AutoSphere partners with RBI-registered banks/NBFCs to offer loans up to 100% of the fixed price. Loan approval is subject to credit assessment by the lender. Interest rates and terms as per lender’s policy. AutoSphere acts only as a facilitator; we are not a lending entity.</p>
                        </div>
                    </div>
                </div>

                <!-- 6. Privacy & Data -->
                <div class="accordion-item animate-on-load delay-2">
                    <h2 class="accordion-header" id="term6">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseSix">
                            <i class="bi bi-lock-fill me-3" style="color:#ff4d6d;"></i> 6. Privacy & Data Usage
                        </button>
                    </h2>
                    <div id="collapseSix" class="accordion-collapse collapse" data-bs-parent="#termsAccordion">
                        <div class="accordion-body">
                            <p>We collect personal information (name, contact, address, payment details) only to process your purchase. We do not sell your data to third parties. For full details, refer to our <a href="privacy">Privacy Policy</a>.</p>
                        </div>
                    </div>
                </div>

                <!-- 7. Limitation of Liability -->
                <div class="accordion-item animate-on-load delay-3">
                    <h2 class="accordion-header" id="term7">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseSeven">
                            <i class="bi bi-exclamation-triangle-fill me-3" style="color:#ff4d6d;"></i> 7. Limitation of Liability
                        </button>
                    </h2>
                    <div id="collapseSeven" class="accordion-collapse collapse" data-bs-parent="#termsAccordion">
                        <div class="accordion-body">
                            <p>To the maximum extent permitted by law, AutoSphere shall not be liable for any indirect, incidental, or consequential damages arising from the use of our service. Our total liability is limited to the purchase price of the vehicle.</p>
                        </div>
                    </div>
                </div>

                <!-- 8. Governing Law -->
                <div class="accordion-item animate-on-load delay-4">
                    <h2 class="accordion-header" id="term8">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseEight">
                            <i class="bi bi-gavel me-3" style="color:#ff4d6d;"></i> 8. Governing Law & Disputes
                        </button>
                    </h2>
                    <div id="collapseEight" class="accordion-collapse collapse" data-bs-parent="#termsAccordion">
                        <div class="accordion-body">
                            <p>These terms are governed by the laws of India. Any disputes shall be subject to the exclusive jurisdiction of courts in Noida, Uttar Pradesh.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Contact CTA -->
    <div class="text-center mt-5 animate-on-load delay-4">
        <div class="bg-white rounded-4 p-4 shadow-sm d-inline-block w-auto px-5" style="border: 1px solid #ede7f6;">
            <i class="bi bi-chat-dots-fill fs-2 text-accent"></i>
            <h5 class="mt-2 fw-semibold">Have questions about our terms?</h5>
            <p class="mb-3 text-secondary">Our legal and support team is ready to help.</p>
            <button class="btn btn-primary-custom px-4" data-bs-toggle="modal" data-bs-target="#contactModal">Contact Support <i class="bi bi-arrow-right"></i></button>
        </div>
    </div>
</div>

<!-- FOOTER -->
<div class="footer">
    © 2026 AutoSphere | MCA Sem 4 Project | Fixed Price · 7-Day Trial
</div>

<!-- ========== CONTACT MODAL (same as other pages) ========== -->
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
    // Hover effect on accordion items
    document.querySelectorAll('.accordion-item').forEach(item => {
        item.addEventListener('mouseenter', () => {
            item.style.boxShadow = '0 16px 28px -8px rgba(74, 20, 140, 0.12)';
        });
        item.addEventListener('mouseleave', () => {
            item.style.boxShadow = '0 6px 14px rgba(0, 0, 0, 0.02)';
        });
    });
</script>
</body>
</html>