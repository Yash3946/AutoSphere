```jsp
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Car Brand</title>

<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">

<!-- Common Admin CSS -->
<jsp:include page="AdminCSS.jsp"/>

<style>

.form-card{
	background:white;
	padding:30px;
	border-radius:15px;
	box-shadow:0 10px 25px rgba(0,0,0,0.08);
}

.page-title{
	background:linear-gradient(135deg,#14213D,#1D3557);
	color:white;
	padding:12px;
	border-radius:10px;
	text-align:center;
	margin-bottom:25px;
}

.btn-save{
	background: linear-gradient(135deg,#005F73,#0A9396);
	border: none;
	border-radius:10px;
	color:white;
	font-weight:500;
}

.btn-save:hover{
	background:#0077B6;
	color:white;
}

</style>

</head>

<body>

<jsp:include page="AdminSidebar.jsp"/>
<jsp:include page="AdminHeader.jsp"/>

<div class="content">

	<div class="row justify-content-center">
		<div class="col-md-6">

			<div class="form-card">

				<h4 class="page-title">Add New Car Brand</h4>

				<form action="savebrand" method="post" enctype="multipart/form-data">

					<div class="mb-3">
						<label class="form-label">Brand Name</label>
						<input type="text"
							   class="form-control"
							   name="brandName"
							   placeholder="Enter Car Brand Name"
							   required>
					</div>

					<div class="mb-3">
						<label class="form-label">Brand Logo</label>
						<input type="file"
							   class="form-control"
							   name="logoFile"
							   accept="image/*"
							   required>
					</div>

					<div class="d-grid">
						<button type="submit" class="btn btn-save">
							Save Brand
						</button>
					</div>

				</form>

			</div>

		</div>
	</div>

</div>

<jsp:include page="AdminFooter.jsp"/>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
```
