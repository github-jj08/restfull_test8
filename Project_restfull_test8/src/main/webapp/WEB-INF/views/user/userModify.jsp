<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>사용자 홈</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script>
    $(function() {
    	$("#cancel").on("click", function(){

			location.href = "/board/home";

		});
		if($("#modifyForm").submit(function() {
			alert("수정하시겠습니까?");
			if($("#pw").val() !== $("#pw2").val()){
				alert("비밀번호가 다릅니다.");
				$("#pw").val("").focus();
				$("#pw2").val("");
				return false;
			}else if ($("#pw").val().length < 8) {
				alert("비밀번호는 8자 이상으로 설정해야 합니다.");
				$("#pw").val("").focus();
				return false;
			}else if($.trim($("#pw").val()) !== $("#pw").val()) {
				alert("공백은 입력이 불가능합니다.");
				return false;
			}
			else if($("#member_id").val()==""){
				alert("아이디를 입력해주세요.");
				$("#member_id").focus();
				return false;
			}
			else if($("#pw").val()==""){
				alert("비밀번호를 입력해주세요.");
				$("#pw").focus();
				return false;
			}
			else if($("#name").val()==""){
				alert("성명을 입력해주세요.");
				$("#name").focus();
				return false;
			}
			else if($("#birth").val()==""){
				alert("생년월일을 입력해주세요.");
				$("#name").focus();
				return false;
			}
			else if($("#gender").val()==""){
				alert("성별을 입력해주세요.");
				$("#name").focus();
				return false;
			}
			else if($("#phone").val()==""){
				alert("연락처을 입력해주세요.");
				$("#name").focus();
				return false;
			}
			else if($("#email").val()==""){
				alert("이메일을 입력해주세요.");
				$("#name").focus();
				return false;
			}
			
			
		}));
		
	});
    </script>
    <script>
    function onlyNumber(){

        if((event.keyCode<48)||(event.keyCode>57))

           event.returnValue=false;

	}

    </script>
</head>

<body>

<h1>사용자 페이지 입니다.</h1>

<h3>[<a href="<c:url value="/" />">홈으로 돌아가기.</a>]</h3>

<sec:authentication var="principal" property="principal"/>
<p>Principal : <sec:authentication property="principal.user"/></p>
<p>사용자 아이디 : <sec:authentication property="principal.user.member_id"/></p>
<p>사용자 비밀번호 : <sec:authentication property="principal.user.pw"/></p>
<p>사용자 이름 : <sec:authentication property="principal.user.name"/></p>
<p>사용자 성별 : <sec:authentication property="principal.user.gender"/></p>
<p>사용자 이메일 : <sec:authentication property="principal.user.email"/></p>
<p>사용자 연락처 : <sec:authentication property="principal.user.phone"/></p>


 <fieldset>
 
<form:form id="modifyForm" action="update" method="POST">
 <table border="1" id="modifyTable">

  <tr>
   <td>아이디</td>
   <td><input type="text"  id="member_id" name="member_id"  value="<sec:authentication property="principal.user.member_id"/>" readOnly/></td>
  </tr>

  <tr>
   <td>패스워드</td>
   <td>
    <input type="password"  id="pw" name="pw" placeholder="패스워드(8자 이상)" /><br />
   </td>
  </tr>

  <tr>
   <td>패스워드 확인</td>
   <td>
    <input type="password"  id="pw2" name="password_chk" placeholder="패스워드 확인(6-8자)"/><br />
   </td>
  </tr>

  <tr>
   <td>이름</td>
   <td><input type="text"  id="name" placeholder="이름" value="<sec:authentication property="principal.user.name"/>" readOnly/><br /></td>
  </tr>
  <tr>

   <td>휴대폰</td>
   <td><input type="text" id="phone" name="phone" placeholder="PHONE" required onkeypress="onlyNumber()"/></td>
  </tr>
  
  <tr>
   <td>이메일</td>
   <td><input type="email" class="form-control" id="email" placeholder="EMAIL" name="email" /><br/>
   </td>
  </tr>

  <tr>
   <td colspan="2">
    <a href="/" id="home"><button type="button" class="button3">돌아가기</button></a>
    <button type="submit" class="button3" >수정완료</button>
    <button class="cencle btn btn-danger" type="button" id="cancel">취소</button>
   </td>
  </tr>

 </table>
 </form:form>

 </fieldset>

</body>


</body>
</html>