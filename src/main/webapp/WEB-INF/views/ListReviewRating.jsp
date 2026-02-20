<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Car Review Rating</title>

<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet"
href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">

<!-- Common Admin CSS -->
<jsp:include page="AdminCSS.jsp"/>

<style>

/* Theme Button */
.btn-theme{
    background:linear-gradient(135deg,#14213D,#1D3557);
    border:none;
    color:white;
}
.btn-theme:hover{
    background:#0077B6;
    color:white;
}

/* Delete Button */
.btn-delete{
    background:#dc3545;
    color:white;
}
.btn-delete:hover{
    background:#b02a37;
    color:white;
}

/* Table Header Theme */
.table thead{
    background:linear-gradient(90deg,#0D1B2A,#1B263B);
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

    <div class="content-card">

        <h3 class="fw-bold mb-4 text-center" style="color:#0D1B2A;">
            Car Review Rating
        </h3>

        <div class="table-responsive">
            <table class="table table-hover align-middle">

                <thead>
                    <tr>
                        <th>Review ID</th>
                        <th>User ID</th>
                        <th>Rating</th>
                        <th>Comment</th>
                        <th>Created Date</th>
                        <th>Action</th>
                    </tr>
                </thead>

                <tbody>

                    <c:forEach items="${allCarReview}" var="r">
                        <tr>
                            <td>${r.reviewId}</td>
                            <td>${r.userId}</td>
                            <td>⭐ ${r.rating}/5</td>
                            <td>${r.comment}</td>
                            <td>${r.createdAt}</td>

                            <td>
                                <a href="viewReviewRating?reviewId=${r.reviewId}"
                                   class="btn btn-sm btn-theme">
                                   View
                                </a>

                                <a href="deleteReviewRating?reviewId=${r.reviewId}"
                                   class="btn btn-sm btn-delete"
                                   onclick="return confirm('Are you sure you want to delete this review?')">
                                   Delete
                                </a>
                            </td>
                        </tr>
                    </c:forEach>

                    <c:if test="${empty allCarReview}">
                        <tr>
                            <td colspan="6" class="text-center text-muted py-4">
                                No Reviews Found
                            </td>
                        </tr>
                    </c:if>

                </tbody>

            </table>
        </div>

    </div>

</div>

<!-- ================= FOOTER ================= -->
<jsp:include page="AdminFooter.jsp"/>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
