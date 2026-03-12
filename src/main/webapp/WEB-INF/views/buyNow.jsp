<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<head>
<title>Buy Car</title>
</head>

<body>

<h2>Buy Car</h2>

<form action="placeOrder" method="post">

<input type="hidden" name="carId" value="${param.carId}">

<label>Name :</label>
<input type="text" name="name">

<br><br>

<label>Mobile :</label>
<input type="text" name="mobile">

<br><br>

<label>Address :</label>
<textarea name="address"></textarea>

<br><br>

<button type="submit">Confirm Purchase</button>

</form>

</body>
</html>