<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
	<TD align="center" ><A HREF="reg.html" target="f3"><font color=#006600 size=2><b>Add users</b></A></TD>
	<TD align="center"><A HREF="#"><font color=#006600 size=2><b>Total users</b></A></TD>
	<TD align="center"><A HREF="feed.jsp"><font color=#006600 size=2><b>Feedback</b></A></TD>
	<TD align="center"><A HREF="contact.jsp"><font color=#006600 size=2><b>ContactUs</b></A></TD>
</TR>
</TABLE>

<TABLE width="100%" bgcolor="#008000">
<TR>
	<TD></TD>
</TR>
</TABLE>
<%@ page import="java.sql.*" %>
<%
try
{
 Class.forName("com.mysql.jdbc.Driver");
 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","root");
 System.out.println("connection established");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from register");
%>
<p>&nbsp;</p><center>
  	<h2 ><a href="#">Total Users</a></h2>
  <table border=\"1\"  bordercolor="#810988""align="center">
   <tr>
		<td width='25%'><strong><font  color="#810988" size=\"5\"  > NAME</font></strong></td>
		<td width='25%'><strong><font  color="#810988" size=\"5\"  >Email</font></strong></td>
		<td width='25%'><strong><font  color="#810988" size=\"5\"  >pwd</font></strong></td>
		<td width='25%'><strong><font  color="#810988" size=\"5\"  >gender</font></strong></td>
		<td width='25%'><strong><font  color="#810988" size=\"5\"  >address</font></strong></td>
		<td width='25%'><strong><font  color="#810988" size=\"5\"  >city</font></strong></td>
		<td width='25%'><strong><font  color="#810988" size=\"5\"  >mobile</font></strong></td>
		<td width='25%'><strong><font  color="#810988" size=\"5\"  >Education</font></strong></td>
 <% 
    while(rs.next())
    
    {
       %>
    <tr>
      <td width="20%"><%=rs.getString(1) %></td>
      <td width="20%"><%=rs.getString(2) %></td>
      <td width="20%"><%=rs.getString(3) %></td>
	  <td width="20%"><%=rs.getString(4) %></td>
	  <td width="20%"><%=rs.getString(5) %></td>
	  <td width="20%"><%=rs.getString(6) %></td>
	  <td width="20%"><%=rs.getString(7) %></td>
	  <td width="20%"><%=rs.getString(8) %></td>
	   <%
    }
 %>
     
        </tr>
        </table>
<%
}
catch(Exception e)
{
System.out.println(e);
} 
%>
<p align="center">
<a href="AdminLogin.jsp"><font color=red size=4>Back</font></a><br><br>
<a href="index.html">
<img src="images/back.jpg" style="width:50px; height:50px;"/><br>Logout</a><br><br><br><br>
<div id="footer">
<p> www.jntu.edu.in </p>
</div>
<!-- end #footer -->
</body>
</html>
