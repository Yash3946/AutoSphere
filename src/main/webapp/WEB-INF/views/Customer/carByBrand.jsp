<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<!-- HEADER -->
<jsp:include page="CustomerHeader.jsp"/>
<meta charset="UTF-8">
<title>${brand} Cars</title>

<link rel="stylesheet"
 href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">

<style>

body{
    background: #eef2f7;
    font-family: 'Segoe UI', sans-serif;
}

.container{
    margin-top: 30px;
}

.title{
    text-align: center;
    margin-bottom: 30px;
    font-weight: 700;
    color:#333;
}

/* GRID */
.car-grid{
    display:grid;
    grid-template-columns: repeat(auto-fit, minmax(300px,1fr));
    gap:25px;
}

/* CARD */
.car-card{
    background:#fff;
    border-radius:18px;
    padding:18px;
    box-shadow:0 6px 20px rgba(0,0,0,0.08);
    transition:0.3s;
}

.car-card:hover{
    transform:translateY(-6px);
    box-shadow:0 12px 30px rgba(0,0,0,0.15);
}

/* IMAGE */
.car-card img{
    width:100%;
    height:180px;
    object-fit:contain;
    background:#f5f5f5;
    border-radius:12px;
    margin-bottom:10px;
}

/* TITLE */
.car-title{
    font-size:18px;
    font-weight:700;
    color:#222;
}

/* PRICE */
.price{
    font-size:20px;
    font-weight:bold;
    color:#28a745;
}

/* DETAILS GRID */
.details{
    display:grid;
    grid-template-columns: 1fr 1fr;
    gap:8px;
    margin-top:10px;
    font-size:14px;
}

/* LABEL */
.label{
    color:#777;
}

/* STATUS */
.status{
    margin-top:10px;
    font-weight:600;
}

.status.available{
    color:green;
}

.status.sold{
    color:red;
}

/* BUTTON */
.view-btn{
    margin-top:15px;
    width:100%;
    border-radius:25px;
}

/* BACK BUTTON */
.back-btn{
    margin-bottom:20px;
}

/* NO DATA */
.no-data{
    text-align:center;
    margin-top:40px;
    color:#777;
}

</style>

</head>

<body>

<div class="container">

    <!-- BACK -->
    <a href="customer-dashboard#brands" class="btn btn-secondary back-btn">← Back</a>

    <!-- TITLE -->
    <h2 class="title">${brand} Cars</h2>

    <!-- GRID -->
    <div class="car-grid">

        <c:forEach var="car" items="${cars}">
            <div class="car-card">

                <!-- IMAGE -->
                <img src="${car.imageUrl}" alt="Car Image">

                <!-- TITLE -->
                <div class="car-title">
                    ${car.brandName} ${car.modelName}
                </div>

                <div>${car.variantName}</div>

                <!-- PRICE -->
                <div class="price">₹ ${car.price}</div>

                <!-- DETAILS -->
                <div class="details">
                    <div><span class="label">Year:</span> ${car.year}</div>
                    <div><span class="label">KMS:</span> ${car.kmsDriven}</div>
                    <div><span class="label">City:</span> ${car.city}</div>
                    <div><span class="label">Owner:</span> ${car.ownership}</div>
                    <div><span class="label">Listed:</span> ${car.createdAt}</div>
                    <div><span class="label">ID:</span> ${car.listingId}</div>
                </div>

            <%--     <!-- STATUS -->
                <c:choose>
                    <c:when test="${car.status == 'Available'}">
                        <div class="status available">● Available</div>
                    </c:when>
                    <c:otherwise>
                        <div class="status sold">● Sold</div>
                    </c:otherwise>
                </c:choose>
 --%>
                <!-- BUTTON -->
                <a href="buyNow?listingId=${car.listingId}" 
   class="btn btn-success view-btn">
   Buy Now →
</a>

            </div>
        </c:forEach>

    </div>

    <!-- NO DATA -->
    <c:if test="${empty cars}">
        <div class="no-data">
            <h4>No cars found 😢</h4>
        </div>
    </c:if>

</div>
<jsp:include page="CustomerFooter.jsp"/>
</body>
</html>