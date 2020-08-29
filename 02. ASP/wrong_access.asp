
<% @Language="VBScript" CODEPAGE="65001" %>
<%
Response.CharSet="utf-8"
Session.codepage="65001"
Response.codepage="65001"
Response.ContentType="text/html;charset=utf-8"
%>


<html>
<head>
	<title>잘못된 접근</title>
</head>
<body>
 
   <b><span style="color:gray"><font size ="3">All in One <font size = "2">유지혜 윤성호<font/><b/><br/>

<center>
<br/><br/><br/>
<li><a href="card_homepage.asp"><span style="color:white"><font size=20><b>All in One 카드관리</font></span></br></b></a></li>
<br/><br/><br/><br/><br/><br/><br/>
	<span style="color:darkgray"><font size ="5">잘못된 접근입니다. 먼저 로그인을 해주세요.
	<br/><br/>
	<input type="button" value="로그인하기" onclick= (location.href="card_homepage.asp")>
</center>
</body>   
</html>
<!-- #include virtual="/card_bottom.asp"--><!--card_bottom 코드를 불러와서 이 위치에 놓음-->
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

