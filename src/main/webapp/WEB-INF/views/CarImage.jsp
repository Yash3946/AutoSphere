<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Car Image</title>

<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet"
href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">

<!-- Common Admin CSS -->
<jsp:include page="AdminCSS.jsp"/>

<style>

/* Same Gradient Button Theme */
.btn-theme{
    background:linear-gradient(135deg,#14213D,#1D3557);
    border:none;
    color:white;
}
.btn-theme:hover{
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
                    Add Car Image
                </h4>

                <form action="saveCarImage" method="post">

                    <!-- Model Dropdown -->
                    <div class="mb-3">
                        <label class="form-label">Select Model</label>
                        <select name="modelName" class="form-select" required>
                            <option value="">Select Model</option>
                            <c:forEach var="m" items="${allCarModel}">
                                <option value="${m.modelName}">
                                    ${m.modelName}
                                </option>
                            </c:forEach>
                        </select>
                    </div>

                    <!-- Image URL -->
                    <div class="mb-3">
                        <label class="form-label">Image URL</label>
                        <input type="text"
                               name="imageUrl"
                               class="form-control"
                               placeholder="Enter Image URL"
                               required>
                    </div>

                    <!-- Is Primary -->
                    <div class="mb-3">
                        <label class="form-label">Is Primary Image?</label>
                        <select name="isPrimary" class="form-select" required>
                            <option value="">Select Option</option>
                            <option value="true">Yes (Primary)</option>
                            <option value="false">No (Secondary)</option>
                        </select>
                    </div>

                    <!-- Submit Button -->
                    <div class="d-grid mt-4">
                        <button type="submit" class="btn btn-theme">
                            Save Car Image
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
