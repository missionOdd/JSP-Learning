<%@page contentType="text/html;charset=GB2312" %>
<%@page import="tom.jiafei.MessBoard" %>
<jsp:useBean id="board" class="tom.jiafei.MessBoard" scope="application" />
<html>
<body>
<form action="" method="post" name="form">
    输入你的名字:<br><input type="text" name="name">
    <br>输入你的留言标题:<br> <input type="text" name="title">
    <br>输入你的留言:<br><textarea name="content" rows="10"
    cols=36 wrap="physical"></textarea>
    <br><input type="submit" value="提交信息" name="submit">
</form>
<jsp:setProperty name="board" property="*" />
<a href="showMess.jsp">查看留言板</a>
</body>
</html>