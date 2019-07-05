<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<!-- 导入标签库(描述文件) -->
<%@taglib uri="http://www.atguigu.com/mytag/core" prefix="atguigu" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
</head>
<body>
<atguigu:maxTag num1="${param.a}" num2="${param.b}"/>
<br>

</body>
</html>