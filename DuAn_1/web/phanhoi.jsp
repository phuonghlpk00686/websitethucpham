<%-- 
    Document   : phanhoi
    Created on : Dec 5, 2016, 10:12:44 AM
    Author     : Dell
--%>

<%@page import="com.javaweb.service.phanhoiService"%>
<%@page import="com.javaweb.model.Phanhoi"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quản lý phản hồi</title>
        <%@include file="includes/footer.jsp" %>
    </head>
    <body>
        <%@include file="includes/header.jsp" %>
        <%            int pageSize = 5;
            int pageNumber = 1;
            request.setCharacterEncoding("UTF-8");
            ArrayList<Phanhoi> dsPhanhoi = null;
            phanhoiService sp = new phanhoiService();

            if (request.getParameter("pagenumber") != null) {
                session.setAttribute("pagenumber", request.getParameter("pagenumber"));
                pageNumber = Integer.parseInt(request.getParameter("pagenumber"));
            } else {
                session.setAttribute("pagenumber", "1");
            }
            int pageCount = (sp.usercount / pageSize)
                    + (sp.usercount % pageSize > 0 ? 1 : 0);

            String nextPage = (pageCount > pageNumber
                    ? (pageNumber + 1) : pageNumber) + "";
            String prePage = (pageNumber <= 1 ? 1 : pageNumber - 1) + "";
        %>/*
        <div id="content">
            <div class="panel panel-default">
                <div class="row">
                    <div class="col-md-12">
                        <form action="phanhoi.jsp" method="get">
                            <div class="input-group">

                                <input type="text" class="form-control" name="key" placeholder="Search for...">
                                <span class="input-group-btn">                                        
                                    <button class="btn btn-default btn-danger" type="submit">Search!</button>
                                </span>
                            </div><!-- /input-group -->
                        </form>

                    </div><!-- /.col-lg-6 -->
                </div>
                <table class="table">
                    <thead>
                        <tr>
                            <th>TT</th>                        
                            <th>Email</th> 
                            <th>Tiêu đề</th>  
                            <th>Nội dung</th>                                          
                        </tr>

                    </thead>

                    <tbody>
                        <%      for (int i = 0; i < dsPhanhoi.size(); i++) {
                                Phanhoi ph = dsPhanhoi.get(i);
                        %>        

                        <tr>
                            <td><%= i + 1%></td>                        
                            <td><%= ph.getEmail()%></td>                        
                            <td><%= ph.getTieude()%></td>                       
                            <td><%= ph.getNoidung()%></td>                       
                            <td>
                                <a href="suakh.jsp?maKH=<%= ph.getMaphanhoi()%>"><input type="button" name="Reply" value="Edit" /> </a>
                            </td>
                            <td>
                                <a href="xoakh.jsp?maKH=<%= ph.getMaphanhoi()%>"><input type="button" name="Delete" value="Del" /> </a>
                            </td>

                        </tr>
                        <%
                            }
                        %>
                    </tbody>
                </table>
                <%
                    String keyurl = "";
                    if (!searchKey.equals("")) {
                        keyurl = "&key=" + searchKey;
                    }
                %>
                <ul class="pagination pager">
                    <li><a  aria-label="Previous" href="?pagenumber=<%=prePage%><%=keyurl%> " > <span %><%=keyurl%> aria-hidden="true">&laquo;</span></a></li>
                        <%

                            for (int j = 1; j <= pageCount; j++) {
                                if (pageNumber == j) {
                        %>
                    <li class="active"><a href="?pagenumber=<%=j%><%=keyurl%>"><%=j%></a></li>
                        <%
                        } else {
                        %>                                   
                    <li ><a href="?pagenumber=<%=j%><%=keyurl%>"><%=j%></a></li>

                    <%
                            }
                        }
                    %>
                    <li ><a aria-label="Next" href="?pagenumber=<%=nextPage%><%=keyurl%>"><span aria-hidden="true">&raquo;</span></a></li>
                </ul>
            </div>
        </div>
        <%@include file="includes/footer.jsp" %>
    </body>
</html>
