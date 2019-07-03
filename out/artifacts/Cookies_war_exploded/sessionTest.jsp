<%@ page import="java.nio.channels.SeekableByteChannel" %><%--
  Created by IntelliJ IDEA.
  User: 10576
  Date: 2019/7/3
Time: 10:58
To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" session="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>


<%


    HttpSession session = request.getSession(true);
    out.println(session.getId());
    out.print("<br>");
    //设置session的过期时间
    session.setMaxInactiveInterval(10);
    out.print(session.getMaxInactiveInterval());
//    session.invalidate();


%>


</body>
</html>
