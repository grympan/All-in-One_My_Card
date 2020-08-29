<!-- #include virtual="/card_header.asp"--><!--card_header 코드를 불러와서 이 위치에 놓음-->
<%
	if session("ID")="" then
		response.redirect ("wrong_access.asp")
	end if
%>

<body>
<br/><br/><br/><br/>
<center><span style="color:white"><font size ="5"><%=session("ID") %> 님의 계정정보입니다.
<br/><br/>

<%
   

  Set Dbcon = Server.CreateObject("ADODB.Connection")
  Dbcon.Open Application("dbConnect")
  'Set rs=Dbcon.ServerCreateObject("ADODB.RecordSet")
  
  sql="select pw, 추천인id, 이름, 이메일 from 회원 where 회원.id='" & session("ID") & "';"
    Set rs=Dbcon.Execute(sql)
   
	response.write("<div id='회원 정보 '>")
	response.write("<table border=1px>")
	
	response.write("<tr style=" & "color:white"&">")
	response.write("<td><b>비밀번호</b></td>")
	response.write("<td><b>이름</b></td>")
	response.write("<td><b>이메일</b></td>")
	response.write("<td><b>추천인ID</b></td>")



	
	'SQL 실행
	do while not(Rs.Eof)
		response.write("<tr style=" & "color:white"&">")
		response.write("<td>" & Rs("pw") & "</td>")
		response.write("<td>" & Rs("이름") & "</td>")
		response.write("<td>" & Rs("이메일") & "</td>")
		response.write("<td>" & Rs("추천인id") & "</td>")
		
		Rs.movenext
	Loop
	response.write("</table>")
	response.write("</div>")

	'DB닫기
	Dbcon.Close()
	Set Dbcon=Nothing
	Set Rs=Nothing
%>
<br>
  <td>
  <input type="button" value="수정하기" onclick= (location.href="reinformation.asp")>
    </td> 
  
</center>
	
</body>   

