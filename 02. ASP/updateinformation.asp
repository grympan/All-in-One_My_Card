  <!-- #include virtual="/card_header.asp"--><!--header 코드를 불러와서 이 위치에 놓음-->
<%
	if session("ID")="" then
		response.redirect ("wrong_access.asp")
	end if
%>
<br/><br/><br/><br/>
<span style="color:white"><font size ="5"><%=session("ID") %>님의 계정정보 수정을 완료했습니다.

<%
   
	Set Dbcon = Server.CreateObject("ADODB.Connection")
	Dbcon.Open Application("dbConnect")
	Dim pw, pw2, email

	pw=request("pw")
	pw2=request("pw2")
	email=request("email")
	
	if pw="" then
		Response.Write "<script>alert('비밀번호를 입력해주세요.');history.back(-1);</script>"
	elseif len(pw) > 8 then
		Response.Write "<script>alert('비밀번호는 8바이트 이내로 입력해주세요.');history.back(-1);</script>"
	elseif pw2="" then
		Response.Write "<script>alert('비밀번호확인을 입력해주세요.');history.back(-1);</script>"
	elseif pw<>pw2 then
		Response.Write "<script>alert('비밀번호가 서로 일치하지 않습니다.');history.back(-1);</script>"
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
			sql="update 회원 set PW='"&pw&"', 이메일='"&email&"' where 회원.id='" & session("ID") & "';"
		Set rs=Dbcon.Execute(sql)
		end if
	end if
	  

	Dbcon.Close()
	Set Dbcon=Nothing
	Set Rs=Nothing
%>

<html>
<head>	
</head>
<body>
<br/><br/>
  <td>
  <input type="button" value="계정정보 재확인" onclick= (location.href="myinformation.asp")>
    </td>                            
</body>   
</html>
