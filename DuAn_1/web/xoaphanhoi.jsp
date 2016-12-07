<%-- 
    Document   : xoaphanhoi
    Created on : Dec 5, 2016, 10:25:31 AM
    Author     : Dell
--%>

<%@page import="com.javaweb.service.phanhoiService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            phanhoiService ph = new phanhoiService();
            int maPH = Integer.parseInt(request.getParameter("maPH"));
            boolean dPH = ph.XoaPhanhoi(maPH);
            if(dPH){
                String url = "/phanhoi.jsp";
                getServletContext().getRequestDispatcher(url).forward(request, response);
            }
        %>
    </body>
</html>
