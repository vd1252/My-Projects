<%@page import="java.sql.*"%>
<%@include file="databaseinfo.jsp"%>
<%

    if(request.getParameter("email")!=null)
    {
        String result;
        String email=request.getParameter("email");
       
       try
       {
          Class.forName("com.mysql.jdbc.Driver");
          Connection myconn=DriverManager.getConnection(PATH+PLACE,USERNAME,PASSWORD);
            try
            {
                String q1="select rid from restauranttable where useremailid=?";
                 PreparedStatement myst1=myconn.prepareStatement(q1);
                 myst1.setString(1,email);
                 ResultSet myresult1=myst1.executeQuery();
                 if(myresult1.next())
                 {
                     String tmid=myresult1.getString("rid");
                     
                    String q="select * from restauranttable where useremailid=?";
                    PreparedStatement myst=myconn.prepareStatement(q);
                    myst.setString(1,tmid);
                    ResultSet myresult=myst.executeQuery();
                     if(myresult.next())
                    {
                        //email id is correct
                        //so fetch question and answer but dont show on original page
                        //so keep it in variable
                        session.setAttribute("secanswer",myresult.getString("secques"));
                      result="{\"squestion\":\""+myresult.getString("secques")+ "\",\"sanswer\":\"" + myresult.getString("secans") + "\"}";
                      
                    }
                     else
                     {
                        result="wrong";
                    }
                 }
                 else
                 {
                     out.print("Wrong query outside");
                 }
//              
////                String q2="select * from addstudent where studentemail=?";
//               
////                PreparedStatement myst1=myconn.prepareStatement(q2);
//               
////                myst1.setString(1,email);
//                
////                ResultSet myresult1=myst1.executeQuery();
//               
////                else if(myresult1.next())
////                {
////                     session.setAttribute("secanswer",myresult1.getString("stusecurityanswer"));
////                  result="{\"squestion\":\""+myresult1.getString("stusecurityquestion")+ "\",\"sanswer\":\"" + myresult1.getString("stusecurityanswer") + "\"}";
////                  
////                }
//               
            }
            catch(Exception e)
            {
                out.print("<script type='text/javascript'>");
                out.print("alert('Error in query')");
                
                out.print("</script>");
                out.print(e.getMessage());
            }
            finally
            {
                myconn.close();
            }
        }
        catch(Exception e)
        {
             out.print("<script type='text/javascript'>");
                out.print("alert('Error in Connection')");
               
                out.print("</script>");
                 out.print(e.getMessage());
        }
    }
//    else if(request.getParameter("securityanswer")!=null)
//    {
//        
//        String securityanswer=request.getParameter("securityanswer");
//        
//            if(securityanswer.equals(session.getAttribute("secanswer")))
//            {
//            out.print("success");
//            }
//            else
//            {
//            out.print("unsuccessfull");
//            }
//    }
//    else if(request.getParameter("selectedvalue")!=null&&request.getParameter("emailid")!=null)
//    {
//        String email,fname,lname,x;
//        email=request.getParameter("emailid");
//        out.print(email);
//        out.print(request.getParameter("selectedvalue"));
//        try
//        {
//        Class.forName("com.mysql.jdbc.Driver");
//        Connection myconn=DriverManager.getConnection(PATH+PLACE,USERNAME,PASSWORD);
//            try
//            {
//                String q="select * from usertable where email=?";
//                PreparedStatement myst=myconn.prepareStatement(q);
//                myst.setString(1,email);
//                ResultSet myresult=myst.executeQuery();
//                if(myresult.next())
//                {
//                    fname=myresult.getString("firstname");
//                    lname=myresult.getString("lastname");
//                    
//                    Properties props = new Properties();
//                    props.put("mail.smtp.host", "smtp.gmail.com");
//                    props.put("mail.smtp.socketFactory.port", "465");
//                    props.put("mail.smtp.socketFactory.class",
//                    "javax.net.ssl.SSLSocketFactory");
//                    props.put("mail.smtp.auth", "true");
//                    props.put("mail.smtp.port", "465");
//        
//                    Session session2 = Session.getInstance(props,
//                    new javax.mail.Authenticator() 
//                    {
//                        protected PasswordAuthentication getPasswordAuthentication() 
//                        {
//                            return new PasswordAuthentication("shoppersvillaofficial@gmail.com","shoppersvilla99");
//                        }
//                    });
//                        try
//                        {
//                          Message message = new MimeMessage(session2);
//                            message.addHeader("Content-type", "text/html; charset=UTF-8");
//                            message.setFrom(new InternetAddress("gtbtrial@gmail.com"));
//                            message.setRecipients(Message.RecipientType.TO,InternetAddress.parse("shoppersvillaofficial@gmail.com"));
//                            message.setSubject("Welcome to PGSite");
//                            String link="<a href=http://localhost:8080/otp.jsp?name=" + fname + "&email=" + email + ">Click here to verify email</a>";
//                            message.setText("To change your password click on the link below " + link);
//
//                            Transport.send(message);
//                            myst.execute();
//                            
//
//                        }
//                        catch (MessagingException e)
//                        {
//                        throw new RuntimeException(e);
//                        }
//                        
//
//
//                }
//                else
//                {
//                    out.print("wrong");
//                }
//            }
//            catch(Exception e)
//            {
//                     out.print("<script type='text/javascript'>");
//                     out.print("alert('Error in query')");
//                     out.print("</script>");
//                     out.print(e.getMessage());
//            }
//            finally
//            {
//                
//                myconn.close();
//            }
//        }
//        catch(Exception e)
//        {
//            out.print("<script type='text/javascript'>");
//                     out.print("alert('Error in Connection')");
//                     out.print("</script>");
//                     out.print(e.getMessage());
//        }
//        
        
//    }
    %>
