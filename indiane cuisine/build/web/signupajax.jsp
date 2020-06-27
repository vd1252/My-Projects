<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%String myURL="", myUNAME="", myPASS="";
        myURL = getServletContext().getInitParameter("URL");
        myUNAME = getServletContext().getInitParameter("UNAME");
        myPASS = getServletContext().getInitParameter("PASS");
   
        String name,email,password,cpassword;
        int secretkey=0;
        name=request.getParameter("fname")+" "+request.getParameter("lname");
        email=request.getParameter("em");
        password=request.getParameter("pass");
        cpassword=request.getParameter("cpass");
        String SALT="%%%,**,%$^^";
        if(password.equals(cpassword))
        {
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection myconnection=DriverManager.getConnection(myURL, myUNAME, myPASS);
                try
                {
                    
                   String qsec="select * from signup"; 
                   PreparedStatement mystsec=myconnection.prepareStatement(qsec);
                   ResultSet ressec=mystsec.executeQuery();
                   if(ressec.next())
                   {
                       secretkey = ressec.getInt("secretkey");
                   }
                   else
                   {
                       secretkey=5000000;
                   }
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
                       int sc=secretkey++;
                        String q1="insert into signup values(?,?,MD5(?),?,?)";
                        
                        PreparedStatement mystatement=myconnection.prepareStatement(q1);
                        mystatement.setString(1, name);
                        mystatement.setString(2, email);
                        mystatement.setString(3, password+SALT);
                        mystatement.setString(4, "user");
                        mystatement.setInt(5,sc);
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
