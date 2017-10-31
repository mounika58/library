<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <%@page import ="java.sql.*"%>
<%
	try
	{

	String login=request.getParameter("login");
	String email=request.getParameter("email");
	String password=request.getParameter("password");
	String gender=request.getParameter("gender");
	String address=request.getParameter("address");
	String city=request.getParameter("city");
	String mobile=request.getParameter("mobile");
	String education=request.getParameter("education");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","root");
 
  Statement st1=con.createStatement();
  	 int i=st1.executeUpdate("insert into register values('"+login+"','"+email+"','"+password+"','"+gender+"','"+address+"','"+city+"','"+mobile+"','"+education+"')");
	 System.out.println("we are after while");
	Statement st=con.createStatement();
	st.executeUpdate("insert into login values('"+login+"','"+password+"')");
	%>
			<br>
			<br>
			<br>
			<br>
           <font color="blue" size="6">Registration Sucessfully Completed</font>
    	   <%
		}
	catch(Exception e)
	{
	}
%>
</body>
</html>
