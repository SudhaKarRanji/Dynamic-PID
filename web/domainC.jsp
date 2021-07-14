<%-- 
    Document   : domainA
    Created on : Mar 30, 2021, 2:11:39 PM
    Author     : sudhakar
--%>
<%@include file="db.jsp" %>
<%@page import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Domain C</title>
        <link rel="stylesheet" href="./style/main.css">
        <style>
            body{
                background-color:darkcyan;
            }
            table{
                margin-top: 40px;
                margin-bottom: 20px;
            }
        </style>
    </head>
    <body>
        
        
        <div class="body_header">
            <h1>Domain C Controller</h1>  
            <a href="domain.html"><button class="button button1">Home</button></a>
        </div>
        <div class="table">
            <h2>Resource Manager</h2>
            <table id="customers">
                <tr>
                    <th>As.no</th>
                    <th>Path No</th>
                    <th>PID Prefix</th>
                    <th>PID</th>
                    <th>Start time</th>
                    <th>Expiry time</th>

                </tr>
                 <%                    String upperAlphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
                    String lowerAlphabet = "abcdefghijklmnopqrstuvwxyz";
                    String numbers = "0123456789";
                    String alphaNumeric = upperAlphabet + lowerAlphabet + numbers;
                    StringBuilder sb = new StringBuilder();
                    Random random = new Random();
                    int length = 10;
                    for (int i = 0; i < length; i++) {
                        int index = random.nextInt(alphaNumeric.length());
                        char randomChar = alphaNumeric.charAt(index);
                        sb.append(randomChar);
                    }
                    String randomString = sb.toString();
                    System.out.println("Random String is: " + randomString);
                %>
                <%
                    String Domain ="C";
                    String query="select * from rm where domain='"+Domain+"'";
                    PreparedStatement check=con.prepareStatement(query);
                    ResultSet rs=check.executeQuery();
                    while(rs.next()){
                    
                %>
                <tr>
                    <td><%=rs.getString(2)%></td>
                    
                    <td><%=rs.getString(3)%></td>
                    <td><%=randomString%></td>
                    <td><%=rs.getString(5)%></td>
                    <td><%=rs.getString(6)%></td>
                    <td><%=rs.getString(7)%></td>

                </tr>
                <%}%>
            </table>
            
            
            
            
            
        </div>
            
       <div class="table">
            <h2>Border Manager</h2>
            <table id="customers">
                <tr>
                    <th>Path No</th>
                    <th>PID</th>
                    <th>Expiry time</th>
                    <th>Border Router</th>

                </tr>
                <%
                   
                    
                    String query1="SELECT rm.pathno,rm.pid,rm.exp,br.router,rm.domain FROM dpid.rm INNER JOIN dpid.br on rm.domain=br.domain where rm.domain='"+Domain+"'";
                    PreparedStatement check1=con.prepareStatement(query1);
                    ResultSet rs1=check1.executeQuery();
                    while(rs1.next()){
                    
                %>
                <tr>
                    <td><%=rs1.getString(1)%></td>
                    <td><%=rs1.getString(2)%></td>
                    <td><%=rs1.getString(3)%></td>
                    <td><%=rs1.getString(4)%></td>
                    
               

                </tr>
                <%}%>
            </table>
            </div>  
            
            <div class="table">
            <h2>Service Manager</h2>
            <table id="customers">
                <tr>
                    <th>Service Name</th>
                    <th>Content</th>
                    <th>Domain</th>

                </tr>
                <!--service manager-->
                <%
                   
                    
                    //String query2="SELECT rm.pathno,rm.pid,rm.exp,br.router,rm.domain FROM dpid.rm INNER JOIN dpid.br on rm.domain=br.domain where rm.domain='"+Domain+"'";
                    String query2 = "SELECT * FROM dpid.`user` u where domain='"+Domain+"'";
                    PreparedStatement check2=con.prepareStatement(query2);
                    ResultSet rs2=check2.executeQuery();
                    while(rs2.next()){
                    
                %>
                <tr>
                    
                    <td><%=rs2.getString(2)%></td>
                    <td><%=rs2.getString(3)%></td>
                    <td><%=rs2.getString(4)%></td>
                    
               

                </tr>
                <%}%>
            </table>
            </div> 
        
            <script>

            function timedRefresh(timeoutPeriod) {
                setTimeout("location.reload(true);", timeoutPeriod);
            }

            window.onload = timedRefresh(20000);


        </script>  
          

</body>
</html>
