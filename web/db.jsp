<%-- 
    Document   : db
    Created on : Mar 30, 2021, 2:14:17 PM
    Author     : sudhakar
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Connection con=null;
            Statement st=null;
            try{
                Class.forName("com.mysql.jdbc.Driver");
                con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dpid", "root", "admin");
                st=con.createStatement();
                        
            }catch(Exception e){
                e.printStackTrace();
            }
            %>
    </body>
</html>
