<%-- 
    Document   : signupajax
    Created on : Oct 5, 2018, 6:39:22 PM
    Author     : GTB Student
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
   
        String name,email,password,cpassword;
        name=request.getParameter("fname")+" "+request.getParameter("lname");
        email=request.getParameter("em");
        password=request.getParameter("pass");
        String SALT = "#$%#$%%$%^t$%#";
        cpassword=request.getParameter("cpass");
        if(password.equals(cpassword))
        {
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection myconnection=DriverManager.getConnection("jdbc:mysql://localhost/evedb", "root", "");
                try
                {
                   String q2="select * from signup where email=?";
                   PreparedStatement myst=myconnection.prepareStatement(q2);
                   myst.setString(1, email);
                   ResultSet res=myst.executeQuery();
                   if(res.next())//check whether the result found or not
                   {
                        out.print("3");
                   }
                   else
                   {
                        String q1="insert into signup values(?,?,MD5(?),?)";
                        PreparedStatement mystatement=myconnection.prepareStatement(q1);
                        mystatement.setString(1, name);
                        mystatement.setString(2, email);
                        mystatement.setString(3, password + SALT);
                        mystatement.setString(4, "user");
                        int row=mystatement.executeUpdate();
                        if(row==1)
                        {
                            out.println("1");
                        }
                        else
                        {
                            out.println("0");
                        }
                   }
                }
                catch(Exception e)
                {
                    out.print("Error in query"+e.getMessage());
                }
            }
            catch(Exception e)
            {
                    out.print("Error in connection"+e.getMessage());
            }
        }
        else
        {
            out.print("2");
        }
    
%>
