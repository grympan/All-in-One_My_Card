
<% @Language="VBScript" CODEPAGE="65001" %>
<%
Response.CharSet="utf-8"
Session.codepage="65001"
Response.codepage="65001"
Response.ContentType="text/html;charset=utf-8"
%>

<html>
<head>
</head>
<body>
 
   <b><span style="color:gray"><font size ="3">All in One <font size = "2">유지혜 윤성호<font/><b/><br/>

<center>
<br/><br/><br/><li><a href="card_homepage.asp"><span style="color:white"><font size=20><b>All in One 카드관리</font></span></br></b></a></li>

<br/><br/><br/><br/><br/><br/>
<div id="content">
   <form action="card_register_ok.asp" method="get"> 
      <table>
         <tr>
               <td> <span style="color:white">아이디  </span> </td>
               <td><input type="text" name="id" placeholder="ID를 입력해주세요"/></td>
         </tr>
         <tr>
               <td> <span style="color:white">비밀번호 </span> </td>
               <td> <input type="text" name="pw" placeholder="PW를 입력해주세요"/></td>
          </tr>
         <tr>
               <td> <span style="color:white">비밀번호확인 </span></td>
               <td><input type="text" name="pw2" placeholder="PW확인을 입력해주세요"/></td>
         </tr>
         <tr>
               <td> <span style="color:white">이름     </span> </td>
               <td> <input type="text" name="name" placeholder="이름을 입력해주세요"/> </td>
         </tr>
         <tr>
               <td> <span style="color:white">추천인ID  </span> </td>
               <td> <input type="text" name="recom_id" placeholder="없다면 비워두세요"/></td>
         </tr>
   
            <tr>
               <td> <span style="color:white">이메일</span>   </td>
               <td> <input type="text" name="email" placeholder="ex) 111111111@naver.com"/></td>
               
              </tr>
            
          <td>
         <br/><br/><td align="right">
	<input  type="button" value="돌아가기" onclick= (location.href="card_homepage.asp")> 
	<input type="SUBMIT" value="회원가입하기"></td>   
            </form> 
            </td>   
</center>
</body>
</html>



<!DOCTYPE html>
<html>
	<head>
		<style>
		#sidebar
{
  position:relative;
  z-index:1;
}


ul#menu {
    padding: 0;
}

ul#menu li {
    display: inline;
}
		
			body {

		background-image : url('background.jpg');   /* 배경 이미지 불러오기 */
		background-repeat : no-repeat;  /* 반복 안함 */
		background-size : cover;
}

		</style>
		</head>
		</html>
		<!-- #include virtual="/card_bottom.asp"--><!--card_bottom 코드를 불러와서 이 위치에 놓음-->