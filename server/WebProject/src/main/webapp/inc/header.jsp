<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<header class="main-header">
   <section>
      <nav>
         <!-- <div><img src="/webproject/asset/images/logo.png"></div> -->
         <ul>
            <li><img src="/webproject/asset/images/logo.png"></li>
            <li title="시작 페이지" onclick="location.href='/webproject/main/mainpage.do'">Home</li>
            <li>커뮤니티</li>
            <li onclick="location.href='/webproject/main/member/qna/list.do'">Q&A</li>
            <li>스터디/정기모임</li>
            <li>채용공고</li>
            <li>공간대여서비스</li>
            <c:if test="${not empty id}">
            <li onclick="location.href='/webproject/main/member/mypage/mypagemain.do'">마이페이지</li>
            </c:if>
            
            <c:if test="${not empty id}">      
            <li>
               <div>${name}(${id})</div>
               <div onclick="location.href='/webproject/main/login/logout.do';" title="로그아웃">Logout</div>
            </li>
            </c:if>   
            <c:if test="${empty id}">
            <li style="margin-left: 70px;">
               <div onclick="location.href='/webproject/main/login/login.do';" title="로그인">Login</div>
            </li>
            <li>
               <div onclick="location.href='/webproject/main/join/memberjoin.do';" title="회원가입" >Join</div>
            </li>
            </c:if>
         </ul>
      </nav>
   </section>
</header>








