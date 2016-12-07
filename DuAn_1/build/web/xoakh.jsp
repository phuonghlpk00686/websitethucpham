<%-- 
    Document   : xoakh
    Created on : Dec 3, 2016, 3:48:43 PM
    Author     : Dell
--%>

<%@page import="com.javaweb.service.khachhangService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            khachhangService kh = new khachhangService();
            int maKH = Integer.parseInt(request.getParameter("maKH"));
            boolean dKH = kh.XoaKhachHang(maKH);
            if(dKH){
                String url = "/khachhang.jsp";
                getServletContext().getRequestDispatcher(url).forward(request, response);
            }
        %>
    </body>
</html>
