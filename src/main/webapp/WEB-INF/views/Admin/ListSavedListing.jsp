<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Car Saved Listing</title>

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

/* Table Header */
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
            Car Saved Listing
        </h3>

        <div class="table-responsive">
            <table class="table table-hover align-middle">

                <thead>
                    <tr>
                        <th>Wishlist ID</th>
                        <th>User ID</th>
                        <th>Listing ID</th>
                        <th>Added Date</th>
                        <th>Actions</th>
                    </tr>
                </thead>

                <tbody>

                    <!-- Empty Check -->
                    <c:if test="${empty allSaved}">
                        <tr>
                            <td colspan="5" class="text-center text-muted py-4">
                                No Saved Listings Found
                            </td>
                        </tr>
                    </c:if>

                    <!-- Data Loop -->
                    <c:forEach items="${allSaved}" var="s">
                        <tr>
                            <td>${s.wishlistId}</td>
                            <td>${s.userId}</td>
                            <td>${s.listingId}</td>
                            <td>${s.addedAt}</td>

                            <td>
                                <a href="viewSavedListing?wishlistId=${s.wishlistId}"
                                   class="btn btn-sm btn-theme">
                                   View
                                </a>

                                <a href="deleteSavedListing?wishlistId=${s.wishlistId}"
                                   class="btn btn-sm btn-delete"
                                   onclick="return confirm('Are you sure?')">
                                   Delete
                                </a>
                            </td>
                        </tr>
                    </c:forEach>

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
