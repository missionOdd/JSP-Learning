<%@ page contentType = "text/html;charset=GB2312" %>
<html>
<body bgcolor =yellow>
<h3>乘法表</h3>
<FONT size = 3>
<%
	for(int j =1;j<=9; j++){
		for(int i = 1; i<= j; i++){
			int n =i*j;
			out.print(i+" * "+j + " = "+n+ "");
		}
		out.print("</br>");
}
%>
</FONT>
</body>
</html>
