<%@page contentType="text/html;charset=GB2312" %>
<%@page import="tom.jiafei.MessBoard" %>
<jsp:useBean id="board" class="tom.jiafei.MessBoard" scope="application" />
<html>
<body>
<form action="" method="post" name="form">
    �����������:<br><input type="text" name="name">
    <br>����������Ա���:<br> <input type="text" name="title">
    <br>�����������:<br><textarea name="content" rows="10"
    cols=36 wrap="physical"></textarea>
    <br><input type="submit" value="�ύ��Ϣ" name="submit">
</form>
<jsp:setProperty name="board" property="*" />
<a href="showMess.jsp">�鿴���԰�</a>
</body>
</html>