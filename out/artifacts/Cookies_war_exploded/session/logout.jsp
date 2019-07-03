<%--
  Created by IntelliJ IDEA.
  User: 10576
  Date: 2019/7/3
  Time: 11:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
SessionId:<%=session.getId()%>
<br><br>
IsNew:<%=session.isNew()%>
<br><br>
MaxInactiveInternal:<%=session.getMaxInactiveInterval()%>
<br><br>
CreatTime:<%=session.getCreationTime()%>
<br><br>
LastAccessTime:<%=session.getLastAccessedTime()%>
<br><br>
Bye:<%=session.getAttribute("username")%>
<br><br>
<a href="login.jsp">重新登录</a>
<%
    session.invalidate();
%>

</body>
</html>
