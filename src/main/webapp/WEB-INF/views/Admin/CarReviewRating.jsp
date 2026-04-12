<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<title>Add Car Review</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css" rel="stylesheet">

<jsp:include page="AdminCSS.jsp" />

<style>

/* ===== BODY ===== */
body{
    margin:0;
    background:#F4F6F9;
    font-family:'Segoe UI',sans-serif;
}

/* ===== MAIN CONTENT ===== */
.content{
    margin-left:260px;   /* sidebar width */
    margin-top:80px;     /* header height */
    min-height:calc(100vh - 120px);

    display:flex;
    justify-content:center;
    align-items:center;
    padding:20px;
}

/* ===== FORM CARD ===== */
.form-card{
    width:100%;
    max-width:500px;
    background:white;
    padding:30px;
    border-radius:16px;
    box-shadow:0 10px 30px rgba(0,0,0,0.1);
}

/* INPUT SPACING */
.form-control, .form-select{
    height:42px;
}

textarea.form-control{
    height:auto;
}

</style>

</head>

<body>

<!-- ===== HEADER ===== -->
<jsp:include page="AdminHeader.jsp" />

<!-- ===== SIDEBAR ===== -->
<jsp:include page="AdminSidebar.jsp" />

<!-- ===== MAIN ===== -->
<div class="content">

    <div class="form-card">

        <h4 class="mb-4 text-center fw-bold">
            ⭐ Add Car Review
        </h4>

        <form action="saveReview" method="post">

            <!-- USER -->
            <div class="mb-3">
                <label class="form-label">Select User</label>
                <select name="userId" class="form-select" required>
                    <option value="">-- Select User --</option>
                    <c:forEach items="${user}" var="u">
                        <option value="${u.userId}">
                            ${u.userId}
                        </option>
                    </c:forEach>
                </select>
            </div>

            <!-- RATING -->
            <div class="mb-3">
                <label class="form-label">Rating (1–5)</label>
                <input type="number" name="rating" class="form-control" min="1" max="5" required>
            </div>

            <!-- COMMENT -->
            <div class="mb-3">
                <label class="form-label">Comment</label>
                <textarea name="comment" class="form-control"></textarea>
            </div>

            <!-- DATE -->
            <div class="mb-3">
                <label class="form-label">Created Date</label>
                <input type="date" name="createdAt" class="form-control">
            </div>

            <!-- BUTTON -->
            <div class="d-grid">
                <button type="submit" class="btn btn-success">
                    <i class="bi bi-check-circle"></i> Save Review
                </button>
            </div>

        </form>

    </div>

</div>

<!-- ===== FOOTER ===== -->
<jsp:include page="AdminFooter.jsp" />

</body>
</html>