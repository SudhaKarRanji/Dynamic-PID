<%-- 
    Document   : domainreg
    Created on : May 1, 2021, 7:38:28 PM
    Author     : sudhakar
--%>
<%@include file="db.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" href="./style/main.css"/>
    </head>
    <body>
     
        <%
     
       String sid=(String)session.getAttribute("sid");
        %>
        <div align="center">
            <h2>Welcome  <%=session.getAttribute("sid")%> </h2>
            <a href="userpage.jsp"><button class="button button1">Home</button></a>
        </div>
            <div class="table">
            <h2>Service Manager</h2>
            <table id="customers">
                <tr>
                    
                    <th>Content</th>
                    <th>Domain</th>

                </tr>
            <%
                String que="select * from user where sid='"+sid+"'";
                PreparedStatement check2=con.prepareStatement(que);
                    ResultSet rs2=check2.executeQuery();
                    while(rs2.next()){
                %>
                
      <tr>
                    
                    
          <td><a href="land.html"><%=rs2.getString(3)%></a></td>
                    <td><%=rs2.getString(4)%></td>
                    
               

                </tr>
                <%}%>
            </table>
            </div> 
    </body>
</html>
