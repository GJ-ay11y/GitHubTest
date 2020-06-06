<%@ page import="com.gj.domain.User" %>
<%@ page import="java.util.*" %><%--
  Created by IntelliJ IDEA.
  User: gj
  Date: 2020-05-04
  Time: 16:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<html>
<head>
    <title>获取对象数据</title>
</head>
<body>
    <%
        User user = new User();
        user.setName("张三");
        user.setAge(23);
        user.setBirthday(new Date());
        request.setAttribute("u",user);


        List list = new ArrayList();
        list.add("aaaa");
        list.add("bbbb");
        list.add(user);
        request.setAttribute("list",list);

        Map map = new HashMap();
        map.put("sname","李四");
        map.put("gender","男");
        map.put("user",user);
        request.setAttribute("map",map);


    %>
    <h3>获取对象中的值</h3>
    ${requestScope.u}<br>

    <!--通过对象属性获取-->
    ${requestScope.u.name}<br>
    ${u.age}<br>
    ${u.birthday}<br>
    ${u.birthday.month}<br>
    ${u.birStr}<br>

    <h3>获取List中的值</h3>
    ${list}<br>
    ${list[0]}<br>
    ${list[1]}<br>
    ${list[2]}<br>
    ${list[2].name}<br>


    <h3>获取Map中的值</h3>
    ${map.sname}<br>
    ${map["gender"]}<br>
    ${map.user.name}<br>


    <h3>动态获取虚拟目录</h3>
    ${pageContext.request.contextPath}



</body>
</html>
