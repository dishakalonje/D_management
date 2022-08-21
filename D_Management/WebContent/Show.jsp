<%@include file="Db.jsp"%>'
<title>Show Details</title>
	<style>
	body
	{
    background-image:url('https://www.tutorean.co.uk/bettertutor/wp-content/uploads/2018/05/online.gif');
    background-size:100%;
    background-repeat: repeat-y;
    background-attachment: fixed;
    height:100%;
    width:100%;
	}
	</style>
<table align="left" border="10px">
<%
String qr="select * from registration";
Statement st=con.createStatement();
ResultSet rs=st.executeQuery(qr);
if(rs.next())
{
	do
	{
		String name=rs.getString("name");
		String company=rs.getString("company");
		String email=rs.getString("email");
		String location=rs.getString("location");
		String gender=rs.getString("gender");
		int cno=rs.getInt("cno");
		String address=rs.getString("address");
		%>
		<tr>
		<td><%=name %></td>
		<td><%=company %></td>
		<td><%=email %></td>
		<td><%=location %></td>
		<td><%=gender %></td>
		<td><%=cno %></td>
		<td><%=address %></td>
		</tr>
		<%
	}
	
	while(rs.next());
}
else
{
	out.println("No records found");
}
%>
</table>