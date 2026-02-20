<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Car Transaction</title>

<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet"
href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">

<jsp:include page="AdminCSS.jsp"/>

<style>

body{
    background:#F4F6F9;
    font-family:'Segoe UI', sans-serif;
}

/* Content Layout */
.content{
    margin-left:260px;
    min-height:calc(100vh - 120px);
    display:flex;
    justify-content:center;
    align-items:center;
    padding:30px;
}

/* Card */
.content-card{
    width:100%;
    max-width:550px;
    background:white;
    padding:30px;
    border-radius:15px;
    box-shadow:0 10px 25px rgba(0,0,0,0.08);
}

/* Small Inputs */
.small-input{
    height:38px;
    font-size:14px;
}

/* Admin Gradient Button */
.btn-admin{
    background:linear-gradient(135deg,#14213D,#1D3557);
    border:none;
    color:white;
}
.btn-admin:hover{
    background:#0077B6;
    color:white;
}

</style>

</head>
<body>

<!-- HEADER -->
<jsp:include page="AdminHeader.jsp"/>

<!-- SIDEBAR -->
<jsp:include page="AdminSidebar.jsp"/>

<!-- CONTENT -->
<div class="content">

<div class="content-card">

    <h4 class="fw-bold mb-4 text-center" style="color:#0D1B2A;">
        Car Transaction
    </h4>

    <form action="saveCarTransaction" method="post">

        <!-- Listing -->
        <div class="mb-3">
            <label class="form-label">Select Listing</label>
            <select name="listingId" class="form-select small-input" required>
                <option value="">Select Listing</option>
                <c:forEach var="listing" items="${allCarList}">
                    <option value="${listing.listingId}">
                        ${listing.listingId}
                    </option>
                </c:forEach>
            </select>
        </div>

        <!-- Buyer -->
        <div class="mb-3">
            <label class="form-label">Select Buyer</label>
            <select name="buyerId" class="form-select small-input" required>
                <option value="">Select Buyer</option>
                <c:forEach var="buyer" items="${allUsers}">
                    <option value="${buyer.userId}">
                        ${buyer.firstName} ${buyer.lastName}
                    </option>
                </c:forEach>
            </select>
        </div>

        <!-- Seller -->
        <div class="mb-3">
            <label class="form-label">Select Seller</label>
            <select name="sellerId" class="form-select small-input" required>
                <option value="">Select Seller</option>
                <c:forEach var="seller" items="${allUsers}">
                    <option value="${seller.userId}">
                        ${seller.firstName} ${seller.lastName}
                    </option>
                </c:forEach>
            </select>
        </div>

        <!-- Final Price -->
        <div class="mb-3">
            <label class="form-label">Final Price</label>
            <input type="number"
                   step="0.01"
                   name="finalPrice"
                   class="form-control small-input"
                   required>
        </div>

        <!-- Payment Mode -->
        <div class="mb-3">
            <label class="form-label">Payment Mode</label>
            <select name="paymentMode" class="form-select small-input" required>
                <option value="">Select Payment Mode</option>
                <option value="CASH">CASH</option>
                <option value="ONLINE">ONLINE</option>
            </select>
        </div>

        <!-- Transaction Status -->
        <div class="mb-3">
            <label class="form-label">Transaction Status</label>
            <select name="transactionStatus" class="form-select small-input" required>
                <option value="">Select Status</option>
                <option value="INITIATED">INITIATED</option>
                <option value="COMPLETED">COMPLETED</option>
                <option value="CANCELLED">CANCELLED</option>
            </select>
        </div>

        <!-- Completed At -->
        <div class="mb-3">
            <label class="form-label">Completed At</label>
            <input type="date"
                   name="completedAt"
                   class="form-control small-input">
        </div>

        <div class="d-grid mt-4">
            <button type="submit" class="btn btn-admin">
                Submit Transaction
            </button>
        </div>

    </form>

</div>
</div>

<!-- FOOTER -->
<jsp:include page="AdminFooter.jsp"/>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
