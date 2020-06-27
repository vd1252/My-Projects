/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package myproject;

import static java.awt.Frame.MAXIMIZED_BOTH;
import java.sql.*;
import javax.swing.JOptionPane;
import javax.swing.manager;

public class vkmain {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
     try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }}
      catch(Exception e)
             {
                JOptionPane.showMessageDialog(null, "Error in Query " + e.getMessage());
             }
       
    try
           {
                 Connection myconnection;
                 String path="jdbc:mysql://localhost/";
                 String place="category";
                 String uname="root" ;
                
                 String pass="";
                  myconnection=DriverManager.getConnection(path+place, uname, pass);
 
                      try
                         {
                               String a="select * from logindatabase";
                               PreparedStatement mystatement=myconnection.prepareStatement(a);
                   
                                ResultSet myresult =  mystatement.executeQuery();
                                 if(myresult.next())
                               {      login obj=new login();
                                      obj.setVisible(true);
                                    
                           
                               }
                                 else
                                  {JOptionPane.showMessageDialog(null, "Running software first time,please create Admin account");
                                     createadmin obj=new createadmin();
                                     obj.setVisible(true);
                                    
                               
                               }
                
 
             }
            catch(Exception e)
             {
                JOptionPane.showMessageDialog(null, "Error in Query " + e.getMessage());
             }
           finally
             {
             myconnection.close();
             }
 
 
          }
          catch(Exception e)
            {
           JOptionPane.showMessageDialog(null, "Error in Connection " + e.getMessage());
            }   
    }}

    
