<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>View Car Offer</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">

    <style>
        .label {
            font-weight: 600;
            color: #555;
        }
    </style>
</head>

<body>
<div class="container mt-4">

    <div class="card shadow">
        <div class="card-header bg-dark text-white">
            <h4 class="mb-0">Car Offer Details</h4>
        </div>

        <div class="card-body">
            <div class="row">

                <div class="col-md-12">
                    <table class="table table-borderless">

                        <tr>
                            <td class="label">Offer ID</td>
                            <td>${Offer.offerId}</td>
                        </tr>

                        <tr>
                            <td class="label">Listing ID</td>
                            <td>${Offer.listingId}</td>
                        </tr>

                        <tr>
                            <td class="label">Buyer ID</td>
                            <td>${Offer.userId}</td>
                        </tr>

                        <tr>
                            <td class="label">Offered Price</td>
                            <td>₹ ${Offer.offeredPrice}</td>
                        </tr>

                        <tr>
                            <td class="label">Offer Status</td>
                            <td>
                                <c:choose>
                                    <c:when test="${Offer.offerStatus == 'PENDING'}">
                                        <span class="badge bg-warning text-dark">PENDING</span>
                                    </c:when>
                                    <c:when test="${Offer.offerStatus == 'ACCEPTED'}">
                                        <span class="badge bg-success text-dark">ACCEPTED</span>
                                    </c:when>
                                    <c:otherwise>
                                        <span class="badge bg-danger">REJECTED</span>
                                    </c:otherwise>
                                </c:choose>
                            </td>
                        </tr>

                        <tr>
                            <td class="label">Created At</td>
                            <td>${Offer.createdAt}</td>
                        </tr>

                    </table>
                </div>

            </div>
        </div>

        <div class="card-footer text-end">
            <a href="listCarOffer" class="btn btn-secondary">Back</a>
            <a href="editCarOffer?offerId=${Offer.offerId}" 
               class="btn btn-warning">
               Edit
            </a>
        </div>
    </div>

</div>
</body>
</html>