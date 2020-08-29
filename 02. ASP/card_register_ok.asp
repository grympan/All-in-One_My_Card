  <!-- #include virtual="/card_header.asp"--><!--card_header 코드를 불러와서 이 위치에 놓음-->


<%
   
   Set Dbcon = Server.CreateObject("ADODB.Connection")
   Dbcon.Open Application("dbConnect")
   Dim id,pw,pw2,name,recom_id,email,regex
   
   id=request("id")
   pw=request("pw")
   pw2=request("pw2")
   name=request("name")
   recom_id=request("recom_id")
   email=request("email")
   
	if id="" then
		Response.Write "<script>alert('아이디를 입력해주세요.');history.back(-1);</script>"
	elseif len(id) > 8 then
		Response.Write "<script>alert('아이디는 8바이트 이내로 입력해주세요.');history.back(-1);</script>"
	elseif pw="" then
		Response.Write "<script>alert('비밀번호를 입력해주세요.');history.back(-1);</script>"
	elseif len(pw) > 8 then
		Response.Write "<script>alert('비밀번호는 8바이트 이내로 입력해주세요.');history.back(-1);</script>"
	elseif pw2="" then
		Response.Write "<script>alert('비밀번호확인을 입력해주세요.');history.back(-1);</script>"
	elseif pw<>pw2 then
		Response.Write "<script>alert('비밀번호가 서로 일치하지 않습니다.');history.back(-1);</script>"
	elseif name="" then
		Response.Write "<script>alert('이름을 입력해주세요.');history.back(-1);</script>"
	elseif len(name) > 10 then
		Response.Write "<script>alert('이름은 10바이트까지 지원합니다. 초과한다면 앞에서부터 10바이트까지만 입력해주세요.');history.back(-1);</script>"
	elseif email="" then
		Response.Write "<script>alert('이메일을 입력해주세요.');history.back(-1);</script>"
	elseif len(email) > 20 then
		Response.Write "<script>alert('이메일은 20바이트까지 지원합니다. 다른 이메일을 사용해주세요.');history.back(-1);</script>"
	elseif Instr(email,"@")=0 or Instr(email,".")=0 then
		Response.Write "<script>alert('이메일 형식을 확인해주세요.');history.back(-1);</script>"
	elseif Instr(email,"@") >= Instr(email,".") then
		Response.Write "<script>alert('이메일 형식을 확인해주세요.');history.back(-1);</script>"
	elseif Instr(email,"@") = Instr(email,".") - 1 then
		Response.Write "<script>alert('이메일 형식을 확인해주세요.');history.back(-1);</script>"
	elseif len(email) = Instr(email,".") then
		Response.Write "<script>alert('이메일 형식을 확인해주세요.');history.back(-1);</script>"
	else
		
		tt=true
		sql="SELECT ID FROM 회원;"
		Set rs=Dbcon.Execute(sql)

		do while not rs.eof
			if rs.fields(0).value = id then
				tt=false 
			end if
			rs.movenext
		loop
   
		if tt=false then
			Response.Write "<script>alert('이미 사용 중인 ID입니다.');history.back(-1);</script>"

		else
			tt=true
			sql="SELECT 이메일 FROM 회원;"
			Set rs=Dbcon.Execute(sql)

			do while not rs.eof
				if rs.fields(0).value = email then
					tt=false 
				end if
				rs.movenext
			loop
   
			if tt=false then
				Response.Write "<script>alert('이미 사용 중인 이메일입니다.');history.back(-1);</script>"
			
			else
				tt=false
				sql="SELECT id FROM 회원;"
				Set rs=Dbcon.Execute(sql)
					
				do while not rs.eof
					if rs.fields(0).value = recom_id then
						tt= true
					end if
					rs.movenext
				loop
					
				if tt=true then
					sql="insert into 회원(id,추천인ID,PW,이름,이메일)values('"&id&"','"&recom_id&"','"&pw&"','"&name&"','"&email&"');"
					Set rs=Dbcon.Execute(sql)
				else
					if recom_id="" then
						sql="insert into 회원(id,추천인ID,PW,이름,이메일)values('"&id&"',NULL,'"&pw&"','"&name&"','"&email&"');"
						Set rs=Dbcon.Execute(sql)
					else
						Response.Write "<script>alert('추천인ID가 존재하지 않습니다.');history.back(-1);</script>"
					end if
				end if
			end if
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
<span style="color:white"><font size ="5"><%=session("ID") %> 님 회원가입 되었습니다.
<br/><br/><br/><br/>

    </center> </span>                         
</body>   
</html>

