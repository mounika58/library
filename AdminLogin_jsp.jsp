<HTML>
<HEAD>
<TITLE> e-shopping </TITLE>
</HEAD>

<BODY BGCOLOR>
<%@ page import="java.sql.*" %>
<%! 
	Connection con;
	Statement st;
	ResultSet rs;
%>

<%  
        try
		{
			String eno=request.getParameter("T1");
			String pwd=request.getParameter("T2");
			System.out.printf(eno+""+pwd);
	
		Class.forName("com.mysql.jdbc.Driver");
	  
	  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","root");
	st=con.createStatement();
	
	rs=st.executeQuery("select *from login where uname='"+eno+"' and password='"+pwd+"'");
	
	if(rs.next())
	{
%>
		<jsp:forward page="uhome.html" />
<%
 
	}
	else
	{
%>
		 <jsp:forward page="Admlogfail.html" />
<%
	}
	}
	catch(Exception e)
	{
	%>
	    <jsp:forward page="Admlogfail.html" />

<%		System.out.println("ERROR>>>>>Database Not Availble");
		e.printStackTrace();
	}
	
	
%>

</BODY>
</HTML>
