<%@page contentType="text/html;charset=GB2312" %>
<%@page import="bean.data.PC" %>
<jsp:useBean id="computer" class="bean.data.PC" scope="request"/>
<html>
<body bgcolor=yellow>
<font size=2>
<form action="" method ="post">
�����Ʒ��:<input type=text name ="pinpai">
<bg>������ͺ�:<input type=text name ="xinghao">
<br>��������:<input type=text name="riqi">
<input type="submit" value="�ύ">
</form>
<jsp:setProperty name="computer" property="*"/>
<table border=1>
<tr>
<th>�����Ʒ��</th>
<th>������ͺ�</th>
<th>��������</th>
</tr>
<tr>
    <td><jsp:getProperty name="computer" property="pinpai"/></td>
    <td><jsp:getProperty name="computer" property="xinghao"/></td>
    <td><jsp:getProperty name="computer" property="riqi"/></td>
</tr>
</table>
</font>
</body>
</html>