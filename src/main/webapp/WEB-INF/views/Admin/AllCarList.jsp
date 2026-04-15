<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>

<html>
<head>

<link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/dataTables.bootstrap5.min.css">
<link rel="stylesheet" href="https://cdn.datatables.net/buttons/2.4.1/css/buttons.bootstrap5.min.css">

<meta charset="UTF-8">
<title>Car Listings</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
rel="stylesheet">

<link rel="stylesheet"
href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">

<jsp:include page="AdminCSS.jsp"/>

<style>
body{
background:#F4F6F9;
font-family:'Segoe UI', sans-serif;
}
.content{
    margin-left:260px;
    margin-top:30px;   /* 🔥 90 → 30 */
    padding:25px 30px; /* thoda compact */
}
.content-card{
    background:white;
    border-radius:16px;
    padding:25px;
    box-shadow:0 8px 20px rgba(0,0,0,0.08);
    margin-top:-50px;   /* 🔥 thoda aur upar push */
}
.page-header{
display:flex;
justify-content:space-between;
align-items:center;
margin-bottom:25px;
}
.page-title{
font-weight:700;
font-size:22px;
color:#1B263B;
}
.counter-badge{
background:#4361ee;
color:white;
padding:6px 14px;
border-radius:20px;
font-size:14px;
}
.table{
min-width:1300px;
}
.table th,.table td{
white-space:nowrap;
}
.table thead{
background:#1B263B;
color:white;
}
.price{
font-weight:700;
color:#198754;
}
.status-badge{
background:#e9f9f1;
color:#198754;
padding:6px 12px;
border-radius:20px;
font-size:12px;
}
.car-img{
width:65px;
height:48px;
object-fit:cover;
border-radius:8px;
}
</style>

</head>

<body>

<jsp:include page="AdminSidebar.jsp"/>
<jsp:include page="AdminHeader.jsp"/>

<div class="content">
<div class="content-card">

<div class="page-header">
<h4 class="page-title">
<i class="bi bi-car-front-fill"></i> Car Listings
</h4>

<div class="counter-badge">
Total Cars : ${allCarList.size()}
</div>
</div>

<div class="table-responsive">

<table class="table table-hover align-middle" id="myTable">

<thead>
<tr>
<th>ID</th>
<th>Seller</th>
<th>Brand</th>
<th>Model</th>
<th>Variant</th>
<th>City</th>
<th>KMS</th>
<th>Year</th>
<th>Ownership</th>
<th>Price</th>
<th>Status</th>
<th>Date</th>
<th>Action</th>
</tr>
</thead>

<tbody>

<c:forEach items="${allCarList}" var="c">

<tr>

<td>${c.listingId}</td>

<td>
<i class="bi bi-person-circle"></i> ${c.userId}
</td>

<td>${c.brandName}</td>

<!-- 🔥 FIXED MODEL + IMAGE -->
<td>
<div style="display:flex; align-items:center; gap:10px;">
<img src="${c.imageUrl != null ? c.imageUrl : 'https://via.placeholder.com/80'}"
class="car-img"/>
${c.modelName}
</div>
</td>

<td>${c.variantName}</td>

<td>${c.city}</td>

<td>${c.kmsDriven} km</td>

<td>${c.year}</td>

<td>${c.ownership}</td>

<td class="price">₹ ${c.price}</td>

<td>
<span class="status-badge">${c.status}</span>
</td>

<td>
<fmt:formatDate value="${c.createdAt}" pattern="yyyy-MM-dd"/>
</td>

<td>
<a href="viewCarListing?listingId=${c.listingId}" class="btn btn-primary btn-sm">View</a>
<a href="editCarListing?listingId=${c.listingId}" class="btn btn-warning btn-sm">Edit</a>
<a href="deleteCarListing?listingId=${c.listingId}" class="btn btn-danger btn-sm"
onclick="return confirm('Delete?')">Delete</a>
</td>

</tr>

</c:forEach>

</tbody>

</table>

</div>

</div>
</div>

<jsp:include page="AdminFooter.jsp"/>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>

<!-- DataTables -->
<script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.13.6/js/dataTables.bootstrap5.min.js"></script>

<!-- Buttons -->
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

<!-- 🔥 FINAL SCRIPT -->
<script>
$(document).ready(function() {
    $('#myTable').DataTable({
        dom: 'Bfrtip',
        scrollX: true,
        buttons: [
            'copy',
            'csv',
            'excel',
            {
                extend: 'pdf',
                text: 'PDF',
                orientation: 'landscape',   // 🔥 FIX
                pageSize: 'A3',             // 🔥 FIX
                exportOptions: {
                    columns: ':visible'
                },
                customize: function (doc) {
                    doc.defaultStyle.fontSize = 8;
                    doc.styles.tableHeader.fontSize = 9;
                    doc.pageMargins = [10,10,10,10];
                }
            },
            'print'
        ]
    });
});
</script>

</body>
</html>