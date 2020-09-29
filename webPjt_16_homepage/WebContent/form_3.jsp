<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   request.setCharacterEncoding("utf-8");  //글씨 안깨지게
   String id = request.getParameter("t_id"); // 이름넘기기기기
   String name = request.getParameter("t_name");
   String pw = request.getParameter("t_pw");
   String area = request.getParameter("t_area");
   String mf = request.getParameter("t_mf");

   // out.print("=============="+name);

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
id: <%  out.print(id); %> <br>
name: <%= name%> <br>
pw: <%= pw%> <br>
area: <%= area%> <br>
mf: <%=mf%> <br>
<input type = "button" onclick= "history.back()" value= "뒤로~ ">
</body>

<!

 >
</html>

