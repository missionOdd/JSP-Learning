<%@page contentType="text/html;charset=gb2312" %>
<%@page import="java.io.*" %>
<html>
<body bgcolor=cyan>
<p><font size=2 color=blue>
This is reaFile.jsp
</font>
<font size=4>
<%
String s= request.getParameter("file");
File f=new File(s);
if(f.exists()){
	out.println("<br>文件"+s+"的内容:");
	FileReader in = new FileReader(f);
	BufferedReader bIn=new BufferedReader(in);
	String line=null;
	while((line=bIn.readLine())!=null){
		out.println("<br>"+line);
	}
}else{
%>
	<jsp:forward page="error.jsp">
	<jsp:param name="mess" value ="file not found" />
	</jsp:forward>
<%
}
%>
</font>
</p>
</body>
</html>