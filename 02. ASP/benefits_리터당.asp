<!-- #include virtual="/card_header.asp"--><!--card_header 코드를 불러와서 이 위치에 놓음-->
<%
	if session("ID")="" then
		response.redirect ("wrong_access.asp")
	end if
%>

<body>
<br/><br/><br/><br/>
<center><span style="color:white"><font size ="5"><%=session("ID") %> 님의 리터당 혜택정보입니다.
<br/><br/>

<%
   

  Set Dbcon = Server.CreateObject("ADODB.Connection")
  Dbcon.Open Application("dbConnect")
  'Set rs=Dbcon.ServerCreateObject("ADODB.RecordSet")
  
  sql="select 카드번호, 카드명, 혜택내용, 혜택한도, 혜택방식, 리터혜택액 from 보유카드, 카드종류, 제공, 혜택, 리터당 where 리터당.혜택번호=혜택.혜택번호 and 혜택.혜택번호=제공.혜택번호 and 제공.카드식별코드=카드종류.카드식별코드 and 제공.카드사번호=카드종류.카드사번호 and 카드종류.카드식별코드=보유카드.카드식별코드 and 카드종류.카드사번호=보유카드.카드사번호 and id='" & session("ID") & "'"
  Set rs=Dbcon.Execute(sql)
   
	response.write("<div id='혜택 정보'>")
	response.write("<table border=1px>")
	
	response.write("<tr style=" & "color:white"&">")
	response.write("<td><b>카드번호</b></td>")
	response.write("<td><b>카드명</b></td>")
	response.write("<td><b>혜택한도</b></td>")
	response.write("<td><b>이용처</b></td>")
	response.write("<td><b>내용</b></td>")


	
	'SQL 실행
	do while not(Rs.Eof)
		response.write("<tr style=" & "color:white"&">")
		response.write("<td>" & Rs("카드번호") & "</td>")
		response.write("<td>" & Rs("카드명") & "</td>")
		response.write("<td>" & Rs("혜택한도") & "원" & "</td>")
		response.write("<td>" & Rs("혜택내용") & "</td>")
		response.write("<td>" & "리터당 " & Rs("리터혜택액") & "원 " & Rs("혜택방식") & "</td>")

		
		Rs.movenext
	Loop
	response.write("</table>")
	response.write("</div>")

	'DB닫기
	Dbcon.Close()
	Set Dbcon=Nothing
	Set Rs=Nothing
%>

 <br/><input type="button" value="뒤로가기" onclick= (location.href="card_benefits.asp")><br/><br/>

</center>

</body>
