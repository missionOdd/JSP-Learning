<%@tag pageEncoding="utf-8"%>
<%@tag import="java.util.*" %>
<%@attribute name="str" required="true" %>
<%@variable name-given="wordList" variable-class="java.util.ArrayList" scope="AT_END"%>

<%
//返回给JSP页面的list对象
ArrayList<String> list=new ArrayList<String>();
//空格,数据和符号组成的正值表达式
String regex="[\\s\\d\\p{Punct}]+";
String words[]=str.split(regex);
for(int i=0;i<words.length;i++){
	list.add(words[i]);
}
//将list对象返回给JSP页面
jspContext.setAttribute("wordList",list);
%>