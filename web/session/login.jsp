<%--
  Created by IntelliJ IDEA.
  User: 10576
  Date: 2019/7/3
  Time: 11:25
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

<%
    Object username = session.getAttribute("username");
    if (username == null) {
        username = "";
    }
%>
<form action="hello.jsp" method="post">

    username:<input type="text" name="username" value="<%=username%>">
    <input type="submit" value="登录">



</form>

</body>
</html>
