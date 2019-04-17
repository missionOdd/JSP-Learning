<%@page contentType="text/html;charset=GB2312" %>
<%@page import="java.sql.*" %>
<html>
<body bgcolor=cyan>
<%
Connection con;
Statement sql;
ResultSet rs;
try{
    Class.forName("com.mysql.jdbc.Driver");

}catch(Exception e){
    out.print(e);
}
try{
    String uri="jdbc:mysql://localhost:3306/student";
    String name="root";
    String psw="root";
    con=DriverManager.getConnection(uri,name,psw);
    sql=con.createStatement();
    rs=sql.executeQuery("select * from mess");
	out.print("<table border=2>");
    out.print("<tr>");
    out.print("<th width=100>"+"学号");
    out.print("<th width=100>"+"姓名");
    out.print("<th width=100>"+"出生");
    out.print("<th width=100>"+"成绩");
    out.print("</tr>"); 
    while(rs.next()){
        out.print("<tr>");
        out.print("<td>"+rs.getString(1)+"</td>");
        out.print("<td>"+rs.getString(2)+"</td>");
        out.print("<td>"+rs.getDate(3)+"</td>");
        out.print("<td>"+rs.getFloat(4)+"</td>");
        out.print("</tr>");
    }
    out.print("</table>");
    con.close();
}catch(SQLException e){
    out.print(e);
}
%>
</body>
</html>