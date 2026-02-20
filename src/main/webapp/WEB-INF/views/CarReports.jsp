<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Car Report</title>

<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet"
href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">

<!-- Common Admin CSS -->
<jsp:include page="AdminCSS.jsp"/>

<style>

/* Same Button Theme */
.btn-primary-custom{
    background:linear-gradient(135deg,#14213D,#1D3557);
    border:none;
    color:white;
}
.btn-primary-custom:hover{
    background:#0077B6;
    color:white;
}

</style>

</head>
<body>

<!-- ================= SIDEBAR ================= -->
<jsp:include page="AdminSidebar.jsp"/>

<!-- ================= HEADER ================= -->
<jsp:include page="AdminHeader.jsp"/>

<!-- ================= CONTENT ================= -->
<div class="content">

    <div class="row justify-content-center">
        <div class="col-md-6 col-lg-5">

            <div class="content-card">

                <h4 class="text-center mb-4 fw-bold" style="color:#0D1B2A;">
                    Car Report
                </h4>

                <form action="saveCarReport" method="post">

                    <!-- Seller -->
                    <div class="mb-3">
                        <label class="form-label">Select Seller</label>
                        <select name="userId" class="form-select" required>
                            <option value="">Select Seller</option>
                            <c:forEach var="seller" items="${allUser}">
                                <option value="${seller.userId}">
                                    ${seller.firstName} ${seller.lastName}
                                </option>
                            </c:forEach>
                        </select>
                    </div>

                    <!-- Listing -->
                    <div class="mb-3">
                        <label class="form-label">Select Listing</label>
                        <select name="listingId" class="form-select" required>
                            <option value="">Select Listing</option>
                            <c:forEach var="listing" items="${allCar}">
                                <option value="${listing.listingId}">
                                    ${listing.listingId}
                                </option>
                            </c:forEach>
                        </select>
                    </div>

                    <!-- Reason -->
                    <div class="mb-3">
                        <label class="form-label">Reason</label>
                        <select name="reason" class="form-select" required>
                            <option value="">Select Reason</option>
                            <option value="SCAM">SCAM</option>
                            <option value="FAKE_ITEM">FAKE ITEM</option>
                            <option value="ABUSE">ABUSE</option>
                            <option value="OTHER">OTHER</option>
                        </select>
                    </div>

                    <!-- Status -->
                    <div class="mb-3">
                        <label class="form-label">Status</label>
                        <select name="status" class="form-select" required>
                            <option value="">Select Status</option>
                            <option value="OPEN">OPEN</option>
                            <option value="RESOLVED">RESOLVED</option>
                            <option value="REJECTED">REJECTED</option>
                        </select>
                    </div>

                    <!-- Submit -->
                    <div class="d-grid mt-4">
                        <button type="submit" class="btn btn-primary-custom">
                            Submit Report
                        </button>
                    </div>

                </form>

            </div>

        </div>
    </div>

</div>

<!-- ================= FOOTER ================= -->
<jsp:include page="AdminFooter.jsp"/>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
