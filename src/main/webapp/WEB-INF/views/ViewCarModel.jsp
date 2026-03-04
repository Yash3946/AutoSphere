<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>View Car Model</title>

<jsp:include page="AdminCSS.jsp"></jsp:include>
</head>
<body>
	<div class="container-scroller">

		<jsp:include page="AdminHeader.jsp"></jsp:include>

		<div class="container-fluid page-body-wrapper">

			<jsp:include page="AdminLeftSidebar.jsp"></jsp:include>

			<div class="main-panel">
				<div class="content-wrapper">

					<div class="row">
						<div class="col-md-12 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<h2 style="text-align: center;">Car Model Details</h2>
								</div>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-md-12 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">

									<c:if test="${not empty carModel}">
										<table class="table table-bordered">

											<tr>
												<th>Model ID</th>
												<td>${carModel.modelId}</td>
											</tr>

											<tr>
												<th>Brand ID</th>
												<td>${carModel.brandId}</td>
											</tr>

											<tr>
												<th>Model Name</th>
												<td>${carModel.modelName}</td>
											</tr>

											<tr>
												<th>Body Type</th>
												<td>${carModel.bodyType}</td>
											</tr>

											<tr>
												<th>Launch Year</th>
												<td>${carModel.launchYear}</td>
											</tr>

											<tr>
												<th>Status</th>
												<td>
													<c:choose>
														<c:when test="${carModel.active}">
															<span class="badge bg-success">Active</span>
														</c:when>
														<c:otherwise>
															<span class="badge bg-danger">Inactive</span>
														</c:otherwise>
													</c:choose>
												</td>
											</tr>

										</table>
									</c:if>

									<c:if test="${empty carModel}">
										<div class="alert alert-warning">
											No Car Model Found.
										</div>
									</c:if>

									<div class="text-end mt-3">
										<a href="listCarModel" class="btn btn-secondary">Back</a>
										<a href="editCarModel?modelId=${carModel.modelId}"
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