<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>View Car Report</title>

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
            <h4 class="mb-0">Car Report Details</h4>
        </div>

        <div class="card-body">
            <div class="row">

                <div class="col-md-12">
                    <table class="table table-borderless">

                        <tr>
                            <td class="label">Report ID</td>
                            <td>${Report.reportId}</td>
                        </tr>

                        <tr>
                            <td class="label">User ID (Seller)</td>
                            <td>${Report.userId}</td>
                        </tr>

                        <tr>
                            <td class="label">Listing ID</td>
                            <td>${Report.listingId}</td>
                        </tr>

                        <tr>
                            <td class="label">Reason</td>
                            <td>${Report.reason}</td>
                        </tr>

                        <tr>
                            <td class="label">Status</td>
                            <td>
                                <c:choose>
                                    <c:when test="${Report.status == 'OPEN'}">
                                        <span class="badge bg-primary">OPEN</span>
                                    </c:when>
                                    <c:when test="${Report.status == 'RESOLVED'}">
                                        <span class="badge bg-success">RESOLVED</span>
                                    </c:when>
                                    <c:otherwise>
                                        <span class="badge bg-danger">REJECTED</span>
                                    </c:otherwise>
                                </c:choose>
                            </td>
                        </tr>

                        <tr>
                            <td class="label">Created At</td>
                            <td>${Report.createdAt}</td>
                        </tr>

                    </table>
                </div>

            </div>
        </div>

        <div class="card-footer text-end">
            <a href="listCarReports" class="btn btn-secondary">Back</a>
            <a href="editCarReport?reportId=${report.reportId}" class="btn btn-warning">
                Edit
            </a>
        </div>
    </div>

</div>
</body>
</html>