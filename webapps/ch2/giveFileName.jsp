<%@page contentType="text/html;charset=gb2312" %>
<html>
<body bgcolor=yellow >
 ��ȡ������ok.txt���ļ���
 <jsp:include page="readFile.jsp">
	<jsp:param name="file" value="C:\tomcat8\webapps\ch2\ok.txt"/>
 </jsp:include>
</body>
</html>