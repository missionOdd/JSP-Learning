<%@page contentType="text/html;charset=gb2312"%>
<%@taglib tagdir="/WEB-INF/tags" prefix="computer" %>
<%
	String a=request.getParameter("numberOne");
	String b=request.getParameter("numberTwo");
	String operator=request.getParameter("operator");
	if(a==null||b==null){
		a="";
		b="";
	}
	if(a.length()>0&&b.length()>0){
%>
<computer:Computer numberA="<%=a%>" numberB="<%=b%>" operator="<%=operator%>" />
��������<%=a %><%=operator%><%=b%>=<%=result%>
<%
	}
%>
<br>
<a href="inputNumber.jsp">����������ݽ���</a>