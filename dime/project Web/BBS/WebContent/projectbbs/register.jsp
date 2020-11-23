<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title> Join </title>
</head>
<body>
 
 <section class="container" style="max-width: 560px;">
<form method="post" action="./registerinfo.jsp">
<div class="form-group">
<label>아이디</label>
<input type="text" name="id" class="form-control" placeholder="id">
</div>
<div class="form-group">
<label>비밀번호</label>
<input type="password" name="pw" class="form-control"placeholder="password">
</div>
<div class="form-group">
<label>이메일</label>
<input type="text" name="email" class="form-control"placeholder="test@example.com">
</div>
<div class="form-group">
<label>이름</label>
<input type="text" name="name" class="form-control"placeholder="홍길동">
</div>
<div class="form-group">
<label>휴대폰</label>
<input type="text" name="phone" class="form-control" placeholder="010-1234-1234">

</div>
<button type="submit" class="btn btn-primary">Register</button>
</form>
</section>
    
    <script>
    // input_check_func는 회원가입에 필요한 3가지 문항을 전부다 채워 넣었는지 check 해준다
    // 이는 form onsubmit에 의해 발동되며 return 값이 false 일 경우 페이지의 데이터가 action= 좌표로 넘어가지 않게된다
    function input_check_func() {
        var id = document.getElementById('id').value;
        var pw = document.getElementById('pw').value;
        var email = document.getElementById('email').value;
        var name = document.getElementById('name').value;
        var phone = document.getElementById('phone').value;
        
        if(id == null || pw == null || email == null ||name == null ||phone == null ||
         id == ""   || pw == ""   || email == ""|| name == ""|| phone == "") {
            alert("비어있는 칸이 있습니다.");
            return false;
        } else {
            // 모든조건이 충족되면 true를 반환한다 이는 현재 페이지의 정보를 action= 좌표로 넘긴다는것을 의미
            return true;
        }
    }    
    </script>
 
</body>
</html>


