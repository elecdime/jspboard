<%@ page language="java" 
    contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
    request.setCharacterEncoding("euc-kr");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title> Join </title>
</head>
<body>
 
 <section class="container" style="max-width: 560px;">
<form method="post" action="./registerinfo.jsp">
<div class="form-group">
<label>���̵�</label>
<input type="text" name="id" class="form-control" placeholder="id">
</div>
<div class="form-group">
<label>��й�ȣ</label>
<input type="password" name="pw" class="form-control"placeholder="password">
</div>
<div class="form-group">
<label>�̸���</label>
<input type="text" name="email" class="form-control"placeholder="test@example.com">
</div>
<div class="form-group">
<label>�̸�</label>
<input type="text" name="name" class="form-control"placeholder="ȫ�浿">
</div>
<div class="form-group">
<label>�޴���</label>
<input type="text" name="phone" class="form-control" placeholder="010-1234-1234">

</div>
<button type="submit" class="btn btn-primary">Register</button>
</form>
</section>
    
    <script>
    // input_check_func�� ȸ�����Կ� �ʿ��� 3���� ������ ���δ� ä�� �־����� check ���ش�
    // �̴� form onsubmit�� ���� �ߵ��Ǹ� return ���� false �� ��� �������� �����Ͱ� action= ��ǥ�� �Ѿ�� �ʰԵȴ�
    function input_check_func() {
        var id = document.getElementById('id').value;
        var pw = document.getElementById('pw').value;
        var email = document.getElementById('email').value;
        var name = document.getElementById('name').value;
        var phone = document.getElementById('phone').value;
        
        if(id == null || pw == null || email == null ||name == null ||phone == null ||
         id == ""   || pw == ""   || email == ""|| name == ""|| phone == "") {
            alert("����ִ� ĭ�� �ֽ��ϴ�.");
            return false;
        } else {
            // ��������� �����Ǹ� true�� ��ȯ�Ѵ� �̴� ���� �������� ������ action= ��ǥ�� �ѱ�ٴ°��� �ǹ�
            return true;
        }
    }    
    </script>
 
</body>
</html>


