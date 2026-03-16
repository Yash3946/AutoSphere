<!-- ================= FOOTER ================= -->

<style>

.footer{
position:fixed;
bottom:0;
left:260px;                 /* sidebar width */
width:calc(100% - 260px);   /* remaining screen */
height:60px;
background:#020617;
color:#CBD5E1;
display:flex;
align-items:center;
justify-content:space-between;
padding:0 40px;
font-size:14px;
border-top:1px solid #1E293B;
z-index:1000;
}

.footer-left{
font-weight:400;
}

.footer-right{
font-weight:400;
}

/* mobile */

@media (max-width:768px){

.footer{
left:0;
width:100%;
}

}

</style>

<footer class="footer">

<div class="footer-left">
© 2026 <b>AutoSphere</b> Admin Panel
</div>

<div class="footer-right">
Developed by <b>AutoSphere Team</b>
</div>

</footer>