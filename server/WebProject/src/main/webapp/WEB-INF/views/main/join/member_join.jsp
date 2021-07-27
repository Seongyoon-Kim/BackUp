<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>webProject</title>

<%@ include file="/inc/asset.jsp" %>

<style>
   
</style>

</head>
<body>
   <!-- memberjoin.jsp -->
   <%@ include file="/inc/header.jsp" %>
   
   <section class="main-section">
      
      <div class="container" style="width:700px;">
      <h1 class="page-header"></h1>

      <h1>계정 만들기</h1>

      <form method="POST" action="/afd/makejoinok.do"  style=" margin: auto; ">
         <div>
            <span style="font-size: 18px;">이름</span>

            <input
               style="height: 30px; font-size: 15px; margin-bottom: 20px; margin-left : 25px;"
               name="name" type="text">
            <input type="button" value="중복확인" style="margin-left: 10px;">
            <br>
            <span style="font-size: 18px;">아이디</span>

            <input
               style="height: 30px; font-size: 15px;  margin-bottom: 20px; margin-left : 8px;"
               name="id" type="text"> 
                        <input type="button" value="중복확인" style="margin-left: 10px;">
            <br>
            
                        
               <span style="font-size: 18px;">닉네임</span>
            
            <input
               style="height: 30px; font-size: 15px;  margin-bottom: 20px; margin-left : 8px;"
               name="nickname" type="text" > 
               
                  <input type="button" value="중복확인" style="margin-left: 10px;">
            <br>
            
            <span style="font-size: 18px;">비밀번호</span>
            
            <input
               style="height: 30px; font-size: 15px;  margin-bottom: 20px; margin-left : 8px;"
               name="pw" type="text" > 
            <br>

            
            <span style="font-size: 18px;">비밀번호확인</span>
            
            <input
               style="height: 30px; font-size: 15px;  margin-bottom: 20px; margin-left : 8px;"
                type="text" > 
            <br>
         
               <span style="font-size: 18px;">주민번호</span>
               <input
               style="height: 30px; width:100px; font-size: 15px;  margin-left : 8px;"
               name="resgistrationnumber1" type="text" > 
               <span>-</span>
               
                  <input
               style="height: 30px; width:100px; font-size: 15px;  "
               name="resgistrationnumber2" type="text" > 
               <br>
               
               
               <br>
               <span style="font-size: 18px;">이메일</span>
               
                  
            <input
               style="height: 30px; width: 100px; font-size: 15px;  margin-bottom: 20px; margin-left : 8px;"
               name="email1" type="text"> <span>@</span> 
            <input style="height: 30px; width: 150px; font-size: 15px; color: #D8D8D8;" name="email2" type="text" >
            
            <br>
            <span style="font-size: 18px;">연락처</span>
            <select name="tel1"
                  style="height: 30px; width : 50px;font-size: 15px; margin-left:8px;">
                  <option>010</option>
                  <option>011</option>
                  <option>019</option>
            </select>
            <span>-</span>
            <input
               style="height: 30px; width:70px; font-size: 15px;  margin-bottom: 20px;"
               name="tel2" type="text" > 
               <span>-</span>
            <input
               style="height: 30px; width:70px; font-size: 15px;  margin-bottom: 20px;"
               name="tel3" type="text" > 
            <br>
            
            <span style="font-size: 18px;">주소</span>
               <input
               style="height: 30px; font-size: 15px;  margin-bottom: 20px; margin-left : 8px;"
               name="address" type="text" > 
            
            
            
            
            
            <div class="btns" style="margin-top: 20px; margin-left:500px; " >
            <button type="submit" class="btn btn-primary">등록하기</button>
            <button type="button" class="btn btn-default"
               onclick="location.href='/webproject/main/mainpage.do';">돌아가기</button>
            </div>
            
            </div>
         </form>

         </div>
   
      
      
   </section>   
   
   <%@ include file="/inc/footer.jsp"%>
   <%@ include file="/inc/init.jsp" %>
   <script>
      
   </script>
</body>
</html>



