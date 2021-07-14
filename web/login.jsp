<%-- 
    Document   : login
    Created on : Apr 24, 2021, 9:11:39 PM
    Author     : sudhakar
--%>
<%@page import="javax.swing.JOptionPane"%>
<%@include file="db.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
        String sid=request.getParameter("sid");
        
           
 try{
                String query="select sid from user where sid=?";
                PreparedStatement check=con.prepareStatement(query);
                check.setString(1,sid);
               
                System.out.println("Database connected");
                ResultSet rs=check.executeQuery();
                
               if(rs.next()){
                  
                    JOptionPane.showMessageDialog(null, "Welcome "+sid );
                    session.setAttribute("sid",rs.getString("sid"));
                    System.out.println(sid);
                    System.out.println("data verified");
            response.sendRedirect("domainreg.jsp?uid="+sid);
               }else{
                       JOptionPane.showMessageDialog(null, "you are not a Authorized user");
            response.sendRedirect("user.html");
                   }
              
            }catch(Exception e){
                JOptionPane.showMessageDialog(null,e);
            }


%>