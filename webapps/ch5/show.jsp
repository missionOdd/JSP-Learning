<%@page contentType="text/html;charset=GB2312" %>
<%@page import="bean.data.PC" %>
<jsp:useBean id="computer" class="bean.data.PC" scope="session"/>
<html>
<body bgcolor=yellow>
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