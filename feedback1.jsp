<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<HTML><HEAD><title>e-Library System</title>   
<TD bgColor=#696534 height=1>
<TABLE>
<TBODY>
<TR> 
<td><img src="images\BUILD.GIF" height=100 width=300></td><td></td><td></td><td></td><td></td><td></td>
<td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>
<td>
<font color=red size=8>E-Library System</TD><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td align=right><img src="images\HOME.GIF" height=100 width=100></td></TR></TBODY></TABLE>
	  <TABLE bgcolor="#F8D307" width="100%" height="16">
 <TR>
	<TD align="center" ><A HREF="AdminLogin2.html" target="f3"><font color=#006600 size=2><b>Admin</b></A></TD>
	<TD align="center"><A HREF="AdminLogin.html"><font color=#006600 size=2><b>Client</b></A></TD>
	<TD align="center"><A HREF="reg.html"><font color=#006600 size=2><b>Registration</b></A></TD>
	<TD align="center"><A HREF="contact.jsp"><font color=#006600 size=2><b>ContactUs</b></A></TD>
</TR>
</TABLE>
<%@ page import="java.sql.*" %>
<%
Connection con=null;
PreparedStatement stat;
int i;
 String sname=request.getParameter("sname");
 String subrating=request.getParameter("subrating");
 String comments=request.getParameter("sid");

try{
 Class.forName("com.mysql.jdbc.Driver");
 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","root");

 stat = con.prepareStatement("insert into feedback values(?,?,?)");
 stat.setString(1,sname);
	stat.setString(2,subrating);
	stat.setString(3,comments);

	i = stat.executeUpdate();
	if(i>0)
	{
		%>

		<h1 align="center"><font color="red" size="8">FeedBack Submitted Successfully</font></h1>
		<%
	} 
		}catch(Exception e){}
%>
</body>
<div id="footer">
<p></p>
</div>
</html>
