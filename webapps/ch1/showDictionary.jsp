<%@ page contentType = "text/html;charset=GB2312" %>
<%@ page import="java.util.*" %>
<html>
<body bgcolor =yellow >
<FONT size = 3>
<%!
	TreeSet<String> dictionary = new TreeSet<String>();
	public void addWord(String s){
		String word[]=s.split(" ");
		for(int i=0;i<word.length;i++){
			dictionary.add(word[i]);
		
		}
	
	}
%>

<%
	String str =request.getParameter("word");
	addWord(str);
	Iterator<String> te = dictionary.iterator();
	while(te.hasNext()){
	String word =te.next();
	out.print(" "+word);
	}

%>

</FONT>
</body>
</html>
