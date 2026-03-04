<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>List Car Models</title>

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
									<h2 style="text-align: center;">List Car Models</h2>
								</div>
							</div>
						</div>
					</div>

					<!-- Table -->
					<div class="row">
						<div class="col-md-12 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">

									<div class="table-responsive">
										<table class="table table-bordered table-hover">
											<thead class="table-dark">
												<tr>
													<th>ID</th>
													<th>Brand ID</th>
													<th>Model Name</th>
													<th>Body Type</th>
													<th>Launch Year</th>
													<th>Status</th>
													<th>Action</th>
												</tr>
											</thead>

											<tbody>
												<c:forEach items="${allCarModel}" var="m">
													<tr>
														<td>${m.modelId}</td>
														<td>${m.brandId}</td>
														<td>${m.modelName}</td>
														<td>${m.bodyType}</td>
														<td>${m.launchYear}</td>
														<td>
															<c:choose>
																<c:when test="${m.active}">
																	<span class="badge bg-success">Active</span>
																</c:when>
																<c:otherwise>
																	<span class="badge bg-danger">Inactive</span>
																</c:otherwise>
															</c:choose>
														</td>
														<td>
															<a href="viewCarModel?modelId=${m.modelId}"class="btn btn-primary btn-sm">View</a>
															<a href="editCarModel?modelId=${m.modelId}"class="btn btn-warning btn-sm">Edit</a>
															<a href="deleteCarModel?modelId=${m.modelId}"class="btn btn-danger btn-sm"onclick="return confirm('Are you sure?')">Delete</a>
														</td>
													</tr>
												</c:forEach>

												<c:if test="${empty allCarModels}">
													<tr>
														<td colspan="7" class="text-center">
															No car models found
														</td>
													</tr>
												</c:if>
											</tbody>

										</table>
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