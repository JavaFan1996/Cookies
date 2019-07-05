<%--
  Created by IntelliJ IDEA.
  User: 10576
  Date: 2019/7/4
  Time: 15:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="testEl.jsp" method="post">

    Username:<input type="text" name="username">
    Age:<input type="text" name="age">
    Gender：<input type="checkbox" name="gender">
    <input type="submit" value="Submit">


</form>
<br><br>

username:${param.username}
age:${param.age}

</body>
</html>
