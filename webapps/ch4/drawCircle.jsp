<%@page contentType="text/html;charset=gb2312" %>
<%@page import="java.awt.*" %>
<%@page import="java.io.*" %>
<%@page import="java.awt.image.*" %>
<%@page import="java.awt.geom.*" %>
<%@page import="com.sun.image.codec.jpeg.*" %>
<html>
	<body bgcolor=yellow>
	<font size=3>
<%
	String R=request.getParameter("radius");
	try{
	double number=Double.parseDouble(R);
	if(number<=0||number>100){
		response.setContentType("image/plain;charset=gb2312");
		out.println(number+"作为园的半径不合理");
	}else{
		//改变MIME类型
		response.setContentType("image/jpeg");
		int width=100,height=100;
		BufferedImage image=new BufferedImage(width,height,BufferedImage.TYPE_INT_RGB);
		Graphics g=image.getGraphics();
		g.setColor(Color.white);
		g.fillRect(0,0,width,height);
		Graphics2D g_2d=(Graphics2D)g;
		Ellipse2D circle=new Ellipse2D.Double(0,0,number,number);
		g_2d.setColor(Color.blue);
		g_2d.fill(circle);
		g.dispose();
		//获取指向用户端的输出流
		OutputStream outClient=response.getOutputStream();
		JPEGImageEncoder encoder=JPEGCodec.createJPEGEncoder(outClient);
		encoder.encode(image);
		}
	}catch(Exception e){
	response.sendRedirect("inputRadius.jsp");
	}
%>
	</font>
	</body>
</html>