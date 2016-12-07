<%-- 
    Document   : khachhang.jsp
    Created on : Dec 3, 2016, 4:05:20 PM
    Author     : Dell
--%>

<%@page import="com.javaweb.service.khachhangService"%>
<%@page import="java.util.ArrayList"%>
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
            int pageSize = 5;
            int pageNumber = 1;
            request.setCharacterEncoding("UTF-8");
            ArrayList<Khachhang> dsKhachhang = null;
            khachhangService sp = new khachhangService();

            if (request.getParameter("pagenumber") != null) {
                session.setAttribute("pagenumber", request.getParameter("pagenumber"));
                pageNumber = Integer.parseInt(request.getParameter("pagenumber"));
            } else {
                session.setAttribute("pagenumber", "1");
            }
            String searchKey = "";
            if (request.getParameter("key") != null) {
                session.setAttribute("searchkey", request.getParameter("key"));
                searchKey = request.getParameter("key");
                dsKhachhang = sp.SearchKhachhang(pageSize, pageNumber, searchKey);
                session.removeAttribute("searchkey");
            } else {
                dsKhachhang = sp.getAllKhachhang(pageSize, pageNumber);
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
                        <form action="khachhang.jsp" method="get">
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
                            <th>Username</th> 
                            <th>password</th>  
                            <th>Fullname</th>                                          
                            <th>Ngày sinh</th>
                            <th>Địa chỉ</th>                       
                            <th>Số điên thoại</th>
                            <th>Mã quyền</th>
                        </tr>

                    </thead>

                    <tbody>
                        <%      for (int i = 0; i < dsKhachhang.size(); i++) {
                                Khachhang KH = dsKhachhang.get(i);
                        %>        

                        <tr>
                            <td><%= i + 1%></td>                        
                            <td><%= KH.getUsername()%></td>                        
                            <td><%= KH.getPassword()%></td>                       
                            <td><%= KH.getFullname()%></td>                       
                            <td><%= KH.getNgaysinh()%></td>
                            <td><%= KH.getDiachi()%></td>
                            <td><%= KH.getMaquyen()%></td>
                            <td>
                                <a href="suakh.jsp?maKH=<%= KH.getMakhachhang()%>"><input type="button" name="Edit" value="Edit" /> </a>
                            </td>
                            <td>
                                <a href="xoaphanhoi.jsp?maPH=<%= KH.getMakhachhang()%>"><input type="button" name="Delete" value="Del" /> </a>
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
