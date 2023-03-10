<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>

<div class="container">
	<div class="jumbotron">
		<h1>로그인</h1>
	</div>
	<form action="${contextPath}/member/login" method="post">
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
		<div class="form-group">
			아이디 : <input type="text" class="form-control" name="id" value="${loginId}">
		</div>
		<div class="form-group">
			비밀번호 : <input type="text" class="form-control" name="pwd">
		</div>
		<c:if test="${not empty errorMessage }">
			<div class="alert alert-danger">
				<strong>${errorMessage }</strong>
			</div>
		</c:if>
		<button class="btn btn-primary">로그인</button>
		<input type="checkbox" name="remember-me"> 로그인상태 유지
	</form>
</div>

<%@ include file="../layout/footer.jsp" %>
