<%@tag pageEncoding="gb2312" %>
<%@tag import="java.util.*" %>
<%@attribute name="year" required="true" %>
<%@attribute name="month" required="true" %>
<%
int y=1999,m=1;
String[] day=new String[42];
try{
    y=Integer.parseInt(year);
    m=Integer.parseInt(month);
    Calendar rili=Calendar.getInstance();
    rili.set(y,m-1,1);//将日历翻到year 年month月1日,注意0表示1月---11表示12月
    int weekday =rili.get(Calendar.DAY_OF_WEEK)-1;//星期几
    int dayAmount=0;    //某月份天数
    if(m==1||m==3||m==5||m==7||m==8||m==10||m==12)
        dayAmount=31;
    if(m==4||m==6||m==9||m==11)
        dayAmount=30;
    if(m==2)//二月判断
        if(((y%4 == 0)&&(y%100!=0))||(y%400==0))
            dayAmount=29;
        else
            dayAmount=28;

    for(int i=0;i<weekday; i++)
        day[i]="--";
    for(int i=weekday,n=1;i<weekday+dayAmount;i++){
        day[i]=String.valueOf(n);
        n++;
    }

    for(int i=weekday+dayAmount;i<42;i++)
        day[i]="--";
}catch(Exception e){
	out.print("年份或月份不合理");
}
%>
    <h3><%= year%>年<%=month %>月的日历:</h3>
    <table border=1>
    <tr>
    <th>星期日</th>
    <th>星期一</th>
    <th>星期二</th>
    <th>星期三</th>
    <th>星期四</th>
    <th>星期五</th>
    <th>星期六</th>
    </tr>
    <% for(int n=0;n<day.length;n=n+7){
        %> <tr> <%
        for(int i=n;i<7+n;i++){
        %><td><%=day[i] %></td><%
        }
 %> </tr> <%
    }%>
    </table>