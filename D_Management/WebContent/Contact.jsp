<%@include file="Db.jsp" %>


<%

String comment=request.getParameter("comment");

String qr="insert into comments values(?)";
PreparedStatement ps=con.prepareStatement(qr);
ps.setString(1, comment);

int i=ps.executeUpdate();
if(i>0)
{
	out.println("<script>Window.alert('Comment sent')</script>");

	response.sendRedirect("Contact.html");
}
else
{
	out.println("<script>Window.alert('Failed to sent your comment')</script>");
}

con.close();
%>
