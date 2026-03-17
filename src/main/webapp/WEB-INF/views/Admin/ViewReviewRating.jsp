<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
    <title>View Review Rating</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-4">

    <h3 class="mb-4">View Car Review Rating</h3>

    <div class="card p-4">

        <div class="mb-3">
            <label class="form-label">User ID</label>
            <input type="text" class="form-control" value="${viewReview.userId}" readonly>
        </div>

        <div class="mb-3">
            <label class="form-label">Rating</label>
            <input type="text" class="form-control" value="${viewReview.rating}" readonly>
        </div>

        <div class="mb-3">
            <label class="form-label">Comment</label>
            <textarea class="form-control" rows="3" readonly>${viewReview.comment}</textarea>
        </div>

        <div class="mb-3">
            <label class="form-label">Created Date</label>
            <input type="text" class="form-control"
                   value="<fmt:formatDate value='${viewReview.createdAt}' pattern='dd-MM-yyyy'/>"
                   readonly>
        </div>

        <a href="listReviewRating" class="btn btn-secondary">Back</a>

    </div>

</div>

</body>
</html>