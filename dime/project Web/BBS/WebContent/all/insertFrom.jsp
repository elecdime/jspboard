<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>

<form method="post" action="insertPro.jsp">
<table border ="1">
<tr>
<td>아이디 </td><td><input type="text" name = "idt" size ="20"
maxlength="50" placeholder="ID" autofocus required> </td>
</tr>
<tr>
<td>이메일 </td><td><input type="text" name = "email" size ="20"
maxlength="50" placeholder="abcd@example.com" autofocus required> </td>
</tr>
<tr>
<td>비밀번호 </td><td><input type="password" name = "passwd" size ="20"
maxlength="16" placeholder="8~16 숫자 /문자" required> </td>
</tr>
<tr>
<td>이름 </td><td><input type="text" name = "name" size ="20"
maxlength="10" placeholder="홍길동" required> </td>
</tr>
<tr>
<td>전화번호 </td><td><input type="text" name = "phone" size ="20"
maxlength="20" placeholder="010-1234-1234" required> </td>
</tr>
<tr>
<td colspan="2"><input type="submit" value = "회원가입" >
                <input type="reset" value = "재작성"> </td>
</tr>
</table>
</form>
</body>
</html>