<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title>Edit Car Image</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<jsp:include page="AdminCSS.jsp"/>

</head>

<body>

<jsp:include page="AdminHeader.jsp"/>
<jsp:include page="AdminSidebar.jsp"/>

<div style="margin-left:280px; margin-top:50px; padding:30px;">

<div class="card p-4 shadow" style="max-width:900px;">

<h4>Edit Car Image</h4>

<form action="updateCarImage" method="post" enctype="multipart/form-data">

<input type="hidden" name="imageId" value="${carImage.imageId}"/>

<div class="mb-3">
<label>Model</label>
<select name="modelName" class="form-control">
<c:forEach items="${allCarModel}" var="m">
<option value="${m.modelName}" 
${m.modelName == carImage.modelName ? 'selected' : ''}>
${m.modelName}
</option>
</c:forEach>
</select>
</div>

<div class="mb-3">
<label>Upload New Image</label>
<input type="file" name="imageFile" class="form-control">
</div>

<div class="mb-3">
<label>Current Image</label><br>
<img src="${carImage.imageURL}" width="200">
</div>

<div class="mb-3">
<label>Primary</label>
<select name="isPrimary" class="form-control">
<option value="true" ${carImage.isPrimary ? 'selected':''}>Yes</option>
<option value="false" ${!carImage.isPrimary ? 'selected':''}>No</option>
</select>
</div>

<div class="text-end">
<a href="listCarImage" class="btn btn-secondary">Back</a>
<button class="btn btn-success">Update</button>
</div>

</form>

</div>

</div>

</body>
</html>