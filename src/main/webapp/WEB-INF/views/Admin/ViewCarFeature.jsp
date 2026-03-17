<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>View Car Feature</title>

<jsp:include page="AdminCSS.jsp"></jsp:include>

</head>

<body>

<div class="container-scroller">

<!-- HEADER -->
<jsp:include page="AdminHeader.jsp"></jsp:include>

<div class="container-fluid page-body-wrapper">

<!-- SIDEBAR -->
<jsp:include page="AdminSidebar.jsp"></jsp:include>

<!-- MAIN PANEL -->
<div class="main-panel">

<div class="content-wrapper">

<!-- PAGE TITLE -->
<div class="row">
<div class="col-md-12 grid-margin stretch-card">
<div class="card">
<div class="card-body text-center">

<h2>Car Feature Details</h2>

</div>
</div>
</div>
</div>


<!-- FEATURE DETAILS -->
<div class="row">

<div class="col-md-12 grid-margin stretch-card">

<div class="card">

<div class="card-body">

<c:choose>

<c:when test="${not empty carFeature}">

<table class="table table-striped table-bordered">

<tr>
<th width="30%">Feature ID</th>
<td>${carFeature.featureId}</td>
</tr>

<tr>
<th>Variant ID</th>
<td>${carFeature.variantId}</td>
</tr>

<tr>
<th>Safety Features</th>
<td>${carFeature.safetyFeatures}</td>
</tr>

<tr>
<th>Comfort Features</th>
<td>${carFeature.comfortFeatures}</td>
</tr>

<tr>
<th>Entertainment Features</th>
<td>${carFeature.entertainmentFeatures}</td>
</tr>

<tr>
<th>Exterior Features</th>
<td>${carFeature.exteriorFeatures}</td>
</tr>

</table>

</c:when>

<c:otherwise>

<div class="alert alert-warning text-center">
No Car Feature Found
</div>

</c:otherwise>

</c:choose>


<!-- BUTTONS -->
<div class="text-end mt-3">

<a href="listCarFeatures" class="btn btn-secondary">
Back
</a>

<c:if test="${not empty carFeature}">
<a href="editCarFeature?featureId=${carFeature.featureId}"
   class="btn btn-warning">
Edit
</a>
</c:if>

</div>


</div>
</div>
</div>

</div>


</div>

<!-- FOOTER -->
<jsp:include page="AdminFooter.jsp"></jsp:include>

</div>

</div>

</div>

</body>
</html>