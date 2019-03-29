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
    rili.set(y,m-1,1);//����������year ��month��1��,ע��0��ʾ1��---11��ʾ12��
    int weekday =rili.get(Calendar.DAY_OF_WEEK)-1;//���ڼ�
    int dayAmount=0;    //ĳ�·�����
    if(m==1||m==3||m==5||m==7||m==8||m==10||m==12)
        dayAmount=31;
    if(m==4||m==6||m==9||m==11)
        dayAmount=30;
    if(m==2)//�����ж�
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
	out.print("��ݻ��·ݲ�����");
}
%>
    <h3><%= year%>��<%=month %>�µ�����:</h3>
    <table border=1>
    <tr>
    <th>������</th>
    <th>����һ</th>
    <th>���ڶ�</th>
    <th>������</th>
    <th>������</th>
    <th>������</th>
    <th>������</th>
    </tr>
    <% for(int n=0;n<day.length;n=n+7){
        %> <tr> <%
        for(int i=n;i<7+n;i++){
        %><td><%=day[i] %></td><%
        }
 %> </tr> <%
    }%>
    </table>