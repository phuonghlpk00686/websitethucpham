<%-- 
    Document   : suakh.jsp
    Created on : Dec 3, 2016, 3:48:31 PM
    Author     : Dell
--%>

<%@page import="com.javaweb.service.khachhangService"%>
<%@page import="com.javaweb.model.Khachhang"%>
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
           <%
            khachhangService SuaKH = new khachhangService();
            Khachhang suaKH = null;
            String maKH = request.getParameter("maKH");
            suaKH = SuaKH.GetUserById(maKH);
        %>
        <div id="content">
            <div class="container">
                <div class="row col-md-8 col-md-offset-2 center">
                    <form action="suakhServlet" method="post">
                        <input style="display: none;" name="maKH" value="<%= suaKH.getMakhachhang()%>" />
                        <div class="form-group">
                            <label for="username">Username: </label>
                            <input type="text" name="username" value="<%= suaKH.getUsername()%>" class="form-control" required id="giasanpham">
                        </div>
                        <div class="form-group">
                            <label for="pwd">Password: </label>
                            <input type="text" name="pwd" value="<%=suaKH.getPassword()%>" class="form-control" required id="mota">
                        </div>
                        <div class="form-group">
                            <label for="tenkhachhang">Tên khách hàng: </label>
                            <input type="text" name="tenKH" value="<%=suaKH.getFullname()%>" class="form-control" required id="tensanpham">
                        </div>
                         <div class="form-group">
                        <label for="diachi">Địa chỉ: </label>
                        <input type="text" name="diaChi" value="<%=suaKH.getDiachi()%>" class="form-control" required id="tensanpham">
                    </div>
                     <div class="form-group">
                        <label for="sodienthoai">SĐT: </label>
                        <input type="text" name="soDienThoai" value="<%=suaKH.getSdt()%>" class="form-control" required id="tensanpham">
                    </div>
                        <button type="submit" class="btn btn-default">Edit</button>
                    </form>
                </div>
            </div>
        </div>
        <%@include file="includes/footer.jsp" %>
    </body>
</html>
