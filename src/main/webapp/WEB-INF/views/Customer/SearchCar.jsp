<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<title>Search Cars</title>

<style>
body {
    font-family: Arial;
    background: #f4f6fb;
}

/* HEADER */
.header {
    display: flex;
    align-items: center;
    padding: 15px 40px;
    background: white;
    border-bottom: 1px solid #ddd;
}

.logo {
    font-size: 24px;
    font-weight: bold;
    color: #6a1b9a;
    text-decoration: none;
}

/* SEARCH BAR */
.search-bar {
    margin-left: 20px;
}

.search-bar input[type="text"] {
    padding: 8px;
    width: 250px;
}

.search-bar input[type="submit"] {
    padding: 8px 15px;
    background: #6a1b9a;
    color: white;
    border: none;
    cursor: pointer;
}

/* CARD */
.container {
    display: flex;
    flex-wrap: wrap;
    gap: 20px;
    padding: 30px;
}

.card {
    width: 250px;
    background: white;
    border-radius: 10px;
    overflow: hidden;
    box-shadow: 0 4px 10px rgba(0,0,0,0.1);
    transition: 0.3s;
}

.card:hover {
    transform: translateY(-5px);
}

.card img {
    width: 100%;
    height: 150px;
    object-fit: cover;
}

.card-content {
    padding: 10px;
}

.card h3 {
    margin: 0;
    font-size: 16px;
}

.card p {
    color: #6a1b9a;
    font-weight: bold;
}

.no-data {
    text-align: center;
    font-size: 22px;
    margin-top: 50px;
}
</style>

</head>

<body>

<!-- HEADER -->
<div class="header">
    <a href="customer-dashboard" class="logo">AutoSphere</a>

    <!-- 🔥 SEARCH FORM -->
    <form action="searchCar" method="post" class="search-bar">
        <input type="text" name="car" placeholder="Search cars..." required>
        <input type="submit" value="Search">
    </form>
</div>

<!-- RESULT SECTION -->
<div class="container">

<c:choose>

    <c:when test="${not empty customerCarList}">
    
        <c:forEach var="car" items="${customerCarList}">
            
            <a href="customerViewCarListing1?listingId=${car.listingId}" style="text-decoration:none; color:black;">
                
                <div class="card">
                    <img src="${car.imageUrl}" alt="car">
                    
                    <div class="card-content">
                        <h3>${car.brandName} ${car.modelName}</h3>
                        <p>₹ ${car.price}</p>
                    </div>
                </div>
                
            </a>
            
        </c:forEach>

    </c:when>

    <c:otherwise>
        <div class="no-data">
            No Cars Found ❌
        </div>
    </c:otherwise>

</c:choose>

</div>

</body>
</html>
