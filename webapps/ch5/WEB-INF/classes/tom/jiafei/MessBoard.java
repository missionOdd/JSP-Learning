package tom.jiafei;
import java.util.*;
import java.text.SimpleDateFormat;

public class MessBoard{
    String name,title,content;
    StringBuffer allMessage;
    ArrayList<String> savedName,savedTitle,savedContent,savedTime;


    public MessBoard(){
        savedName=new ArrayList<>();
        savedTitle = new ArrayList<>();
        savedContent=new ArrayList<>();
        savedTime = new ArrayList<>();
    }
    public void setName(String name){
        try{
            byte bb[]= name.getBytes("iso-8859-1");
        }catch(Exception e){ }
        this.name=name;
        savedName.add(name);
        Date time=new Date();
        SimpleDateFormat matter=new SimpleDateFormat("yyyy-MM-dd,HH:mm:ss");
        String messTime=matter.format(time);
        savedTime.add(messTime);
    }

    public void setTitle(String title) {
        try{
            byte bb[]=title.getBytes("iso-8859-1");
            title=new String(bb);
        }catch(Exception e){ }
        this.title = title;
        savedTitle.add(title);
    }

    public void setContent(String content) {
        try{
            byte bb[]=content.getBytes("iso-8859-1");
            content=new String(bb);
        }catch(Exception e){ }
        this.content = content;
        savedContent.add(content);
    }

    public StringBuffer getAllMessage() {
        allMessage=new StringBuffer();
        allMessage.append("<table border=1>");
        allMessage.append("<tr>");
        allMessage.append("<th>留言者姓名</th>");
        allMessage.append("<th>留言标题</th>");
        allMessage.append("<th>留言内容</th>");
        allMessage.append("<th>留言时间</th>");
        allMessage.append("</tr>");
        for (int k = 0; k < savedName.size(); k++) {
            allMessage.append("<tr>");
            allMessage.append("<td>");
            allMessage.append(savedName.get(k));
            allMessage.append("</td>");
            allMessage.append("<td>");
            allMessage.append(savedTitle.get(k));
            allMessage.append("</td>");
            allMessage.append("<td>");
            allMessage.append("<textarea>");
            allMessage.append(savedContent.get(k));
            allMessage.append("</textarea>");
            allMessage.append("</td>");
            allMessage.append("<td>");
            allMessage.append(savedTime.get(k));
            allMessage.append("</td>");
            allMessage.append("</tr>");
        }
        return allMessage;
    }
}