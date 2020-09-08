<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="/common/head.jsp" flush="false"></jsp:include>
</head>
<body>
<jsp:include page="/common/menu.jsp" flush="false"></jsp:include>

<form>
  <div class="form-group">
    <label for="uiId">아이디</label>
    <input type="text" class="form-control" id="uiId">
  </div>
  <div class="form-group">
    <label for="uiPassword">비밀번호</label>
    <input type="password" class="form-control" id="uiPassword">
  </div>
   <div class="form-group">
    <label for="uiName">이름</label>
    <input type="text" class="form-control" id="uiName">
  </div>
   <div class="form-group">
    <label for="uiBirth">생일</label>
    <input type="date" class="form-control" id="uiBirth">
  </div>
    <div class="form-group">
    <label for="uiAge">나이</label>
    <input type="number" class="form-control" id="uiAge" value="1">
  </div>
   <div class="form-group">
    <label for="uiPhone">휴대전화</label>
    <input type="text" class="form-control" id="uiPhone">
  </div>
  <div class="form-group">
    <label for="uiEmail">이메일</label>
    <input type="email" class="form-control" id="uiEmail">
  </div>
  <div class="form-group">
    <label for="uiNickname">닉네임</label>
    <input type="text" class="form-control" id="uiNickname">
  </div>
  <button type="submit" class="btn btn-primary" onclick="doJoin()">회원가입</button>
  <a href="/login.jsp"> <button type="button" class="btn btn-primary">취소</button></a>
</form>
<script>
function doJoin(){
	if($('#uiId').val().trim().length<4){
		alert('아이디는 4글자 이상입니다');
		$('#uiId').focus();
		return;
	}
	if($('#uiPassword').val().trim().length<4){
		alert('비밀번호는 4글자 이상입니다');
		$('#uiPassword').focus();
		return;
	}

	if($('#uiName').val().trim().length<2){
		alert('이름은 2글자 이상입니다');
		$('#uiName').focus();
		return;
	}
	if(!$('#uiBirth').val().trim()){
	      alert('생년월일을 입력해 주세요')
	      $('#uiBirth').focus();
	      return;
	}
	if(isNaN($('#uiAge').val()) || $('#uiAge').val()<1 || $('#uiAge').val()>150){
		alert('나이를 정확히 입력해주세요');
		$('#uiAge').focus();
		return;
	}
	
	if($('#uiNickname').val().trim().length<4){
		alert('닉네임은 4글자 이상입니다');
		$('#uiNickname').focus();
		return;
		
	}
	alert('가입준비완료');
}
</script>
</body>
</html>