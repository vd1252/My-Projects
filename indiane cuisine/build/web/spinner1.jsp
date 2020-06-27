<%
    
    if(request.getParameter("panel")!=null)
    {
        String mypanel=request.getParameter("panel");
        out.print(mypanel);
    }
    
 %>