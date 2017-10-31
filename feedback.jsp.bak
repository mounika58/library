<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script language="javascript">
function validateForm(formObj)
{

    if(formObj.sname.value.length==0)
    {
           alert("Please enter Student Name...!");
            formObj.sname.focus();
           return false;
   }

  if(formObj.sid.value.length==0)
  {
         alert("Please Comments...!");
         formObj.sid.focus();
         return false;
}
if(formObj.fname.value.length==0)
 {
      alert("Please enter Faculty  Name...!");
       formObj.fname.focus();
        return false;
}

if(formObj.subjectid.value.length==0)
{
        alert("Please enter Subject ID...!");
        formObj.subjectid.focus();
        return false;
}
if(formObj.comments.value.length==0)
{
     alert("Please Write Comments...!");
     formObj.comments.focus();
     return false;
}

}
 </script>

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
</head>
<body>
			<form method="post" action="feedback1.jsp" onsubmit="return validateForm(this);">
			<center><font color=blue size=6>Feedback Form</font></center><br>
			<table align="center">
	<tr>
	       <td><font color="blue" size="5">Name</font></td>
	       <td><input type="text" name="sname"/></td>
	</tr>
  <tr>
   <td><font color="blue" size="5">Rating:</font></td> 
   <td ><select name="subrating">
	              <option>Exellent</option>
	             <option>Very Good</option>
	             <option>Good</option>
	             <option>Average</option>
	             <option>Poor</option>
	         </select>
	</td>
	</tr>

	<tr>
   <td><font color="blue" size="5">Write Comments...</font></td> 
   <td ><textarea cols="25" name="sid" rows="10"></textarea></td>
	</tr>

<tr>
	<td></td>
	<td><input type="submit" value="Submit"/></td>
	</tr>



</table>
</form>

</div>
</body>
</html>