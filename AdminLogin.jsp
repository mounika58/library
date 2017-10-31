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
	
		
	if(eno.equals("admin")&&(pwd.equals("admin")))
	{
%>
		<jsp:forward page="ahome.html" />
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
