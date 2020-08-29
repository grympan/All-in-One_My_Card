<!-- #include virtual="/card_header.asp"--><!--card_header 코드를 불러와서 이 위치에 놓음-->
<%
	if session("ID")="" then
		response.redirect ("wrong_access.asp")
	end if
%>

<body>
<br/><br/><br/><br/>
<center><span style="color:white"><font size ="5"><%=session("ID") %> 님! 조회하실 혜택종류를 선택해주세요.
<br/><br/>



  <td>
  <input type="button" value="퍼센트 혜택" onclick= (location.href="benefits_퍼센트.asp")>
  <input type="button" value="N원당 결제시 혜택" onclick= (location.href="benefits_A원당.asp")> 
  <input type="button" value="최소 N원 결제시 혜택" onclick= (location.href="benefits_B원당.asp")> 
  <input type="button" value="주유 혜택" onclick= (location.href="benefits_리터당.asp")> 


  </td> 
 </center>	</span>
</body>   
</html>
