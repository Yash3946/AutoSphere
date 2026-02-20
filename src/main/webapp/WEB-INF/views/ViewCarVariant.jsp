<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>View Car Variant</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">

    <style>
        .label {
            font-weight: 600;
            color: #555;
        }
    </style>
</head>

<body>
<div class="container mt-4">

    <div class="card shadow">
        <div class="card-header bg-dark text-white">
            <h4 class="mb-0">Car Variant Details</h4>
        </div>

        <div class="card-body">
            <div class="row">

                <!-- Variant Info -->
                <div class="col-md-12">
                    <table class="table table-borderless">
                        <tr>
                            <td class="label">Variant ID</td>
                            <td>${carVariant.variantId}</td>
                        </tr>

                        <tr>
                            <td class="label">Variant Name</td>
                            <td>${carVariant.variantName}</td>
                        </tr>

                        <tr>
                            <td class="label">Model ID</td>
                            <td>${carVariant.modelId}</td>
                        </tr>

                        <tr>
                            <td class="label">Ex-Showroom Price</td>
                            <td>₹ ${carVariant.exShowroomPrice}</td>
                        </tr>

                        <tr>
                            <td class="label">Mileage</td>
                            <td>${carVariant.mileage}</td>
                        </tr>

                        <tr>
                            <td class="label">Engine</td>
                            <td>${carVariant.engine}</td>
                        </tr>

                        <tr>
                            <td class="label">Power</td>
                            <td>${carVariant.power}</td>
                        </tr>

                        <tr>
                            <td class="label">Torque</td>
                            <td>${carVariant.torque}</td>
                        </tr>

                        <tr>
                            <td class="label">Status</td>
                            <td>
                                <c:choose>
                                    <c:when test="${carVariant.active}">
                                        <span class="badge bg-success">Active</span>
                                    </c:when>
                                    <c:otherwise>
                                        <span class="badge bg-danger">Inactive</span>
                                    </c:otherwise>
                                </c:choose>
                            </td>
                        </tr>
                    </table>
                </div>

            </div>
        </div>

        <div class="card-footer text-end">
            <a href="listCarVariant" class="btn btn-secondary">Back</a>
            <a href="editCarVariant?variantId=${carVariant.variantId}" class="btn btn-warning">
                Edit
            </a>
        </div>
    </div>

</div>
</body>
</html> 