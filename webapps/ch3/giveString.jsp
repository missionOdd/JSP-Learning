<%@page contentType="text/html;charset=gb2312" %>
<%@taglib tagdir="/WEB-INF/tags" prefix="words" %>
<html>
	<%
	String s="South Africa World Cup(Espana is champion)";
	%>
	<body color =cyan>
	<words:GetWord str="<%=s%>"/>
	×Ö·û´®£º <br><h3><%=s%><br></h3>
	<%
	for(int i=0;i<wordList.size();i++){
		out.print("<br>"+wordList.get(i));
	}
	%>
	</body>
</html>