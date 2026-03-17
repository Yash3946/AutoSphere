<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>New Saved Listing</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-4">

    <h3 class="mb-4">Add Saved Listing</h3>

    <div class="card p-4">

        <form action="saveSavedListing" method="post">

            <!-- User Dropdown -->
            <div class="mb-3">
                <label class="form-label">Select Customer</label>
                <select name="userId" class="form-control" required>
                    <option value="">-- Select User --</option>

                    <c:forEach items="${all}" var="u">
                        <option value="${u.userId}">
                            ${u.userId}
                        </option>
                    </c:forEach>

                </select>
            </div>

            <!-- Listing Dropdown -->
            <div class="mb-3">
                <label class="form-label">Select Listing</label>
                <select name="listingId" class="form-control" required>
                    <option value="">-- Select Listing --</option>

                    <c:forEach items="${carList}" var="l">
                        <option value="${l.listingId}">
                            ${l.listingId}
                        </option>
                    </c:forEach>

                </select>
            </div>

            <!-- Added Date -->
            <div class="mb-3">
                <label class="form-label">Added Date</label>
                <input type="date" name="addedAt" class="form-control">
            </div>

            <button type="submit" class="btn btn-primary">Save</button>
            <a href="listSavedListing" class="btn btn-secondary">Cancel</a>

        </form>

    </div>

</div>

</body>
</html>