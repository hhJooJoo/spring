<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

  <form method="POST">
    <p><input name="userpw" type="password" placeholder="PW"></p>
    <p><input name="email" value="${user.email }" type="email" placeholder="이메일"></p>
    
    <button>수정</button>
  </form>

</body>
</html>