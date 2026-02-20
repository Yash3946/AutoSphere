<style>
body{
	background:#F4F6F9;
	font-family:'Segoe UI', sans-serif;
	margin:0;
}

/* Sidebar */
.sidebar{
	width:260px;
	height:100vh;
	position:fixed;
	top:0;
	left:0;
	background:linear-gradient(180deg,#0D1B2A,#1B263B);
	color:white;
	overflow-y:auto;
	box-shadow:3px 0 15px rgba(0,0,0,0.2);
	padding-top:15px;
}

.sidebar h5{
	color:white;
	text-align:center;
	padding:10px 0;
	border-bottom:1px solid rgba(255,255,255,0.1);
}

.sidebar a{
	display:block;
	padding:12px 20px;
	color:#ADB5BD;
	text-decoration:none;
	transition:0.3s;
	font-size:14px;
}

.sidebar a:hover{
	background:#1B263B;
	color:white;
	padding-left:28px;
}

/* Header */
.header{
	margin-left:260px;
	background:linear-gradient(90deg,#0D1B2A,#1B263B);
	color:white;
	padding:15px 25px;
	display:flex;
	justify-content:space-between;
	align-items:center;
	box-shadow:0 3px 10px rgba(0,0,0,0.1);
}

/* Content */
.content{
	margin-left:260px;
	padding:40px;
}

/* Footer */
.footer{
	margin-left:260px;
	background:#0D1B2A;
	color:white;
	text-align:center;
	padding:15px;
	margin-top:40px;
}
</style>
