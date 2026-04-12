<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<title>New Saved Listing</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css" rel="stylesheet">

<jsp:include page="AdminCSS.jsp" />

<style>

/* ===== GLOBAL ===== */
body{
    margin:0;
    background:#F4F6F9;
    font-family:'Segoe UI',sans-serif;
}

/* ===== CONTENT (FIXED CENTER) ===== */
.content{
    margin-left:260px;
    margin-top:70px;

    height:calc(100vh - 70px); /* 🔥 important fix */

    display:flex;
    justify-content:center;
    align-items:center;
}

/* ===== CARD ===== */
.form-card{
    width:100%;
    max-width:500px;
    background:white;
    padding:30px;
    border-radius:15px;
    box-shadow:0 10px 25px rgba(0,0,0,0.1);
}

</style>

</head>

<body>

<!-- ===== HEADER ===== -->
<jsp:include page="AdminHeader.jsp" />

<!-- ===== SIDEBAR ===== -->
<jsp:include page="AdminSidebar.jsp" />

<!-- ===== MAIN CONTENT ===== -->
<div class="content">

    <div class="form-card">

        <h4 class="mb-4 text-center fw-bold">
            ➕ Add Saved Listing
        </h4>

        <form action="saveSavedListing" method="post">

            <!-- User -->
            <div class="mb-3">
                <label class="form-label">Select Customer</label>
                <select name="userId" class="form-select" required>
                    <option value="">-- Select User --</option>

                    <c:forEach items="${all}" var="u">
                        <option value="${u.userId}">
                            ${u.userId}
                        </option>
                    </c:forEach>
                </select>
            </div>

            <!-- Listing -->
            <div class="mb-3">
                <label class="form-label">Select Listing</label>
                <select name="listingId" class="form-select" required>
                    <option value="">-- Select Listing --</option>

                    <c:forEach items="${carList}" var="l">
                        <option value="${l.listingId}">
                            ${l.listingId}
                        </option>
                    </c:forEach>
                </select>
            </div>

            <!-- Date -->
            <div class="mb-3">
                <label class="form-label">Added Date</label>
                <input type="date" name="addedAt" class="form-control">
            </div>

            <!-- BUTTONS -->
            <div class="d-flex justify-content-between mt-3">
                <button type="submit" class="btn btn-success">
                    <i class="bi bi-check-circle"></i> Save
                </button>

                <a href="listSavedListing" class="btn btn-secondary">
                    Cancel
                </a>
            </div>

        </form>

    </div>

</div>

<!-- ===== FOOTER ===== -->
<jsp:include page="AdminFooter.jsp" />

</body>
</html>