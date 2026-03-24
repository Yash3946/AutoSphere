<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List Car Features</title>

<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Icons -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css" rel="stylesheet">

<jsp:include page="AdminCSS.jsp"/>

<style>

/* Content spacing */
.content{
    margin-left:260px;
    padding:30px;
}

/* Card */
.content-card{
    background:white;
    padding:30px;
    border-radius:18px;
    box-shadow:0 10px 30px rgba(0,0,0,0.08);
}

/* Title */
.page-title{
    font-weight:700;
    color:#0D1B2A;
}

/* Table */
.table thead{
    background:linear-gradient(90deg,#0D1B2A,#1B263B);
    color:white;
}

.table tbody tr{
    transition:0.2s;
}

.table tbody tr:hover{
    background:#f1f5f9;
}

/* Buttons */
.btn-view{
    background:#1D3557;
    color:white;
}
.btn-view:hover{
    background:#0077B6;
}

.btn-delete{
    background:#dc3545;
    color:white;
}
.btn-delete:hover{
    background:#bb2d3b;
}

.btn-edit{
    background:#ffc107;
    color:black;
}
.btn-edit:hover{
    background:#e0a800;
}

/* Action buttons spacing */
.action-btns a{
    margin-right:5px;
}

</style>
</head>

<body>

<!-- Sidebar -->
<jsp:include page="AdminSidebar.jsp"/>

<!-- Header -->
<jsp:include page="AdminHeader.jsp"/>

<div class="content">

    <div class="content-card">

        <!-- Title + Add Button -->
        <div class="d-flex justify-content-between align-items-center mb-4">
            <h3 class="page-title">🚗 List Car Features</h3>

            <a href="carFeatures" class="btn btn-primary">
                <i class="bi bi-plus-circle"></i> Add Feature
            </a>
        </div>

        <div class="table-responsive">

            <table class="table table-hover align-middle">

                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Variant</th>
                        <th>Safety</th>
                        <th>Comfort</th>
                        <th>Entertainment</th>
                        <th>Exterior</th>
                        <th class="text-center">Action</th>
                    </tr>
                </thead>

                <tbody>

                    <c:forEach items="${allCarFeatures}" var="f">
                        <tr>

                            <td><b>${f.featureId}</b></td>

                            <td>
                                <span class="badge bg-secondary">
                                    ${f.variantId}
                                </span>
                            </td>

                            <td>${f.safetyFeatures}</td>
                            <td>${f.comfortFeatures}</td>
                            <td>${f.entertainmentFeatures}</td>
                            <td>${f.exteriorFeatures}</td>

                            <td class="text-center">

                                <div class="action-btns">

                                    <a href="viewCarFeatures?featureId=${f.featureId}"
                                       class="btn btn-sm btn-view">
                                       <i class="bi bi-eye"></i>
                                    </a>

                                    <a href="editCarFeature?featureId=${f.featureId}"
                                       class="btn btn-sm btn-edit">
                                       <i class="bi bi-pencil"></i>
                                    </a>

                                    <a href="deleteCarFeatures?featureId=${f.featureId}"
                                       class="btn btn-sm btn-delete"
                                       onclick="return confirm('Are you sure?')">
                                       <i class="bi bi-trash"></i>
                                    </a>

                                </div>

                            </td>

                        </tr>
                    </c:forEach>

                    <c:if test="${empty allCarFeatures}">
                        <tr>
                            <td colspan="7" class="text-center text-muted py-4">
                                🚫 No car features found
                            </td>
                        </tr>
                    </c:if>

                </tbody>

            </table>

        </div>

    </div>

</div>

<!-- Footer -->
<jsp:include page="AdminFooter.jsp"/>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>