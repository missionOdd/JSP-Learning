<%@page contentType="text/html;charset=GB2312" %>
<%@page import="bean.data.PC" %>
<jsp:useBean id="computer" class="bean.data.PC" scope="session"/>
<html>
<body bgcolor=yellow>
<table border=1>
<tr>
<th>计算机品牌</th>
<th>计算机型号</th>
<th>生产日期</th>
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