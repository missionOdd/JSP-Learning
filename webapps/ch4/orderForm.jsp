<%@page contentType="text/html;charset=gb2312"%>
<%@page import="java.util.*" %>
<%

	String book=request.getParameter("bookMess");
	byte[] bytes = book.getBytes("ISO-8859-1");
	book = new String(bytes, "GBK");
	
	if(book!=null){
	StringTokenizer fenxi=new StringTokenizer(book,"@");
	String bookName =fenxi.nextToken();
	String bookISBN=fenxi.nextToken();
	session.setAttribute(bookISBN,book);
	}

%>
<html>
<body bgcolor=cyan>
<font size=2>
<p>Õº È∂©µ•</p>
<table border=3>
<%
	Enumeration keys=session.getAttributeNames();
	while(keys.hasMoreElements()){
	String key=(String)keys.nextElement();
	book=(String)session.getAttribute(key);
	if(book!=null){
	StringTokenizer fenxi=new StringTokenizer(book,"@");
%>
    <tr>
    <td><%=fenxi.nextToken() %></td>
    <td><%=fenxi.nextToken() %></td>
    <td><%=fenxi.nextToken() %></td>
    </tr>

<%
	}
}
%>
</table>
</font>
</body>
</html>
