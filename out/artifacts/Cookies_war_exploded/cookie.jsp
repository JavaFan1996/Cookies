<%--
  Created by IntelliJ IDEA.
  User: 10576
  Date: 2019/7/2
  Time: 17:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  session="false" %>
<html>
<head>
    <title>Title</title>

</head>
<body>
<%

//    Cookie cookie = new Cookie("name","atguigu");
//    response.addCookie(cookie);


    //获取cookie
    Cookie[]  cookies = request.getCookies();
    if (cookies!= null && cookies.length>0) {
        for (Cookie c : cookies) {
            out.println(c.getName() + ":" + c.getValue());
            out.print("<br>");
        }
    }else {
        out.print("没有一个Cookie，正在创建并返回");
        Cookie cookie = new Cookie("name", "wwm");
        //设置cookie存活时间，若为0则立即删除
        //若为负数，则表示不存储该cookie
        cookie.setMaxAge(30);
        response.addCookie(cookie);

    }



%>

</body>
</html>
