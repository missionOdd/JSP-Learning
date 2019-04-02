<%@page contentType="text/html;charset=gb2312" %>
<html>
<body bgcolor=cyan>
<font size=5 >
<form action="/ch4/receiveNumber.jsp" method=post name=form>
输入运算数，选择运算符号：<br>
<input type=text name ="numberOne" size=6/>
<select name="operator">
<option value="+">+
<option value="-">-
<option value="*">*
<option value="/">/
</select>
<input type=text name="numberTwo" size=6>
<br>
<input type="submit" value="提交你的选择" name="submit">
</form>
</font>
</body>
</html>