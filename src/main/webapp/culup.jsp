<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/madeinrwanda";%>
<%!String user = "root";%>
<%!String psw = "";%>
<%
String id = request.getParameter("id");
String cname=request.getParameter("cname");
String date=request.getParameter("date");
String detail=request.getParameter("details");
String category=request.getParameter("category");
if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update culture set culture_id=?,culture_name=?,date1=?,category=?,Details=? where culture_id="+id;
ps = con.prepareStatement(sql);
ps.setString(1,id);
ps.setString(2, cname);
ps.setString(3, date);
ps.setString(4, category);
ps.setString(6, detail);
int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");
}
else
{
out.print("There is a problem in updating Record.");
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>