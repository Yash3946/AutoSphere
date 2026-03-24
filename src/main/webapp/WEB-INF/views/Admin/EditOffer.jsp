<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title>Edit Offer</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<link rel="stylesheet"
href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
</head>

<body>

<jsp:include page="AdminCSS.jsp"/>

<jsp:include page="AdminHeader.jsp"/>
<jsp:include page="AdminSidebar.jsp"/>

<div style="margin-left:260px; margin-top:90px; padding:30px;">

<div style="max-width:500px; margin:auto; background:white; padding:20px; border-radius:10px;">

<h4>Edit Offer</h4>



<form action="updateOffer" method="post">

<input type="hidden" name="offerId" value="${offer.offerId}"/>

<div class="mb-3">
<label>Listing</label>
<select name="listingId" class="form-control">
<c:forEach items="${allCarList}" var="l">
<option value="${l.listingId}" ${l.listingId == offer.listingId ? 'selected' : ''}>
${l.listingId}
</option>
</c:forEach>
</select>
</div>

<div class="mb-3">
<label>Buyer</label>
<select name="userId" class="form-control">
<c:forEach items="${allUser}" var="u">
<option value="${u.userId}" ${u.userId == offer.userId ? 'selected' : ''}>
${u.firstName}
</option>
</c:forEach>
</select>
</div>

<div class="mb-3">
<label>Price</label>
<input type="number" name="offeredPrice" value="${offer.offeredPrice}" class="form-control"/>
</div>

<div class="mb-3">
<label>Status</label>
<select name="offerStatus" class="form-control">
<option ${offer.offerStatus=='PENDING'?'selected':''}>PENDING</option>
<option ${offer.offerStatus=='ACCEPTED'?'selected':''}>ACCEPTED</option>
<option ${offer.offerStatus=='REJECTED'?'selected':''}>REJECTED</option>
</select>
</div>

<div class="mb-3">
<label>Date</label>
<input type="date" name="createdAt" value="${offer.createdAt}" class="form-control"/>
</div>

<button class="btn btn-primary">Update</button>

  <!-- BACK -->
            <a href="listCarOffer" class="btn btn-secondary">
                <i class="bi bi-arrow-left"></i> Back
            </a>

</form>

</div>
</div>

</body>
</html>