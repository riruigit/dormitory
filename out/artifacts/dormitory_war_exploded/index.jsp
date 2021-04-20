<%--
  Created by IntelliJ IDEA.
  User: 18364
  Date: 2021/4/14
  Time: 13:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <%
    // 重定向到新地址

    response.setStatus(response.SC_MOVED_TEMPORARILY);
    response.setHeader("Location", "./layui/page/login.jsp");
  %>
  </body>
</html>
