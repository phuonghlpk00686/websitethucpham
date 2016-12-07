<%-- 
    Document   : login.jsp
    Created on : Nov 30, 2016, 10:28:13 AM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="includes/headtag.jsp" %>
    </head>
    <body>
        <%@include file="includes/header.jsp" %>
        <div id="content">
            <div class="row center">
                <form action="loginServlet" method="post">
                    <h3><img src="images/Login.png"> Đăng Nhập</h3></br></br>
                    <div class="form-group ">
                        <label for="email">Email address:</label>
                        <input type="text" required="" name="youremail" class="form-control" id="email">
                    </div>
                    <div class="form-group1">
                        <label for="pwd">Password:</label>
                        <input type="password" required="" name="yourpwd" class="form-control" id="pwd">
                    </div>
                    <div class="checkbox">
                        <label><input type="checkbox" name="rememberMe" value="Y">Remember me</label>
                    </div>
                    <button type="submit" class="btn btn-default ">Login</button>
                </form>
            </div>
        </div>
        <%@include file="includes/footer.jsp" %>
    </body>
</html>
