<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Car Image List</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Admin Main CSS -->
    <jsp:include page="AdminCSS.jsp"/>

    <style>
        .content-card{
            background:white;
            padding:25px;
            border-radius:15px;
            box-shadow:0 10px 25px rgba(0,0,0,0.08);
        }

        .table thead{
            background:linear-gradient(90deg,#0D1B2A,#1B263B);
            color:white;
        }

        img{
            width:120px;
            height:80px;
            object-fit:cover;
            border-radius:6px;
        }

        .primary{
            color:#28a745;
            font-weight:bold;
        }

        .secondary{
            color:#dc3545;
            font-weight:bold;
        }

        .btn-view{
            background:linear-gradient(135deg,#14213D,#1D3557);
            color:white;
            border:none;
        }

        .btn-view:hover{
            background:#0077B6;
            color:white;
        }

        .btn-delete{
            background:#dc3545;
            color:white;
            border:none;
        }

        .btn-delete:hover{
            background:#bb2d3b;
            color:white;
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

        <h3 class="fw-bold mb-4" style="color:#0D1B2A;">
            Car Image List
        </h3>

        <div class="table-responsive">
            <table class="table table-hover align-middle">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Model Name</th>
                        <th>Image</th>
                        <th>Primary</th>
                        <th>Actions</th>
                    </tr>
                </thead>

                <tbody>

                    <c:forEach var="img" items="${carList}">
                        <tr>
                            <td>${img.imageId}</td>
                            <td>${img.modelName}</td>
                            <td>
                                <img src="${img.imageUrl}" alt="Car Image">
                            </td>
                            <td>
                                <c:choose>
                                    <c:when test="${img.primary}">
                                        <span class="primary">Yes</span>
                                    </c:when>
                                    <c:otherwise>
                                        <span class="secondary">No</span>
                                    </c:otherwise>
                                </c:choose>
                            </td>
                            <td>
                                <a href="viewCarImage?imageId=${img.imageId}"
                                   class="btn btn-sm btn-view">
                                   View
                                </a>

                                <a href="deleteCarImage?imageId=${img.imageId}"
                                   class="btn btn-sm btn-delete"
                                   onclick="return confirm('Are you sure?')">
                                   Delete
                                </a>
                            </td>
                        </tr>
                    </c:forEach>

                    <c:if test="${empty carList}">
                        <tr>
                            <td colspan="5" class="text-center text-muted py-4">
                                No Car Images Found
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

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
