<%-- 
    Document   : register
    Created on : Mar 30, 2021, 6:31:00 PM
    Author     : sudhakar
--%>
<%@page import="javax.swing.JOptionPane"%>
<%@include file="db.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String service=request.getParameter("sid");
     String cont=request.getParameter("content");
      String dom=request.getParameter("Domain");
      
System.out.println(dom+cont+service);
 
                 int x=JOptionPane.showConfirmDialog(null,"Want to Register?");
                     if(x==0)
                      {
                     st.executeUpdate("insert into user(sid,content,domain) values( '" + service +  "', '" + cont + "','" + dom +"')");
                    JOptionPane.showMessageDialog(null,"Register Successfully");
                    response.sendRedirect("userpage.jsp");
                        }
                        else
                        {
                         response.sendRedirect("error.html");
                         }
                
           
    %>
