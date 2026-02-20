<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<title>User List</title>

<!-- Bootstrap CSS -->
<link rel="stylesheet"
href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">

<!-- Bootstrap Icons -->
<link rel="stylesheet"
href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">

<!-- IMPORTANT: Common Admin CSS -->
<jsp:include page="AdminCSS.jsp"/>

</head>

<body>

<!-- SIDEBAR -->
<jsp:include page="AdminSidebar.jsp"/>

<!-- HEADER -->
<jsp:include page="AdminHeader.jsp"/>

<!-- CONTENT -->
<div class="content">

    <div class="content-card">

        <div class="d-flex justify-content-between align-items-center mb-4">
            <h3 class="fw-bold">User List</h3>
            <a href="signup" class="btn btn-primary">
                + Add User
            </a>
        </div>

        <div class="table-responsive">
            <table class="table table-hover align-middle">
                <thead>
                    <tr>
                        <th>SrNo</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Role</th>
                        <th>Gender</th>
                        <th>Birth Year</th>
                        <th class="text-center">Profile</th>
                        <th>Status</th>
                        <th>Action</th>
                    </tr>
                </thead>

                <tbody>
                    <c:forEach var="user" items="${userList}" varStatus="s">
                        <tr>
                            <td>${s.count}</td>
                            <td>${user.firstName} ${user.lastName}</td>
                            <td>${user.email}</td>
                            <td>
                                <span class="badge bg-info text-dark">
                                    ${user.role}
                                </span>
                            </td>
                            <td>${user.gender}</td>
                            <td>${user.birthYear}</td>
                            <td class="text-center">
                                <c:if test="${not empty user.profilePicURL}">
                                    <img src="${user.profilePicURL}" class="profile-pic"/>
                                </c:if>
                            </td>
                            <td>
                                <c:choose>
                                    <c:when test="${user.active}">
                                        <span class="badge bg-success">Active</span>
                                    </c:when>
                                    <c:otherwise>
                                        <span class="badge bg-danger">Inactive</span>
                                    </c:otherwise>
                                </c:choose>
                            </td>
                            <td>
                                <a href="editUser?userId=${user.userId}"
                                   class="btn btn-sm btn-warning">Edit</a>

                                <a href="deleteUser?userId=${user.userId}"
                                   class="btn btn-sm btn-danger"
                                   onclick="return confirm('Are you sure?');">
                                   Delete
                                </a>

                                <a href="viewUser?userId=${user.userId}"
                                   class="btn btn-sm btn-info">
                                   View
                                </a>
                            </td>
                        </tr>
                    </c:forEach>

                    <c:if test="${empty userList}">
                        <tr>
                            <td colspan="9" class="text-center text-muted py-4">
                                No users found
                            </td>
                        </tr>
                    </c:if>

                </tbody>
            </table>
        </div>

    </div>

</div>

<!-- FOOTER -->
<jsp:include page="AdminFooter.jsp"/>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
