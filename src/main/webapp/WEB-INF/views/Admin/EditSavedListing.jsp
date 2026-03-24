<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<title>Edit Saved Listing</title>

<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Icons -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css" rel="stylesheet">

<!-- Common Admin CSS -->
<jsp:include page="AdminCSS.jsp"/>

<style>
.card{
    border-radius: 12px;
}
.btn-update{
    background: linear-gradient(135deg,#198754,#157347);
    border:none;
    color:white;
}
.btn-update:hover{
    background:#146c43;
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

    <div class="content-card">

        <h3 class="fw-bold mb-4 text-center" style="color:#0D1B2A;">
            Edit Saved Listing
        </h3>

        <div class="card p-4">

            <form action="updateSavedListing" method="post">

                <!-- Hidden ID -->
                <input type="hidden" name="wishlistId" value="${saved.wishlistId}">

                <div class="mb-3">
                    <label class="form-label">User ID</label>
                    <input type="text" name="userId" class="form-control"
                           value="${saved.userId}" readonly>
                </div>

                <div class="mb-3">
                    <label class="form-label">Listing ID</label>
                    <input type="number" name="listingId" class="form-control"
                           value="${saved.listingId}" required>
                </div>

                <div class="mb-3">
                    <label class="form-label">Added Date</label>
                    <input type="text" class="form-control"
                           value="<fmt:formatDate value='${saved.addedAt}' pattern='dd-MM-yyyy'/>"
                           readonly>
                </div>

                <div class="text-center mt-3">
                    <button type="submit" class="btn btn-update">Update</button>
                    <a href="listSavedListing" class="btn btn-secondary">Cancel</a>
                </div>

            </form>

        </div>

    </div>

</div>

<!-- ================= FOOTER ================= -->
<jsp:include page="AdminFooter.jsp"/>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>