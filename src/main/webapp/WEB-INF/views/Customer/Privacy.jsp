<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
    <title>AutoSphere - Privacy Policy | Your Data Matters</title>
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
        .privacy-badge {
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
        <a href="privacy">Privacy</a>
      
    </div>
</div>

<!-- HERO SECTION -->
<div class="hero-section">
    <div class="container py-3">
        <div class="row align-items-center g-5">
            <div class="col-lg-8 animate-on-load">
                <span class="privacy-badge mb-3 d-inline-flex">
                    <i class="bi bi-shield-lock-fill"></i> Privacy Policy
                </span>
                <h1 class="display-5 fw-bold mt-3" style="color: #2a1a4a;">Your Privacy is Our Priority</h1>
                <p class="lead text-secondary mt-3">We collect only what's necessary to serve you better. We never sell your data. Read our full privacy commitments below.</p>
                <div class="d-flex flex-wrap gap-3 mt-4">
                    <div class="d-flex align-items-center gap-2"><i class="bi bi-patch-check-fill text-accent"></i> <span>No data selling</span></div>
                    <div class="d-flex align-items-center gap-2"><i class="bi bi-patch-check-fill text-accent"></i> <span>SSL secure payments</span></div>
                    <div class="d-flex align-items-center gap-2"><i class="bi bi-patch-check-fill text-accent"></i> <span>GDPR & IT Act compliant</span></div>
                </div>
            </div>
            <div class="col-lg-4 text-center animate-on-load delay-1">
                <img src="https://placehold.co/300x200/FAF5FF/4a148c?text=Privacy+Protected&font=montserrat" alt="privacy" class="img-fluid rounded-4 shadow-sm" style="max-width: 250px;">
            </div>
        </div>
    </div>
</div>

<!-- PRIVACY ACCORDION -->
<div class="container my-5 pt-3">
    <div class="text-center mb-5 animate-on-load">
        <span class="badge px-4 py-2 rounded-pill fw-semibold" style="background:#ede7f6; color:#4a148c;">🔒 Data Protection & Privacy</span>
        <h2 class="display-6 fw-bold mt-3">Privacy Policy</h2>
        <p class="text-secondary w-75 mx-auto">Last updated: April 2026. This policy explains how we collect, use, and protect your information.</p>
    </div>

    <div class="row justify-content-center">
        <div class="col-lg-10">
            <div class="accordion" id="privacyAccordion">
                <!-- 1. Information We Collect -->
                <div class="accordion-item animate-on-load delay-1">
                    <h2 class="accordion-header" id="priv1">
                        <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#privCollapse1" aria-expanded="true">
                            <i class="bi bi-database me-3" style="color:#ff4d6d;"></i> 1. What Information We Collect
                        </button>
                    </h2>
                    <div id="privCollapse1" class="accordion-collapse collapse show" data-bs-parent="#privacyAccordion">
                        <div class="accordion-body">
                            <p>To provide our car buying services, we may collect:</p>
                            <ul>
                                <li><strong>Personal Information:</strong> Name, email address, phone number, shipping/billing address.</li>
                                <li><strong>Financial Information:</strong> Payment details (processed via secure payment gateways; we do not store full card details).</li>
                                <li><strong>Vehicle Preferences:</strong> Search history, shortlisted cars, test drive requests.</li>
                                <li><strong>Technical Data:</strong> IP address, browser type, device information, cookies for site functionality.</li>
                            </ul>
                            <p>We collect this only when you voluntarily provide it (e.g., creating an account, booking a car, contacting support).</p>
                        </div>
                    </div>
                </div>

                <!-- 2. How We Use Your Information -->
                <div class="accordion-item animate-on-load delay-2">
                    <h2 class="accordion-header" id="priv2">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#privCollapse2">
                            <i class="bi bi-gear me-3" style="color:#ff4d6d;"></i> 2. How We Use Your Information
                        </button>
                    </h2>
                    <div id="privCollapse2" class="accordion-collapse collapse" data-bs-parent="#privacyAccordion">
                        <div class="accordion-body">
                            <p>Your data helps us to:</p>
                            <ul>
                                <li>Process your car purchase and delivery.</li>
                                <li>Communicate order status, trial reminders, and warranty updates.</li>
                                <li>Improve our website, recommendations, and customer support.</li>
                                <li>Prevent fraud and ensure security of transactions.</li>
                                <li>Send you promotional offers (only if you opt-in; you can unsubscribe anytime).</li>
                            </ul>
                            <p>We never use your data for purposes incompatible with this policy without your consent.</p>
                        </div>
                    </div>
                </div>

                <!-- 3. Data Sharing & Third Parties -->
                <div class="accordion-item animate-on-load delay-3">
                    <h2 class="accordion-header" id="priv3">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#privCollapse3">
                            <i class="bi bi-share me-3" style="color:#ff4d6d;"></i> 3. Data Sharing & Third Parties
                        </button>
                    </h2>
                    <div id="privCollapse3" class="accordion-collapse collapse" data-bs-parent="#privacyAccordion">
                        <div class="accordion-body">
                            <p>We do <strong>not sell, rent, or trade your personal information</strong> to third parties. However, we may share limited data with:</p>
                            <ul>
                                <li><strong>Service Providers:</strong> Logistics partners (for delivery), payment gateways, inspection agencies – only to fulfil your purchase.</li>
                                <li><strong>Legal Authorities:</strong> If required by law or to protect our rights.</li>
                                <li><strong>Lenders (with your consent):</strong> If you apply for a car loan through our platform.</li>
                            </ul>
                            <p>All third parties are contractually obligated to keep your data confidential and use it only for the specified service.</p>
                        </div>
                    </div>
                </div>

                <!-- 4. Cookies & Tracking -->
                <div class="accordion-item animate-on-load delay-4">
                    <h2 class="accordion-header" id="priv4">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#privCollapse4">
                            <i class="bi bi-browser-chrome me-3" style="color:#ff4d6d;"></i> 4. Cookies & Tracking Technologies
                        </button>
                    </h2>
                    <div id="privCollapse4" class="accordion-collapse collapse" data-bs-parent="#privacyAccordion">
                        <div class="accordion-body">
                            <p>We use cookies to enhance your browsing experience, remember your preferences, and analyse site traffic. You can disable cookies in your browser settings, but some features may not work properly. We do not use cookies for cross-site tracking or advertising without your explicit consent.</p>
                        </div>
                    </div>
                </div>

                <!-- 5. Data Security -->
                <div class="accordion-item animate-on-load delay-1">
                    <h2 class="accordion-header" id="priv5">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#privCollapse5">
                            <i class="bi bi-shield-shaded me-3" style="color:#ff4d6d;"></i> 5. How We Protect Your Data
                        </button>
                    </h2>
                    <div id="privCollapse5" class="accordion-collapse collapse" data-bs-parent="#privacyAccordion">
                        <div class="accordion-body">
                            <p>We implement industry-standard security measures:</p>
                            <ul>
                                <li>256-bit SSL encryption for all data transmission.</li>
                                <li>Access controls and regular security audits.</li>
                                <li>No storage of full credit/debit card numbers (PCI DSS compliant).</li>
                                <li>Employee training on data privacy.</li>
                            </ul>
                            <p>While no system is 100% secure, we continuously update our safeguards.</p>
                        </div>
                    </div>
                </div>

                <!-- 6. Your Rights -->
                <div class="accordion-item animate-on-load delay-2">
                    <h2 class="accordion-header" id="priv6">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#privCollapse6">
                            <i class="bi bi-person-check me-3" style="color:#ff4d6d;"></i> 6. Your Privacy Rights
                        </button>
                    </h2>
                    <div id="privCollapse6" class="accordion-collapse collapse" data-bs-parent="#privacyAccordion">
                        <div class="accordion-body">
                            <p>You have the right to:</p>
                            <ul>
                                <li>Access the personal data we hold about you.</li>
                                <li>Correct inaccurate or incomplete data.</li>
                                <li>Request deletion of your data (subject to legal obligations).</li>
                                <li>Opt out of marketing communications at any time.</li>
                                <li>Withdraw consent for data processing where applicable.</li>
                            </ul>
                            <p>To exercise these rights, email <a href="mailto:privacy@autosphere.com">privacy@autosphere.com</a>.</p>
                        </div>
                    </div>
                </div>

                <!-- 7. Children's Privacy -->
                <div class="accordion-item animate-on-load delay-3">
                    <h2 class="accordion-header" id="priv7">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#privCollapse7">
                            <i class="bi bi-people me-3" style="color:#ff4d6d;"></i> 7. Children's Privacy
                        </button>
                    </h2>
                    <div id="privCollapse7" class="accordion-collapse collapse" data-bs-parent="#privacyAccordion">
                        <div class="accordion-body">
                            <p>AutoSphere does not knowingly collect information from individuals under 18 years of age. Our services are intended for adults who can legally enter into contracts. If we become aware of data from a minor, we will delete it promptly.</p>
                        </div>
                    </div>
                </div>

                <!-- 8. Updates to This Policy -->
                <div class="accordion-item animate-on-load delay-4">
                    <h2 class="accordion-header" id="priv8">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#privCollapse8">
                            <i class="bi bi-clock-history me-3" style="color:#ff4d6d;"></i> 8. Changes to This Privacy Policy
                        </button>
                    </h2>
                    <div id="privCollapse8" class="accordion-collapse collapse" data-bs-parent="#privacyAccordion">
                        <div class="accordion-body">
                            <p>We may update this policy occasionally to reflect legal or operational changes. The "Last updated" date at the top will indicate the latest version. Significant changes will be notified via email or a notice on our website.</p>
                        </div>
                    </div>
                </div>

                <!-- 9. Contact Us -->
                <div class="accordion-item animate-on-load delay-1">
                    <h2 class="accordion-header" id="priv9">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#privCollapse9">
                            <i class="bi bi-envelope-paper me-3" style="color:#ff4d6d;"></i> 9. Contact Us About Privacy
                        </button>
                    </h2>
                    <div id="privCollapse9" class="accordion-collapse collapse" data-bs-parent="#privacyAccordion">
                        <div class="accordion-body">
                            <p>If you have any questions, concerns, or complaints regarding this privacy policy or our data practices, please reach out:</p>
                            <ul>
                                <li><strong>Email:</strong> <a href="mailto:privacy@autosphere.com">privacy@autosphere.com</a></li>
                                <li><strong>Phone:</strong> +91 98765 43210 (Mon-Sat, 10AM-7PM)</li>
                                <li><strong>Address:</strong> Privacy Officer, AutoSphere Tech Park, Sector 62, Noida, UP - 201301</li>
                            </ul>
                            <p>We will respond within 30 days.</p>
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
            <h5 class="mt-2 fw-semibold">Still have privacy concerns?</h5>
            <p class="mb-3 text-secondary">Our data protection team is here to help.</p>
            <button class="btn btn-primary-custom px-4" data-bs-toggle="modal" data-bs-target="#contactModal">Contact Support <i class="bi bi-arrow-right"></i></button>
        </div>
    </div>
</div>

<!-- FOOTER -->
<div class="footer">
    © 2026 AutoSphere | MCA Sem 4 Project | Fixed Price · 7-Day Trial | Privacy First
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