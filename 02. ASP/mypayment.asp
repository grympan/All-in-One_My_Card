<!-- #include virtual="/card_header.asp"--><!--card_header 코드를 불러와서 이 위치에 놓음-->
<%
	if session("ID")="" then
		response.redirect ("wrong_access.asp")
	end if
%>

<body>
<br/><br/><br/><br/>
<center><span style="color:white"><font size ="5"><%=session("ID") %> 님의 카드 이용내역입니다.
<br/><br/>




<%
   

  Set Dbcon = Server.CreateObject("ADODB.Connection")
  Dbcon.Open Application("dbConnect")
  'Set rs=Dbcon.ServerCreateObject("ADODB.RecordSet")
  
  sql="select 카드사명, 이용내역.승인번호, 이용내역.카드번호, 이용내역.사업자번호, 이용내역.가맹점번호, 이용내역.금액, 이용내역.일시, 카드종류.카드명, 가맹점명, 업종, 시군구읍면, 상세주소 from 카드사, 이용내역, 가맹점, 보유카드, 카드종류 where 이용내역.id='" & session("ID") & "' and 이용내역.사업자번호=가맹점.사업자번호 and 이용내역.가맹점번호=가맹점.가맹점번호 and 보유카드.카드번호=이용내역.카드번호 and 보유카드.id=이용내역.id and 보유카드.카드식별코드=이용내역.카드식별코드 and 보유카드.카드사번호=이용내역.카드사번호 and 카드종류.카드식별코드=보유카드.카드식별코드 and 카드사.카드사번호=카드종류.카드사번호 order by 일시 Desc;"
    Set rs=Dbcon.Execute(sql)
   
   	response.write("<div id='이용 내역'>")
	response.write("<table border=1px>")
	
	response.write("<tr style=" & "color:white"&">")
	response.write("<td><b>카드사명</b></td>")
	response.write("<td><b>카드명</b></td>")
	response.write("<td><b>카드번호</b></td>")
	response.write("<td><b>거래일시</b></td>")
	response.write("<td><b>승인번호</b></td>")
	response.write("<td><b>금액</b></td>")	
	response.write("<td><b>가맹점명</b></td>")
	response.write("<td><b>업종</b></td>")
	response.write("<td><b>가맹점번호</b></td>")
	response.write("<td><b>가맹점주소</b></td>")
	response.write("<td><b>사업자번호</b></td>")


	
	'SQL 실행
	do while not(Rs.Eof)
		response.write("<tr style=" & "color:white"&">")
		response.write("<td>" & Rs("카드사명") & "</td>")
		response.write("<td>" & Rs("카드명") & "</td>")
		response.write("<td>" & Rs("카드번호") & "</td>")
		response.write("<td>" & Rs("일시") & "</td>")
		response.write("<td>" & Rs("승인번호") & "</td>")		
		response.write("<td>" & Rs("금액") & "원" & "</td>")
		response.write("<td>" & Rs("가맹점명") & "</td>")
		response.write("<td>" & Rs("업종") & "</td>")
		response.write("<td>" & Rs("가맹점번호") & "</td>")
		response.write("<td>" & Rs("시군구읍면") & " " & Rs("상세주소") & "</td>")
		response.write("<td>" & Rs("사업자번호") & "</td>")
		Rs.movenext
	Loop
	response.write("</table>")
	response.write("</div>")

	'DB닫기
	Dbcon.Close()
	Set Dbcon=Nothing
	Set Rs=Nothing
%>
</body>
</center>


