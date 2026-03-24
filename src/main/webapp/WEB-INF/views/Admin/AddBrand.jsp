<%@ page contentType="text/html;charset=UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>Add Brand</title>

<link rel="stylesheet"
href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">

<link rel="stylesheet"
href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">

<jsp:include page="AdminCSS.jsp"/>

<style>
body{
background:#F4F6F9;
font-family:"Segoe UI",sans-serif;
}

.page-header{
display:flex;
justify-content:space-between;
align-items:center;
margin-bottom:25px;
padding-bottom:10px;
border-bottom:1px solid #E5E7EB;
}

.card-box{
background:white;
border-radius:16px;
padding:30px;
box-shadow:0 5px 20px rgba(0,0,0,0.08);
}

.logo-preview{
width:120px;
height:80px;
object-fit:contain;
border:1px solid #E5E7EB;
padding:5px;
display:none;
}

.btn-save{
background:#2563EB;
color:white;
}
</style>
</head>

<body>

<jsp:include page="AdminSidebar.jsp"/>
<jsp:include page="AdminHeader.jsp"/>

<div class="content">

<div class="page-header">
<h3>Add Brand</h3>
<a href="listbrand" class="btn btn-secondary">Back</a>
</div>

<div class="card-box">

<form action="savebrand" method="post" enctype="multipart/form-data">

<div class="row">

<div class="col-md-6 mb-3">
<label>Brand Name</label>
<input type="text" name="brandName" class="form-control" required>
</div>

<div class="col-md-6 mb-3">
<label>Status</label>
<select name="active" class="form-control">
<option value="true">Active</option>
<option value="false">Inactive</option>
</select>
</div>

<div class="col-md-12 mb-3">
<label>Upload Logo</label>
<input type="file" id="fileInput" name="logoFile" class="form-control" accept="image/*" required>
</div>

<div class="col-md-12 mb-3">
<img id="preview" class="logo-preview"/>
</div>

</div>

<button type="submit" class="btn btn-save">Save Brand</button>

</form>

</div>

</div>

<jsp:include page="AdminFooter.jsp"/>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

<script>
document.getElementById("fileInput").addEventListener("change", function(e){
    const file = e.target.files[0];
    const img = document.getElementById("preview");

    if(file){
        img.src = URL.createObjectURL(file);
        img.style.display = "block";
    }
});
</script>

</body>
</html>