<%--
  Created by IntelliJ IDEA.
  User: 10576
  Date: 2019/7/5
  Time: 14:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:forEach items="${requestScope.customers}" var="customer">

${customer.name},${customer.address}<br>


</c:forEach>

</body>
</html>
