<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Car Brand List</title>

<!-- Bootstrap 5 CSS (optional but looks nice) -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
    .btn-edit {
        background-color: #007bff;
        color: white;
    }
    .btn-edit:hover {
        background-color: #0056b3;
        color: white;
    }
    .btn-delete {
        background-color: #dc3545;
        color: white;
    }
    .btn-delete:hover {
        background-color: #a71d2a;
        color: white;
    }
   
    
 
    
    
    }
</style>

<jsp:include page="AdminCSS.jsp"></jsp:include>
</head>

<body class="bg-light">


<!-- header -->
	<jsp:include page="AdminHeader.jsp"></jsp:include>


	<!-- Sidebar -->
	<jsp:include page="AdminSidebar.jsp"></jsp:include>
	

	
	

<div class="content">
    <h2 class="mb-3 text-center text-purple">Car Brand List</h2>
   		<div class="btn">
	    	<a href="addbrand" class="btn btn-info">+ Add Brand</a>
		</div>

    <table class="table table-bordered table-striped bg-white">
        <thead class="table-dark">
        <tr>
            <th>Brand ID</th>
            <th>Brand Name</th>
            <th>Logo URL</th>
            <th>Active</th>
            <th>Action</th>
        </tr>
        </thead>

        <tbody>
        <c:forEach var="car" items="${brandList}">
            <tr>
                <td>${car.brandId}</td>
                <td>${car.brandName}</td>
                <td>${car.logoUrl}</td>
                <td>${car.active}</td>

                <td>
                    <!-- Edit Button -->
                    <a href="editbrand?brandId=${car.brandId}"
                       class="btn btn-primary">
                        Edit
                    </a>

                    <!-- Delete Button -->
                    <a href="deletebrand?brandId=${car.brandId}"
                       class="btn btn-danger"
                       onclick="return confirm('Are you sure you want to delete this brand?');">
                        Delete
                    </a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
   
</div>

<jsp:include page="AdminFooter.jsp"></jsp:include>

<!-- Optional Bootstrap 5 JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>