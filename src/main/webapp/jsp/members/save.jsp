<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="hello.servlet.domain.member.Member" %>
<%@ page import="hello.servlet.domain.member.MemberRepository" %>
<%--
  Created by IntelliJ IDEA.
  User: kyungshikseong
  Date: 12/30/23
  Time: 10:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%
    //request, response 기본적으로 사용 가능한다. JSP 보다 Servlet으로 변환이 가능하다.
    MemberRepository memberRepository = MemberRepository.getInstance();

    System.out.println("MemberSaveServlet.service");
    String username = request.getParameter("username");
    int age = Integer.parseInt(request.getParameter("age"));

    Member member = new Member(username, age);
    memberRepository.save(member);
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
성공
<ul>
    <li>id=<%=member.getId()%>
    </li>
    <li>username=<%=member.getUsername()%>
    </li>
    <li>age=<%=member.getAge()%>
    </li>
</ul>
<a href="/index.html">메인</a>
</body>
</html>