<%@tag pageEncoding="gb2312" %>
<%@tag import="java.util.*" %>
<%attribute name="year" required="true"%>
<%attribute name="month" required="true"%>
<%
int y=1999,m=1;
String[] day=new String[42];
try{
y=Integer.parseInt(year);
m=Integer.parseInt(month);
Calendar rili=Calendar,getInstance():
rili,set(y,m-1,1);//将日历翻到

}catch(Exception e){
	out.print("年份或月份不合理");
}
%>