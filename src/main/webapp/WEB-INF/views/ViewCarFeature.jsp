<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>View Car Feature</title>

<jsp:include page="AdminCSS.jsp"></jsp:include>
</head>
<body>
	<div class="container-scroller">

		<jsp:include page="AdminHeader.jsp"></jsp:include>

		<div class="container-fluid page-body-wrapper">

			<jsp:include page="AdminLeftSidebar.jsp"></jsp:include>

			<div class="main-panel">
				<div class="content-wrapper">

					<!-- Page Title -->
					<div class="row">
						<div class="col-md-12 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<h2 style="text-align: center;">Car Feature Details</h2>
								</div>
							</div>
						</div>
					</div>

					<!-- Details Section -->
					<div class="row">
						<div class="col-md-12 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">

									<c:if test="${not empty carFeature}">
										<table class="table table-bordered">

											<tr>
												<th>Feature ID</th>
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
									</c:if>

									<c:if test="${empty carFeature}">
										<div class="alert alert-warning">
											No Car Feature Found.
										</div>
									</c:if>

									<div class="text-end mt-3">
										<a href="listCarFeatures" class="btn btn-secondary">Back</a>
										<a href="editCarFeatures?featureId=${carFeature.featureId}"
										   class="btn btn-warning">Edit</a>
									</div>

								</div>
							</div>
						</div>
					</div>

				</div>

				<jsp:include page="AdminFooter.jsp"></jsp:include>

			</div>
		</div>
	</div>

</body>
</html>