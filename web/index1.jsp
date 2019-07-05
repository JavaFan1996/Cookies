<%--
  Created by IntelliJ IDEA.
  User: 10576
  Date: 2019/7/4
  Time: 14:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:useBean id="student" class="com.atguigu.javaweb.Student" scope="session"></jsp:useBean>
<jsp:setProperty name="student" property="age" value="10"></jsp:setProperty>
<jsp:getProperty name="student" property="age"/>

    <%
    %>


    </body>
    </html>
