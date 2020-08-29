<% @Language="VBScript" CODEPAGE="65001" %>
<%
Response.CharSet="utf-8"
Session.codepage="65001"
Response.codepage="65001"
Response.ContentType="text/html;charset=utf-8"
%>




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

ul#menu li a {
    background-color: black;
    color: white;
    padding: 10px 20px;
    text-decoration: none;
    border-radius: 4px 4px 4px 4px;
}

ul#menu li a:hover {
    background-color: gray;
}


</style>
</head>


<body>
   <b><span style="color:gray"><font size ="3">All in One <font size = "2">유지혜 윤성호<font/><b/><br/>

<center>
<br/><br/><br/><li><span style="color:white"><font size=20><b>All in One 카드관리</font></span></br></b></a></li>
<br/>
<ul id="menu">

  <li><a href="mycardlist.asp">My Card</a></li>
	
  <li><a href="mypayment.asp">Card 이용내역</a></li>
  
  <li><a href="card_benefits.asp">My 혜택</a></li>

  <li><a href="card_mypage.asp">My Page</a></li>
  
  <li><a href="logout.asp">Logout</a></li>
  
  
  </center>  
</ul>  


</body>
</html>

</style>
</head>


</html>

<!DOCTYPE html>
<html>
	<head>
		<style>
			body {

		background-image : url('background.jpg');   /* 배경 이미지 불러오기 */
		background-repeat : no-repeat;  /* 반복 안함 */
		background-size : cover;
}

		</style>
	</head>
	<body>
	</body>
</html>
<!-- #include virtual="/card_bottom.asp"--><!--card_bottom 코드를 불러와서 이 위치에 놓음-->