<!-- #include virtual="/card_header.asp"--><!--card_header 코드를 불러와서 이 위치에 놓음-->

<%
	if session("ID")="" then
		response.redirect ("wrong_access.asp")
	end if
%>

 <br/><br/><br/><br/>
 <center><span style="color:white"><font size ="5"><%=session("ID") %> 님! 수정할 정보를 입력해주세요.

<html>
<head>
</head>
<body>
<div id="content">
      <table>
            <td colspan="4" align="right">
            <form action="updateinformation.asp" method="get">
			<tr>
				<td> <span style="color:white">새 비밀번호</span> </td>
               <td><input type="text" name="pw" placeholder="PW 입력해주세요"/></td><br/>
			</tr>
			<tr>
				<td> <span style="color:white">새 비밀번호 확인</span> </td>
				<td><input type="text" name="pw2" placeholder="PW 확인을 입력해주세요"/></td><br/>
			 </tr>
			 <tr>
				<td> <span style="color:white">새 이메일</span> </td>
			   <td><input type="text" name="email" placeholder="새로운 이메일을 입력해주세요"/></td><br/>
				</tr>
				<tr>
				<td align="right">
               <td><input type="SUBMIT" value="수정하기"></td>   
				</tr>
			</form>      
                </td> 
         </tr>
      </table>

</div>
</center>
            
  
 <br/><br/><input type="button" value="뒤로가기" onclick= (location.href="myinformation.asp")>
         
               
</body>   
</html>



