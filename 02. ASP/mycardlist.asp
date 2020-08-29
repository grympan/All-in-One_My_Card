<!-- #include virtual="/card_header.asp"--><!--card_header 코드를 불러와서 이 위치에 놓음-->
<%
	if session("ID")="" then
		response.redirect ("wrong_access.asp")
	end if
%>

<html>
<head>
</head>
<body>
<br/><br/><br/><br/>
<center>
<span style="color:white"><font size ="5"><%=session("ID") %> 님의 보유카드목록입니다.

<br/><br/>

<!DOCTYPE html>

<%
   

  Set Dbcon = Server.CreateObject("ADODB.Connection")
  Dbcon.Open Application("dbConnect")
  'Set rs=Dbcon.ServerCreateObject("ADODB.RecordSet")
  
  sql="select 카드사명, 카드명, 카드번호, CVC, 카드비밀번호, 유효기한, 전월요구실적, 카드명, 연회비, 교통카드지원여부 from 카드사 ,보유카드, 카드종류 where ID='" & session("ID") & "' AND 카드종류.카드식별코드 = 보유카드.카드식별코드 and 카드종류.카드사번호 = 보유카드.카드사번호 and 카드사.카드사번호=카드종류.카드사번호;"
    Set rs=Dbcon.Execute(sql)
   
	response.write("<div id='보유 카드 '>")
	response.write("<table border=1px>")
	
	response.write("<tr style=" & "color:white"&">")
	response.write("<td><b>카드사</b></td>")
	response.write("<td><b>카드명</b></td>")
	response.write("<td><b>카드번호</b></td>")
	response.write("<td><b>CVC</b></td>")
	response.write("<td><b>비밀번호</b></td>")
	response.write("<td><b>유효기한(월/연)</b></td>")
	response.write("<td><b>전월요구실적</b></td>")
	response.write("<td><b>연회비</b></td>")
	response.write("<td><b>교통카드</b></td>")

	
	'SQL 실행
	do while not(Rs.Eof)
		response.write("<tr style=" & "color:white"&">")
		response.write("<td>" & Rs("카드사명") & "</td>")
		response.write("<td>" & Rs("카드명") & "카드" & "</td>")
		response.write("<td>" & Rs("카드번호") & "</td>")
		response.write("<td>" & Rs("CVC") & "</td>")
		response.write("<td>" & Rs("카드비밀번호") & "</td>")
		response.write("<td>" & Rs("유효기한") & "</td>")
		response.write("<td>" & Rs("전월요구실적") & "원" & "</td>")
		response.write("<td>" & Rs("연회비") & "원" & "</td>")
		response.write("<td>" & Rs("교통카드지원여부") & "</td>")
		
		Rs.movenext
	Loop
	response.write("</table>")
	response.write("</div>")

	'DB닫기
	Dbcon.Close()
	Set Dbcon=Nothing
	Set Rs=Nothing
%>

    </center> </span>                         
</body>   
</html>

