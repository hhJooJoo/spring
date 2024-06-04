<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

<table>
	<tr>
		<td>${row.idx }${row.title }</td>
	</tr>
	<tr>
		<td>${row.nick }| ${row.v_count } | ${row.w_date }</td>
	</tr>
	<tr>
		<td><pre>${row.contents }</pre></td>
	</tr>
</table>

<br>

<!-- 본인 글이면 수정 삭제 버튼이 보이고 없으면 안 보인게 만듬 -->
<c:if test="${user.nick == row.nick}">
	<a href="${cpath }/board/update/${row.idx}">
		<button>수정</button>
	</a>

	<a href="${cpath }/board/delete/${row.idx}">
		<button>삭제</button>
	</a>
</c:if>


<form method="POST">
	<p><textarea name="contents" placeholder="댓글을 입력해 주세요"></textarea></p>
	<p><input name="a_idx" type="hidden" value="${user.idx }"></p>

	<button>작성</button>
</form>

<c:forEach var="row" items="${replys }">
	<fieldset>
		<h5>${row.nick } | ${row.w_date }</h5>
		
		<pre>${row.contents }</pre>
	</fieldset>
</c:forEach>



</body>
</html>