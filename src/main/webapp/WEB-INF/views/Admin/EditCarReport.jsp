<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title>Edit Car Report</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
.edit-card {
    max-width: 850px;
    width: 100%;
    border-radius: 18px;
    box-shadow: 0 20px 50px rgba(0,0,0,0.25);
    overflow: hidden;
}

/* Header */
.edit-header {
    background: linear-gradient(135deg,#0D1B2A,#1B263B);
    color: white;
    padding: 20px 30px;
    font-size: 22px;
    font-weight: 600;
}

/* Body */
.edit-body {
    padding: 30px 35px;
}

/* Inputs */
.form-control, .form-select {
    height: 45px;
    font-size: 15px;
    border-radius: 8px;
}

/* Labels */
.form-label {
    font-weight: 600;
    margin-bottom: 6px;
}

/* Footer */
.edit-footer {
    padding: 20px 35px;
    display: flex;
    justify-content: flex-end;
    gap: 12px;
}
</style>

<jsp:include page="AdminCSS.jsp"/>

</head>

<body>

<jsp:include page="AdminHeader.jsp"/>
<jsp:include page="AdminSidebar.jsp"/>

<!-- 🔥 FIXED POSITION (UPPER + LEFT) -->
<div style="margin-left:280px; margin-top:50px; padding-right:30px;">

    <div class="edit-card">

        <!-- HEADER -->
        <div class="edit-header">
            Edit Car Report
        </div>

        <!-- BODY -->
        <div class="edit-body">

            <form action="updateCarReport" method="post">

                <input type="hidden" name="reportId" value="${report.reportId}"/>

                <!-- USER -->
                <div class="mb-3">
                    <label class="form-label">User</label>
                    <select name="userId" class="form-select">
                        <c:forEach items="${allUser}" var="u">
                            <option value="${u.userId}" 
                                ${u.userId == report.userId ? 'selected' : ''}>
                                ${u.firstName} ${u.lastName}
                            </option>
                        </c:forEach>
                    </select>
                </div>

                <!-- LISTING -->
                <div class="mb-3">
                    <label class="form-label">Listing</label>
                    <select name="listingId" class="form-select">
                        <c:forEach items="${allCar}" var="c">
                            <option value="${c.listingId}" 
                                ${c.listingId == report.listingId ? 'selected' : ''}>
                                ${c.listingId}
                            </option>
                        </c:forEach>
                    </select>
                </div>

                <!-- REASON -->
                <div class="mb-3">
                    <label class="form-label">Reason</label>
                    <input type="text" name="reason" 
                           value="${report.reason}" 
                           class="form-control"/>
                </div>

                <!-- STATUS -->
                <div class="mb-3">
                    <label class="form-label">Status</label>
                    <select name="status" class="form-select">
                        <option ${report.status=='OPEN'?'selected':''}>OPEN</option>
                        <option ${report.status=='RESOLVED'?'selected':''}>RESOLVED</option>
                        <option ${report.status=='REJECTED'?'selected':''}>REJECTED</option>
                    </select>
                </div>

                <!-- DATE -->
                <div class="mb-3">
                    <label class="form-label">Date</label>
                    <input type="date" name="createdAt" 
                           value="${report.createdAt}" 
                           class="form-control"/>
                </div>

                <!-- FOOTER -->
                <div class="edit-footer">

                    <a href="listCarReports" class="btn btn-secondary">
                        Back
                    </a>

                    <button class="btn btn-success">
                        Update
                    </button>

                </div>

            </form>

        </div>

    </div>

</div>

</body>
</html>