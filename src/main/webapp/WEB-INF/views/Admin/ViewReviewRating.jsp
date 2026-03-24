<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<title>View Review Rating</title>

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
            View Car Review Rating
        </h3>

        <div class="card p-4">

            <div class="mb-3">
                <label class="form-label">User ID</label>
                <input type="text" class="form-control" value="${viewReview.userId}" readonly>
            </div>

            <div class="mb-3">
                <label class="form-label">Rating</label>
                <input type="text" class="form-control" value="${viewReview.rating}" readonly>
            </div>

            <div class="mb-3">
                <label class="form-label">Comment</label>
                <textarea class="form-control" rows="3" readonly>${viewReview.comment}</textarea>
            </div>

            <div class="mb-3">
                <label class="form-label">Created Date</label>
                <input type="text" class="form-control"
                       value="<fmt:formatDate value='${viewReview.createdAt}' pattern='dd-MM-yyyy'/>"
                       readonly>
            </div>

            <div class="text-center mt-3">
                <a href="listReviewRating" class="btn btn-secondary">Back</a>
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