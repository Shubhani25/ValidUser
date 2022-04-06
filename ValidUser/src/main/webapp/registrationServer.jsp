<%
String s1 = (String) session.getAttribute("errName");
String s2 = (String) session.getAttribute("errAge");

if(s1==null){
	s1="";
}
if(s2==null){
	s2="";
}
%>

<!DOCTYPE html>
<html>
<body>
<h1>Validate User on Server Side</h1>
<form action="StoreUser">
<pre>
	Name <input type="text" name="t1" id="t1"/><%=s1 %>
	Age	 <input type="text" name="t2" id="t2"/><%=s2 %>
		<input type="submit" value="Register"/>
</pre>
</form>
</body>
</html>