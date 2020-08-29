<!-- #include virtual="/card_header.asp"--><!--card_header 코드를 불러와서 이 위치에 놓음-->


<%
	Dim ID,PW
	ID=request.form("ID")
	PW=request.form("PW")
	
	Set Dbcon = Server.CreateObject("ADODB.Connection")
	Dbcon.Open Application("dbConnect")

	if id="" then
		Response.Write "<script>alert('아이디를 입력해주세요.');history.back(-1);</script>"
	elseif pw="" then
		Response.Write "<script>alert('비밀번호를 입력해주세요.');history.back(-1);</script>"
	else	
		sql="SELECT ID, PW FROM 회원"
		Set rs=Dbcon.Execute(sql)
		tt=false
		   
		do while not rs.eof
			if rs.fields(0).value = ID then
				if rs.fields(1).value = PW then
					tt= true
				end if
			end if
			rs.movenext
		loop
		
		if tt=false then
			Response.Write "<script>alert('아이디 혹은 비밀번호가 일치하지 않습니다.');history.back(-1);</script>"
		end if
	end if
		  
		session("id")=id

			Dbcon.Close()
			Set Dbcon=Nothing
			Set Rs=Nothing
%>
<html>
<head>
</head>
<body>
<br/><br/><br/><br/>
<center>
<span style="color:white"><font size ="5"><%=session("ID") %> 님 로그인했습니다.

<br/><br/><br/><br/>

 </center>	</span>
</body>   
</html>


  

