<%-- 
    Document   : userpage
    Created on : Apr 24, 2021, 9:05:23 PM
    Author     : sudhakar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <link rel="stylesheet" href="./style/main.css"/>
        <style>
            input[type=text], select {
  width: 80%;
  padding: 12px 20px;
  margin: 8px 0;
  margin-right: 2em;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 10px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 80%;
  background-color: #3f4663;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

div {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
  margin-right: 15em;
  margin-left: 15em;
  margin-top: 3em;
}
        </style>
        <title>JSP Page</title>
    </head>
    <body>
        <div align="center">
            <h1>User Login</h1>
            <a href="index.html">Home</a>
        </div>
        <div>
            <form action="login.jsp" method="post">
                 <h4>Service Identifier</h4>
      <input type="text" id="fname"  name="sid" placeholder="Service Identifier" autocomplete="off" required  maxlength="25"/>

<!--    <h4>Content</h4>
    <input type="text" id="lname"  name="content" placeholder="DNS name" autocomplete="off" required>-->
    <input type="submit" value="Submit">
            </form>
        </div>
    </body>
</html>
