<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

  <div>
    <form method="POST">
      <p><input name="userid" placeholder="ID" required></p>
      <p><input name="userpw" placeholder="PW" type="password" required></p>
      <p><input name="nick" placeholder="닉네임" required></p>
      <p><input name="email" placeholder="이메일" type="email" required></p>
      
      <button>signUp</button>
      
      <a href="${cpath }/account/find">
        <button type="button">find id/pw</button>
      </a>
    </form>
  </div>

</body>
</html>