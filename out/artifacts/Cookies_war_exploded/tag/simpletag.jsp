<%--
  Created by IntelliJ IDEA.
  User: 10576
  Date: 2019/7/5
  Time: 13:58
  To change this template use File | Settings | File Templates.
--%>
<%@page import="java.util.List" %>
<%@ page import="com.atguigu.javaweb.Customer" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    List<Customer> customers = new ArrayList<>();
    customers.add(new Customer("fzq", "wuhan"));
    customers.add(new Customer("wwm", "wuhan"));
    customers.add(new Customer("xiaolan", "wuhan"));
    customers.add(new Customer("dami", "wuhan"));

    request.setAttribute("customers", customers);
    request.getRequestDispatcher("helloworld.jsp").forward(request, response);
%>
</body>
</html>