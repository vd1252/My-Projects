<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
                                                          String URL="", UNAME="", PASS="";
                                                           URL = getServletContext().getInitParameter("URL");
                                                           UNAME = getServletContext().getInitParameter("UNAME");
                                                           PASS = getServletContext().getInitParameter("PASS");
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection myconnection=DriverManager.getConnection(URL, UNAME, PASS);
            try
            {
                       /* 
                        String qu2="select count(*) from menu where rid=? and f_id=?";
                        int total_records=0;
                        PreparedStatement myst2=myconnection.prepareStatement(qu2);
                        myst2.setString(1,session.getAttribute("rid").toString());
                        myst2.setString(2,request.getParameter("food"));
                        ResultSet myres2=null;
                        myres2=myst2.executeQuery();
                        if(myres2.next())
                        {
                            total_records=myres2.getInt(1);
                        }
                        int records_per_page = 1;

                        int totalpages = (int)(Math.ceil((double)total_records / (double)records_per_page));
                        int pageno=0;
                        if(request.getParameter("pageno")!=null)
                        {
                            pageno=Integer.parseInt(request.getParameter("pageno"));
                        }
                        else
                        {
                            pageno=1;
                        }
                        int offset = (records_per_page*(pageno-1));
                        */
                        ResultSet myres=null; 
                //String qu="select * from menu where rid=? and f_id=? order by itemname desc limit " + offset + "," + records_per_page;
                //String qu="select * from foodtype where rid=? order by foodtype desc limit " + offset + "," + records_per_page";
                String qu="select * from menu where rid=? and f_id=?";
                PreparedStatement myst=myconnection.prepareStatement(qu);
                myst.setString(1,session.getAttribute("rid").toString());
                myst.setString(2,request.getParameter("food"));
                myres=myst.executeQuery();
                if(myres.next())
                {
                    out.print("<table class='table' >"
                            + "<tr>"
                            + "<td><b>Food Item Image </b></td>"
                            + "<td><b>Food Item name </b></td>"
                            + "<td><b>Update</b></td>"
                            + "<td><b>Delete</b></td>"
                            + "</tr>");
                    do
                    {
                        out.print("<tr>"
                                + "<td><img src='cimages/"+myres.getString("image")+"' width='250px' border='1px'/></td>"
                                + "<td>"+myres.getString("itemname")+"</td>"
                                + "<td><a href='updatemenu.jsp?m_id="+myres.getString("m_id")+"'>Update</a></td>"
                                + "<td><a href='deletemenu.jsp?m_id="+myres.getString("m_id")+"' class='del' id='"+myres.getString("m_id")+"'>Delete</a></td>"
                                + "</tr>");
                    }
                    while(myres.next());
                    out.print("</table>");
                    out.print("<center>");
                  /*  
                    for(int x=1;x<=totalpages;x++)
                            {
                                if(x==pageno)
                                {
                                    out.print(x);
                                }
                                else
                                {
                                    out.print("<a href=showmenuajax.jsp?pageno=" + x + ">" + x + "</a>");
                                }
                                
                            }
                      */
                     
                    out.print("</center><br><br>");
                }
                else
                {
                    out.print("Menu not available");
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
    
%> 