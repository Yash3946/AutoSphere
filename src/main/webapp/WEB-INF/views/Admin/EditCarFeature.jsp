<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Car Feature</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<jsp:include page="AdminCSS.jsp"/>

<style>
body{
    background:#F4F6F9;
}
.content{
    margin-left:260px;
    padding:30px;
}
.content-card{
    max-width:500px;
    margin:auto;
    background:white;
    padding:25px;
    border-radius:15px;
}
</style>
</head>

<body>

<jsp:include page="AdminSidebar.jsp"/>
<jsp:include page="AdminHeader.jsp"/>

<div class="content">
<div class="content-card">

<h4 class="text-center mb-4">Edit Car Feature</h4>

<form action="updateCarFeature" method="post">

    <!-- Hidden ID -->
    <input type="hidden" name="featureId" value="${carFeature.featureId}"/>

    <!-- Variant -->
    <div class="mb-3">
        <label>Car Variant</label>
        <select name="variantId" class="form-select">
            <c:forEach items="${allCarType}" var="v">
                <option value="${v.modelId}"
                    ${v.modelId == carFeature.variantId ? 'selected' : ''}>
                    ${v.modelName}
                </option>
            </c:forEach>
        </select>
    </div>

    <!-- Safety -->
    <div class="mb-3">
        <label>Safety</label>
        <input type="text" name="safetyFeatures"
               value="${carFeature.safetyFeatures}"
               class="form-control"/>
    </div>

    <!-- Comfort -->
    <div class="mb-3">
        <label>Comfort</label>
        <input type="text" name="comfortFeatures"
               value="${carFeature.comfortFeatures}"
               class="form-control"/>
    </div>

    <!-- Entertainment -->
    <div class="mb-3">
        <label>Entertainment</label>
        <input type="text" name="entertainmentFeatures"
               value="${carFeature.entertainmentFeatures}"
               class="form-control"/>
    </div>

    <!-- Exterior -->
    <div class="mb-3">
        <label>Exterior</label>
        <input type="text" name="exteriorFeatures"
               value="${carFeature.exteriorFeatures}"
               class="form-control"/>
    </div>
     <a href="listCarVariant" class="btn btn-secondary">
         Back
    </a>

    <button class="btn btn-primary">
        Update Feature
    </button>

</form>

</div>
</div>

</body>
</html>