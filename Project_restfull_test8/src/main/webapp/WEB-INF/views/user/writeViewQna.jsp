<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>RestFuLL | 마이페이지</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
		
        
		<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=fawtmt0h7b&submodules=geocoder"></script>
		<%-- <script type="text/javascript" src="<%=request.getContextPath()%>/resources/ckeditor/ckeditor.js"></script>
		 --%>

</head>
<body>
<%@ include file="/WEB-INF/include/js-header.jsp"%>
	<h2 class="text-center">문의내역</h2>
	<hr>
	    <section class="blog-section spad">
	        <div class="container">
	            <div class="row">
	                <div class="col-sm-3 order-1">
	                    <div class="blog-sidebar">
							<div class="blog-catagory menu-background">
						        <h4>고객센터</h4>
						        <ul>
						            <li><p>[<a href="<c:url value="userModify" />">개인정보 수정</a>]</p></li>
						            <li><p>[<a href="myList?member_id=<sec:authentication property="principal.user.member_id"/>">내 게시글 보기</a>]</p></li>
						            <li><p>[<a href="myLikeList?member_id=<sec:authentication property="principal.user.member_id"/>">좋아요 한 글 목록</a>]</p></li>
						            <li><p>[<a href="myCourseList?member_id=<sec:authentication property="principal.user.member_id"/>">내 여행코스 보기</a>]</p></li>
						            <li><p>[<a href="paymentList?member_id=<sec:authentication property="principal.user.member_id"/>">내 결제내역 보기</a>]</p></li>
						            <li><p>[<a href="reportList?member_id=<sec:authentication property="principal.user.member_id"/>">내 신고내역 보기</a>]</p></li>
						            <li style="background-color: #8a93c0;"><p>[<a href="qnaList?member_id=<sec:authentication property="principal.user.member_id"/>">내 문의내역 보기</a>]</p></li>
						            <li><p>[<a href="<c:url value="userDeleteView" />">회원탈퇴</a>]</p></li>
						        </ul>
					        </div>
				        </div>
			        </div> 
			        <div class="col-sm-9 order-2">
			        	<div class="row">
			        		<div class="col-sm-12">
	                        	<div class="notice_write">
									<!-- 문의글 작성 -->
									<form action="<%=request.getContextPath() %>/user/askWrite" method="post" enctype="multipart/form-data">
										<!-- hidden -->
										<sec:authentication var="principal" property="principal" />
										<input type="hidden" name="member_id" value="${principal.user.member_id}"/>
										<input type="hidden" name="boardlist_numbers" value="<c:out value='4'/>">
										<input type="hidden" name="filter_numbers" value="<c:out value='0'/>">
										
										<!-- write Data -->
										<div class="group-input">
				                     		<!-- 첨부 버튼 -->
											<div class="writepic">
												<div id="attach">
													<input id="uploadInputBox" type="file" name="file" accept="image/*" />
				                          		</div>
				                          	</div>
				                        </div>
										
										<!-- 제목,내용 -->		
										<div class="group-input">
											<div class="writetitle">
				 								<label for="title">제목 </label>
												<input type="text" name="title" class="write_tilte" maxlength="20" required>
											</div>
										</div>
								
										<div class="group-input">
											<label for="contents">내용 </label>
											<div class="writecontentx">
												<textarea rows="10" cols="50" name="contents" class="write_content" placeholder="최대 500자 까지 작성 가능합니다." maxlength="500" required></textarea>
											</div>
										</div>
										
										<button type="submit" id="submit">완료</button>
										
									</form>
	                        	</div>
	                        	<button type="button" onclick="history.go(-1);" class="gobackbtn">돌아가기</button>
	                        </div>
	                    </div>
	                </div>
	            </div>
			</div>
		</section>
			        
			        
			       
<%@ include file="/WEB-INF/include/js-footer.jsp"%>

</body>
</html>