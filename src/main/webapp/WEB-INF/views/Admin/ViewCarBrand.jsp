<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>View Car Brand</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">

    <style>
        .label {
            font-weight: 600;
            color: #555;
        }
        .brand-logo {
            max-height: 80px;
        }
    </style>
</head>

<body>
<div class="container mt-4">

    <div class="card shadow">
        <div class="card-header bg-dark text-white">
            <h4 class="mb-0">Car Brand Details</h4>
        </div>

        <div class="card-body">

            <c:if test="${not empty carBrand}">
                <table class="table table-borderless">

                    <tr>
                        <td class="label">Brand ID</td>
                        <td>${carBrand.brandId}</td>
                    </tr>

                    <tr>
                        <td class="label">Brand Name</td>
                        <td>${carBrand.brandName}</td>
                    </tr>

                    <tr>
                        <td class="label">Logo</td>
                        <td>
                            <c:if test="${not empty carBrand.logoUrl}">
                                <img src="${carBrand.logoUrl}" 
                                     alt="${carBrand.brandName}" 
                                     class="brand-logo img-thumbnail"/>
                            </c:if>
                            <c:if test="${empty carBrand.logoUrl}">
                                <span class="text-muted">No Logo Available</span>
                            </c:if>
                        </td>
                    </tr>

                    <tr>
                        <td class="label">Status</td>
                        <td>
                            <c:choose>
                                <c:when test="${carBrand.active}">
                                    <span class="badge bg-success">Active</span>
                                </c:when>
                                <c:otherwise>
                                    <span class="badge bg-danger">Inactive</span>
                                </c:otherwise>
                            </c:choose>
                        </td>
                    </tr>

                </table>
            </c:if>

            <c:if test="${empty carBrand}">
                <div class="alert alert-warning">
                    No Car Brand Found.
                </div>
            </c:if>

        </div>

        <div class="card-footer text-end">
            <a href="listbrand" class="btn btn-secondary">Back</a>
            <a href="editCarBrand?brandId=${carBrand.brandId}"
               class="btn btn-warning">Edit</a>
        </div>

    </div>

</div>
</body>
</html>