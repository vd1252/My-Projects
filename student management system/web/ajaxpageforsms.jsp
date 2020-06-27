<%
    if(!"administrator".equals(session.getAttribute("usertype")))
    {
        response.sendRedirect("loginpage.jsp");
    }
%>
<%@page import="java.sql.*" %>
<%@include file="databaseinfo.jsp" %>
<% 
    String sno=request.getParameter("sno");
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=DriverManager.getConnection(PATH+PLACE,USERNAME,PASSWORD);
	try
	{
            String q="delete from addcourse where SerialNo=?";
            PreparedStatement myst=conn.prepareStatement(q);
            myst.setString(1,sno);
            int result=myst.executeUpdate();
            if(result>0)
            {
                out.print("success");
            }
            else
            {
                out.print("not");
            }
	}
	catch(Exception e)
	{

            out.print("Error in query "+e.getMessage());
	}
}
catch(Exception e)
{

            out.print("Error in connection "+e.getMessage());
}
%>