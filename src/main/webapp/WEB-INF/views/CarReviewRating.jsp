<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html>
<head>
    <title>Add Car Review</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-4">
    <h3>Add Car Review Rating</h3>

	 <form action="saveReview" method="post">
	
	    <div class="mb-3">
	        <label class="form-label">Select User</label>
	        <select name="userId" class="form-control" required>
	            <option value="">-- Select User --</option>
	            <c:forEach items="${user}" var="u">
	                <option value="${u.userId}">
	                    ${u.userId}
	                </option>
	            </c:forEach>
	        </select>
	    </div>
	
	    <div class="mb-3">
	        <label class="form-label">Rating</label>
	        <input type="number" name="rating" class="form-control" min="1" max="5" required>
	    </div>
	
	    <div class="mb-3">
	        <label class="form-label">Comment</label>
	        <textarea name="comment" class="form-control"></textarea>
	    </div>
	
	    <div class="mb-3">
	        <label class="form-label">Created Date</label>
	        <input type="date" name="createdAt" class="form-control">
	    </div>
	
	    <button type="submit" class="btn btn-primary">Save Review</button>
	
	</form>
    
</div>

</body>
</html>