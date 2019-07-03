<%--
  Created by IntelliJ IDEA.
  User: 10576
  Date: 2019/7/2
  Time: 19:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
     <!--向客户浏览器端写入一个Cookie：cookiepath ,cookiepath -->
<%
    Cookie cookie = new Cookie("cookiepath", "cookiepath");
    //设置cookie的作用范围 "/"代表站点的根目录。
    cookie.setPath(request.getContextPath());
    response.addCookie(cookie);

%>
     <a href="../cookie2.jsp">To read cookie</a>


</body>
</html>
</body>