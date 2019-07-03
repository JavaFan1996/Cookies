<%--
  Created by IntelliJ IDEA.
  User: 10576
  Date: 2019/7/2
  Time: 18:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<!--读取一个name为cookie path的Cookie -->

<%
    String cookieVal = null;
    Cookie[] cookies = request.getCookies();
    if (cookies != null && cookies.length > 0) {
        for (Cookie cookie : cookies) {
            if ("cookiepath".equals(cookie.getName())) {
                cookieVal = cookie.getValue();
            }
        }
    }


    if (cookieVal != null) {
        out.print(cookieVal);

    }else {
        out.print("没有指定的Cookie");
    }
%>

</body>
</html>
</body>