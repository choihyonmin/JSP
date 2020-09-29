<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   request.setCharacterEncoding("utf-8");  //글씨 안깨지게
   String name = request.getParameter("t_name"); // 이름넘기기기기
   String area = request.getParameter("t_area");
   String age = request.getParameter("t_age");

   // out.print("=============="+name);

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
성명: <%  out.print(name); %> <br>
지역: <%= area%> <br>
나이: <%= age%> <br>
<input type = "button" onclick= "history.back()" value= "뒤로~ ">

</body>
<!
갯방식 묶여서 넘어감
포스트 파일, 눈에'깔끔
 액션 페이지 이름
 >
</html>

