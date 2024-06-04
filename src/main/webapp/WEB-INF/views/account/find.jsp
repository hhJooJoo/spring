<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

  <h4>id 찾기</h4>
  
  <form action="findId" method="POST">
    <p><input name="email" type="email" placeholder="가입시 이메일" required></p>
    
    <button>find</button>
  </form>
  
  
  
  <h4>pw 찾기</h4>
  
  <form action="findPw" method="POST">
    <p><input name="userid" placeholder="가입시 ID" required></p>
    <p><input name="email" type="email" placeholder="가입시 이메일" required></p>
    
    <button>find</button>
  </form>

</body>
</html>