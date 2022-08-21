
<%@include file="Db.jsp" %>
<%

String name=request.getParameter("name");
String company=request.getParameter("company");
String email=request.getParameter("email");
String location=request.getParameter("location");
String gender=request.getParameter("gender");
String c=request.getParameter("cno");
int cno=Integer.parseInt(c);
String address=request.getParameter("address");

String qr="insert into registration values(?,?,?,?,?,?,?)";
PreparedStatement ps=con.prepareStatement(qr);

ps.setString(1, name);
ps.setString(2, company);
ps.setString(3, email);
ps.setString(4, location);
ps.setString(5, gender);
ps.setInt(6, cno);
ps.setString(7, address);

int i=ps.executeUpdate();


if(i>0)
{
	out.println("<script>window.alert('Sucessfully Registered')</script>");
}
else
{
	out.println("<script>window.alert('Registration Failed')</script>");
}
con.close();
%>
