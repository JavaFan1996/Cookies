<%--
  Created by IntelliJ IDEA.
  User: 10576
  Date: 2019/7/3
  Time: 10:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%=session.getId()
%>

<%
    Cookie cookie = new Cookie("JSESSIONID", session.getId());
    cookie.setMaxAge(20);
    response.addCookie(cookie);

%>

</body>
</html>
