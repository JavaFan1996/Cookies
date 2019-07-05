<%@ page import="com.atguigu.javaweb.Customer" %>
<%@ page import="com.atguigu.javaweb.Student" %><%--
  Created by IntelliJ IDEA.
  User: 10576
  Date: 2019/7/4
  Time: 14:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form action="el.jsp" method="post">

    Username:<input type="text" name="username"
                    value="<%=request.getParameter("username") == null ? "" : request.getParameter("username")%>">
    Username:<input type="text" name="username" value="${param.username}"/>

    <input type="submit" value="Submit">


    <br><br>
    <jsp:useBean id="student" class="com.atguigu.javaweb.Student" scope="session"></jsp:useBean>
    <jsp:setProperty name="student" property="age" value="10"/>
    <jsp:setProperty name="student" property="id" value="1001"/>
    age:<%
    Student student1 = (Student) session.getAttribute("student");
    out.print(student1.getAge());
%>
</form>
username:<%=request.getParameter("username")%>
age:${sessionScope.student.age}
<br>
AAAAage:${student["age"]}
</body>
</html>
