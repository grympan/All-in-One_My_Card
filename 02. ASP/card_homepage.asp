
<% @Language="VBScript" CODEPAGE="65001" %>
<%
Response.CharSet="utf-8"
Session.codepage="65001"
Response.codepage="65001"
Response.ContentType="text/html;charset=utf-8"
%>


<html>
<head>
	<title>All in One 카드관리</title> 
</head>
<body>
 
   <b><span style="color:gray"><font size ="3">All in One <font size = "2">유지혜 윤성호<font/><b/><br/>

<center>
<br/><br/><br/>
<li><a href="card_homepage.asp"><span style="color:white"><font size=20><b>All in One 카드관리</font></span></br></b></a></li>
<br/><br/><br/><br/><br/><br/><br/>
  <form action="card_login_ok.asp" method="post" name="myForm">
        <fieldset style="width:500px; height:80px;">
            <legend><span style="color:white">LOGIN</span></legend> 
            <table> 
                <tr> 
                    <td><span style="color:white"><label for="id">ID</label></span></td> 
                    <td><input type="text" name="ID" ></td> 
               <td><span style="color:white"><label for="pwd">PW</label></span></td> 
                    <td><input type="text" name="PW" ></td> 

                </tr> 
</center>
			       
            </table>
					 </br>
					 <input  type="button" value="회원가입" onclick= (location.href="card_register.asp")> 
					 <input type="submit" value="로그인">
					  </td> 
                </tr></td>	
			

   </fieldset> 
 </form>                 
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

