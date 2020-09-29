<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<script>

	/*function goForm(){
		alert("anataha mou sindeiru");
	}*/

	function goForm(){
		var id = mem.t_id.value;
		if(id == ""){
			alert("id 값 입력하시어~~~~~~~~!!@!#$@!#$#!@$ㄲ$#%@#%$#$%%%");
			mem.t_id.focus();
			return;
 		}
		if(mem.t_name.value == ""){
			alert("성명값을 입력해봐~~!~!~!!~~!@@!");
			mem.t_id.focus();
			return;
		}

		mem.method = "post";
		mem.action = "form_3.jsp";
		mem.submit();

	}
	</script>
</head>
<body>
   <form name = "member" method="post" action="form_2.jsp">
      이름: <input type= "text" name = "t_name" size= "5"><br>
      지역: <input type= "text" name = "t_area" size= "5"><br>
      나이: <input type= "text" name = "t_age" size= "5"><br>

  <input type = "submit" value = "저장 11" >
  </form>
  <form name = "mem">
      아이디: <input type= "text" name = "t_id" size= "5"><br>
      성명: <input type= "text" name = "t_name" size= "5"><br>
      비번: <input type= "text" name = "t_pw" size= "5"><br>

   <select name = "t_area">
   			<option>서욿</option>
   			<option>대전</option>
   			<option>낙안읍성</option>
   </select>
   <br>
 남여:
 <input type= "radio" name = "t_mf()" value= "남"> 남
 <input type= "radio" name = "t_mf()" value= "여"> 여

  </br><input type = "button" onclick= "goForm()" value = "저장 22" >
  </form>

</body>

</html>
