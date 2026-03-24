<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Edit Car Brand</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

</head>

<body>

<div class="container mt-4">

    <div class="card shadow">

        <div class="card-header bg-warning">
            <h4>Edit Car Brand</h4>
        </div>

        <div class="card-body">

            <form action="updateCarBrand" method="post" enctype="multipart/form-data">

                <!-- Hidden ID -->
                <input type="hidden" name="brandId" value="${carBrand.brandId}"/>

                <div class="mb-3">
                    <label>Brand Name</label>
                    <input type="text" name="brandName" 
                           value="${carBrand.brandName}" 
                           class="form-control" required>
                </div>

                <div class="mb-3">
                    <label>Current Logo</label><br>
                    <img src="${carBrand.logoUrl}" width="120" class="mb-2"/>
                </div>

                <div class="mb-3">
                    <label>Change Logo</label>
                    <input type="file" name="logoFile" class="form-control">
                </div>

                <div class="mb-3">
                    <label>Status</label>
                    <select name="active" class="form-control">
                        <option value="true" ${carBrand.active ? 'selected' : ''}>Active</option>
                        <option value="false" ${!carBrand.active ? 'selected' : ''}>Inactive</option>
                    </select>
                </div>

                <button class="btn btn-success">Update</button>
                <a href="listbrand" class="btn btn-secondary">Cancel</a>

            </form>

        </div>

    </div>

</div>

</body>
</html>