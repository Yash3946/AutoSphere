<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title>View Offer</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet"
href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">

<style>
.big-card {
    max-width: 850px;   /* 🔥 BIG SIZE */
    width: 100%;
    margin: auto;
    border-radius: 16px;
    box-shadow: 0 15px 40px rgba(0,0,0,0.2);
}

/* spacing improve */
.big-card .card-body {
    padding: 25px 30px;
}

.big-card .card-body p {
    margin-bottom: 14px;
    font-size: 16px;
}

/* header */
.big-card .card-header {
    padding: 15px 25px;
    font-size: 20px;
    font-weight: 600;
}

/* footer */
.big-card .card-footer {
    padding: 15px 25px;
}

/* buttons spacing */
.action-btns a {
    margin-left: 8px;
}
</style>

<jsp:include page="AdminCSS.jsp"/>

</head>

<body>

<jsp:include page="AdminHeader.jsp"/>
<jsp:include page="AdminSidebar.jsp"/>

<div style="margin-left:260px; margin-top:90px;" 
     class="container d-flex justify-content-center">

    <div class="card big-card">

        <div class="card-header bg-dark text-white">
            Car Offer Details
        </div>

        <div class="card-body">

            <p><b>Offer ID:</b> ${offer.offerId}</p>
            <p><b>Listing ID:</b> ${offer.listingId}</p>
            <p><b>Buyer ID:</b> ${offer.userId}</p>
            <p><b>Price:</b> ₹ ${offer.offeredPrice}</p>

            <p><b>Status:</b>
                <span class="badge 
                    ${offer.offerStatus == 'REJECTED' ? 'bg-danger' : 
                      offer.offerStatus == 'ACCEPTED' ? 'bg-success' : 'bg-warning'}">
                    ${offer.offerStatus}
                </span>
            </p>

            <p><b>Date:</b> ${offer.createdAt}</p>

        </div>

        <div class="card-footer d-flex justify-content-end action-btns">

            <!-- BACK -->
            <a href="listCarOffer" class="btn btn-secondary">
                <i class="bi bi-arrow-left"></i> Back
            </a>

            <!-- EDIT -->
            <a href="editOffer?offerId=${offer.offerId}" 
               class="btn btn-warning">
                <i class="bi bi-pencil-square"></i> Edit
            </a>

            <!-- DELETE -->
            <a href="deleteOffer?offerId=${offer.offerId}" 
               class="btn btn-danger"
               onclick="return confirm('Are you sure you want to delete this offer?')">
                <i class="bi bi-trash"></i> Delete
            </a>

        </div>

    </div>

</div>

</body>
</html>