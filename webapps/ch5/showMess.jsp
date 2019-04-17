<%@page contentType="text/html;charset=GB2312" %>
<%@page import="tom.jiafei.MessBoard" %>
<jsp:useBean id="board" class="tom.jiafei.MessBoard" scope="application" />
<html>
<body bgcolor=yellow>
    <jsp:getProperty name="board" property="allMessage" />
    <a href="inputMess.jsp">нрр╙аТят</a>
</body>
</html>