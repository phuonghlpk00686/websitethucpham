<%-- 
    Document   : header.jsp
    Created on : Nov 19, 2016, 12:59:41 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<nav class="navbar navbar-default" role="navigation">
    <!-- /.container-fluid -->
</nav>
<header class="page1">
    <div id="login">
        <div class="wrapper row0">
            <div id="topbar" class="hoc clear"> 
                <div class="fl_right">
                    <%
                        if (session.getAttribute("youremail") == null) {
                    %>
                    <ul class="nospace">
                        <li><a class="fa" href="#">Register</a></li>    
                        <li><a class="fa" href="login.jsp">Login</a></li>
                        <li><a class="fa" href="#"><i class="fa fa-lg fa-home"></i></a></li>
                    </ul>
                    <%
                    } else {
                    %>
                   <ul class="nospace">
                        <li><a class="fa" href="logout.jsp">Đăng xuất</a></li>    
                        <li><a class="fa" href="#"><%= session.getAttribute("youremail")%></a></li>
                        <li><a class="fa" href="index.jsp"><i class="fa fa-lg fa-home"></i></a></li>
                    </ul>


                    <%
                        }
                    %>
                </div>
            </div>
        </div>
    </div>
    <div class="container_12">
        <div class="grid_12 "> 
            <div class="socials ">
                <a href="#"></a>
                <a href="#"></a>
                <a href="#"></a>
                <a href="#" class="last"></a>
            </div>
        </div>
        <h1><a href="index.jsp"><img src="images/logo1.png" alt="Boo House"></a> </h1>
        <div class="menu_block">


            <nav id="bt-menu" class="bt-menu">
                <a href="#" class="bt-menu-trigger"><span>Menu</span></a>
                <ul>
                    <li class="current bt-icon "><a href="index.jsp">Home</a></li>
                    <li class="bt-icon"><a href="khachhang.jsp">Khách Hàng</a></li>
                    <li class="bt-icon"><a href="#">Menu</a></li>
                    <li class="bt-icon"><a href="#">Blog</a></li>
                    <li class="bt-icon"><a href="#">Reservation</a></li>
                    <li class="bt-icon"><a href="#">Contacts</a></li>
                </ul>
            </nav>

            <div class="clear"></div>
        </div>
        <div class="clear"></div>
    </div>
</div>
<script>
    $(document).ready(function () {
        $(".bt-menu-trigger").toggle(
                function () {
                    $('.bt-menu').addClass('bt-menu-open');
                },
                function () {
                    $('.bt-menu').removeClass('bt-menu-open');
                }
        );
    })
</script>
</header>