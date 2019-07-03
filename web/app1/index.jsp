<%--
  Created by IntelliJ IDEA.
  User: 10576
  Date: 2019/7/2
  Time: 17:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String name = request.getParameter("name");
    if (name != null && name != "") {
        Cookie cookie = new Cookie("name", name);
        cookie.setMaxAge(30);
        response.addCookie(cookie);

    }else {
        Cookie[] cookies = request.getCookies();
        if (cookies != null && cookies.length > 0) {
            for (Cookie cookie : cookies) {
                String coolieName = cookie.getName();
                if ("name".equals(coolieName)) {
                    String val = cookie.getValue();
                    name = val;
                }
            }
        }
    }
    if (name != null && name != "") {
        out.print("hello:" + name);

    }else {
        response.sendRedirect("login.jsp");
    }
%>

</body>
</html>
