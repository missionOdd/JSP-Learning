<%@page contentType="text/html;charset=gb2312" %>
<html>
<body bgcolor=yellow >
 ��ȡ������ok.txt���ļ���
 <jsp:include page="readFile.jsp">
	<jsp:param name="file" value="D:\Programming\apache-tomcat-8.5.32\webapps\ch2\ok.txt"/>
 </jsp:include>
</body>
</html>