<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: gj
  Date: 2020-05-04
  Time: 17:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Jstl</title>
</head>
<body>

<%--
    test必须属性，接受boolean,如果为true,显示标签内容，否则不显示标签内容
--%>
    <h1>c:if</h1>
    <c:if test="true">
        <h3>我是真</h3>
    </c:if>
    <br>
<%--
    test内容一般和el表达式一起使用
--%>
<%
    //判断request域中list集合是否为空，不为空，则显示遍历结果
    List list = new ArrayList();
    list.add("aaa");
    list.add("bbb");
    list.add("ccc");
    request.setAttribute("list",list);

%>
    <c:if test="${ not empty list}">
        遍历集合
    </c:if>


    <h1>c:foreach重复操作</h1>
    <c:forEach begin="1" end="10" var="i" step="2" varStatus="s">
        ${i}<h3> ${s.index}</h3><h4>${s.count}</h4><br>
        <%--
            index:容器中元素的索引
            count：循环次数
        --%>
    </c:forEach>

    <h1>c:foreach遍历容器</h1>
<%--
        items:容器对象
        var:容器中临时变量
    --%>
    <c:forEach items="${list}" var="str" varStatus="s">
        ${s.index} ${s.count} ${str} <br>
    </c:forEach>


</body>
</html>
