<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSP page</title>
</head>
<body>
<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<%@page import="javax.sql.*" %>
<%@page import="java.sql.Connection" %>
<%
String name=request.getParameter("name");

String emailID=request.getParameter("emailid");

String phoneno=request.getParameter("phone_no");

String password=request.getParameter("password");

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection
("jdbc:mysql://localhost:3306/magily_db","root","magily2015");
Statement st=con.createStatement();
String sql="insert into signup_tb(name,emailid,phone_no,password) values('"+name+"','"+emailID+"','"+phoneno+"','"+password+"')";
int flag=st.executeUpdate(sql);
if(flag==1)
{
out.println("Added!");
response.sendRedirect("final.html");
}
else
{
out.println("Failed");
}
%>
</body>
</html>