<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
    <title>View Saved Listing</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-4">

    <h3 class="mb-4">Saved Listing Details</h3>

    <div class="card p-4">

        <div class="mb-3">
            <label class="form-label">Wishlist ID</label>
            <input type="text" class="form-control"
                   value="${saved.wishlistId}" readonly>
        </div>

        <div class="mb-3">
            <label class="form-label">User ID</label>
            <input type="text" class="form-control"
                   value="${saved.userId}" readonly>
        </div>

        <div class="mb-3">
            <label class="form-label">Listing ID</label>
            <input type="text" class="form-control"
                   value="${saved.listingId}" readonly>
        </div>

        <div class="mb-3">
            <label class="form-label">Added Date</label>
            <input type="text" class="form-control"
                   value="<fmt:formatDate value='${saved.addedAt}' pattern='dd-MM-yyyy'/>"
                   readonly>
        </div>

        <a href="listSavedListing" class="btn btn-secondary">
            Back
        </a>

    </div>

</div>

</body>
</html>