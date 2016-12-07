<%-- 
    Document   : logout
    Created on : Dec 3, 2016, 2:37:11 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
           <%
            if(session!=null){
                session.removeAttribute("youremail");
                response.sendRedirect("index.jsp");
            }
        %>
    </body>
</html>
