<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title>Edit Transaction</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet"
href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">

<style>
.edit-card {
    max-width: 700px;
    margin: auto;
    border-radius: 14px;
    box-shadow: 0 10px 30px rgba(0,0,0,0.15);
}

.edit-card .card-body {
    padding: 25px;
}

.edit-card .card-header {
    padding: 15px 20px;
    font-size: 18px;
    font-weight: 600;
}

.edit-card .card-footer {
    padding: 15px 20px;
}
</style>

<jsp:include page="AdminCSS.jsp"/>

</head>

<body>

<jsp:include page="AdminHeader.jsp"/>
<jsp:include page="AdminSidebar.jsp"/>

<div style="margin-left:260px; margin-top:90px;" 
     class="container d-flex justify-content-center">

    <div class="card edit-card">

        <div class="card-header bg-dark text-white">
            Edit Car Transaction
        </div>

        <div class="card-body">

            <form action="updateCarTransaction" method="post">

                <!-- hidden id -->
                <input type="hidden" name="transactionId" value="${carTransaction.transactionId}"/>

                <!-- Listing -->
                <div class="mb-3">
                    <label class="form-label">Listing</label>
                    <select name="listingId" class="form-control">
                        <c:forEach items="${allCarList}" var="l">
                            <option value="${l.listingId}" 
                                ${l.listingId == carTransaction.listingId ? 'selected' : ''}>
                                ${l.listingId}
                            </option>
                        </c:forEach>
                    </select>
                </div>

                <!-- User -->
                <div class="mb-3">
                    <label class="form-label">User</label>
                    <select name="userId" class="form-control">
                        <c:forEach items="${allUsers}" var="u">
                            <option value="${u.userId}" 
                                ${u.userId == carTransaction.userId ? 'selected' : ''}>
                                ${u.firstName} ${u.lastName}
                            </option>
                        </c:forEach>
                    </select>
                </div>

                <!-- Price -->
                <div class="mb-3">
                    <label class="form-label">Final Price</label>
                    <input type="number" name="finalPrice"
                           value="${carTransaction.finalPrice}"
                           class="form-control"/>
                </div>

                <!-- Payment Mode -->
                <div class="mb-3">
                    <label class="form-label">Payment Mode</label>
                    <select name="paymentMode" class="form-control">
                        <option ${carTransaction.paymentMode=='CASH'?'selected':''}>CASH</option>
                        <option ${carTransaction.paymentMode=='ONLINE'?'selected':''}>ONLINE</option>
                    </select>
                </div>

                <!-- Status -->
                <div class="mb-3">
                    <label class="form-label">Status</label>
                    <select name="transactionStatus" class="form-control">
                        <option ${carTransaction.transactionStatus=='PENDING'?'selected':''}>PENDING</option>
                        <option ${carTransaction.transactionStatus=='SUCCESS'?'selected':''}>SUCCESS</option>
                        <option ${carTransaction.transactionStatus=='FAILED'?'selected':''}>FAILED</option>
                    </select>
                </div>

                <!-- Date -->
                <div class="mb-3">
                    <label class="form-label">Completed Date</label>
                    <input type="date" name="completedAt"
                           value="${carTransaction.completedAt}"
                           class="form-control"/>
                </div>

                <div class="card-footer text-end">

                    <a href="listCarTransaction" class="btn btn-secondary">
                        Back
                    </a>

                    <button class="btn btn-success">
                        Update Transaction
                    </button>

                </div>

            </form>

        </div>

    </div>

</div>

</body>
</html>