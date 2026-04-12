<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>

<link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/dataTables.bootstrap5.min.css">
<link rel="stylesheet" href="https://cdn.datatables.net/buttons/2.4.1/css/buttons.bootstrap5.min.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<title>Car Image List</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css" rel="stylesheet">

<jsp:include page="AdminCSS.jsp"/>

<style>
.image-box img{
    width:200px;
    height:120px;
    object-fit:cover;
    border-radius:10px;
    transition:0.3s;
}

.image-box img:hover{
    transform:scale(1.1);
}
</style>

</head>

<body>

<jsp:include page="AdminHeader.jsp"/>
<jsp:include page="AdminSidebar.jsp"/>

<div style="margin-left:260px; margin-top:90px; padding:30px;">

<div class="card p-4 shadow">

<h4 class="mb-4">🚗 Car Image List</h4>

<table class="table table-hover text-center align-middle" id="myTable">

<thead class="table-dark" >
<tr>
<th>ID</th>
<th>Model</th>
<th>Image</th>
<th>Primary</th>
<th>Action</th>
</tr>
</thead>

<tbody>

<c:forEach var="c" items="${carList}">
<tr>

<td>${c.imageId}</td>

<td>${c.modelName}</td>

<td>
<div class="image-box">
<img src="${c.imageURL}">
</div>
</td>

<td>
<c:if test="${c.isPrimary}">
<span class="badge bg-success">
<i class="bi bi-check-circle"></i> Primary
</span>
</c:if>

<c:if test="${!c.isPrimary}">
<span class="badge bg-secondary">
<i class="bi bi-image"></i> Secondary
</span>
</c:if>
</td>

<td>

<!-- VIEW -->
<a href="viewCarImage?imageId=${c.imageId}" 
   class="btn btn-info btn-sm">
   <i class="bi bi-eye"></i>
</a>

<!-- EDIT -->
<a href="editCarImage?imageId=${c.imageId}" 
   class="btn btn-warning btn-sm">
   <i class="bi bi-pencil"></i>
</a>

<!-- DELETE -->
<a href="deleteCarImage?imageId=${c.imageId}" 
   class="btn btn-danger btn-sm"
   onclick="return confirm('Delete image?')">
   <i class="bi bi-trash"></i>
</a>

</td>

</tr>
</c:forEach>

</tbody>

</table>

</div>

</div>
<!-- ✅ 1. jQuery -->
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>

<!-- ✅ 2. DataTables -->
<script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.13.6/js/dataTables.bootstrap5.min.js"></script>

<!-- ✅ 3. Buttons -->
<script src="https://cdn.datatables.net/buttons/2.4.1/js/dataTables.buttons.min.js"></script>
<script src="https://cdn.datatables.net/buttons/2.4.1/js/buttons.bootstrap5.min.js"></script>

<!-- Excel -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.10.1/jszip.min.js"></script>

<!-- PDF -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/pdfmake.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/vfs_fonts.js"></script>

<!-- Buttons -->
<script src="https://cdn.datatables.net/buttons/2.4.1/js/buttons.html5.min.js"></script>
<script src="https://cdn.datatables.net/buttons/2.4.1/js/buttons.print.min.js"></script>

<!-- ✅ 4. INIT SCRIPT (LAST ME) -->
<script>
$(document).ready(function() {
    $('#myTable').DataTable({
        dom: 'Bfrtip',
        buttons: ['copy', 'csv', 'excel', 'pdf', 'print']
    });
});
</script>
</body>
</html>