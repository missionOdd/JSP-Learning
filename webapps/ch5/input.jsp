<%@page contentType="text/html;charset=GB2312" %>
<%@page import="bean.data.PC" %>
<jsp:useBean id="computer" class="bean.data.PC" scope="session"/>
<html>
<body bgcolor=yellow>
<font size=2>
<form action="" method ="post">
�����Ʒ��:<input type=text name ="pinpai">
<br>������ͺ�:<input type=text name ="xinghao">
<br>��������:<input type=text name="riqi">
<br>
<input type="submit" value="�ύ">
</form>
<jsp:setProperty name="computer" property="*"/>
<a href="show.jsp">����show.jsp�鿴�й���Ϣ</a>
</font>
</body>
</html>