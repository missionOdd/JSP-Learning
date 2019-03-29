<%@page contentType="text/html;charset=gb2312" %>
<html>
<body bgcolor=yellow>
<p><font size=5 color=red>
This is error.jsp.
</font>
<font size=2>
<%
String s=request.getParameter("mess");
out.println("<br>本页面得到的信息是"+s);
%>
</p>
</body>
</html>