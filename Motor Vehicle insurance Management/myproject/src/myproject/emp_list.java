/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package myproject;

import java.awt.print.PrinterException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.MessageFormat;
import java.text.SimpleDateFormat;
import javax.swing.JOptionPane;
import javax.swing.JTable;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author PC
 */
public class emp_list extends javax.swing.JInternalFrame {

    /**
     * Creates new form emp_list
     */
    public emp_list() {
        initComponents();
//         try
//           {
//                 Connection myconnection;
//                 String path="jdbc:mysql://localhost/";
//                 String place="category";
//                 String uname="root" ;
//                
//                 String pass="";
//                  myconnection=DriverManager.getConnection(path+place, uname, pass);
//         try
//                      {    
//                            
//                            
//                            String a="select * from emp_table";
//                            PreparedStatement mystatement = myconnection.prepareStatement(a);
//                     
//                            ResultSet myresult=mystatement.executeQuery();
//                   
//                             if(myresult.next())
//                             {{
//                                          DefaultTableModel mymodel=(DefaultTableModel) jTable1.getModel();
//                                            mymodel.setRowCount(0);
//                                        do
//                                        {  String emp_id,emp_name,emp_desg,gender,address,dob;
//                                           emp_id=myresult.getString("emp_id");
//                                           emp_name=myresult.getString("emp_name");
//                                           emp_desg=myresult.getString("emp_desig");
//                                           gender=myresult.getString("gender");
//                                           address=myresult.getString("address");
//                                           dob=myresult.getString("dob");
//                                          
//                                           mymodel.addRow(new Object[]{emp_id,emp_name,emp_desg,gender,address,dob});
//                                          }
//                                 while(myresult.next());}}
//                      
//        
//                  else
//                {JOptionPane.showMessageDialog(rootPane, "No employee exist");
//                }
//             }
//             catch(Exception e)
//            {
//               JOptionPane.showMessageDialog(rootPane, "Error in Query " + e.getMessage());
//            }
               

                 
                  
//          finally
//            {
//            myconnection.close();
//            }
// 
// 
//            }
//          catch(Exception e)
//     {
//      JOptionPane.showMessageDialog(rootPane, "Error in Connection " + e.getMessage());
//     }
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jScrollPane1 = new javax.swing.JScrollPane();
        jTable1 = new javax.swing.JTable();
        jButton2 = new javax.swing.JButton();
        d1 = new com.toedter.calendar.JDateChooser();
        d2 = new com.toedter.calendar.JDateChooser();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jButton1 = new javax.swing.JButton();
        srhbox = new javax.swing.JTextField();
        jButton3 = new javax.swing.JButton();
        jLabel3 = new javax.swing.JLabel();

        setClosable(true);
        setIconifiable(true);
        setMaximizable(true);
        setResizable(true);
        setTitle("employee_list");
        getContentPane().setLayout(null);

        jTable1.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "emp_id", "emp_name", "emp_desg", "gender", "address", "dob"
            }
        ) {
            boolean[] canEdit = new boolean [] {
                false, false, false, false, false, false
            };

            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
        });
        jScrollPane1.setViewportView(jTable1);

        getContentPane().add(jScrollPane1);
        jScrollPane1.setBounds(210, 60, 990, 370);

        jButton2.setText("PRINT");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });
        getContentPane().add(jButton2);
        jButton2.setBounds(650, 460, 90, 23);
        getContentPane().add(d1);
        d1.setBounds(600, 20, 140, 30);
        getContentPane().add(d2);
        d2.setBounds(830, 20, 145, 30);

        jLabel1.setText("FROM");
        getContentPane().add(jLabel1);
        jLabel1.setBounds(530, 20, 50, 14);

        jLabel2.setText("TO");
        getContentPane().add(jLabel2);
        jLabel2.setBounds(780, 20, 30, 14);

        jButton1.setText("SEARCH");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });
        getContentPane().add(jButton1);
        jButton1.setBounds(1060, 20, 120, 23);
        getContentPane().add(srhbox);
        srhbox.setBounds(220, 20, 120, 30);

        jButton3.setIcon(new javax.swing.ImageIcon(getClass().getResource("/mobile-search.png"))); // NOI18N
        jButton3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton3ActionPerformed(evt);
            }
        });
        getContentPane().add(jButton3);
        jButton3.setBounds(360, 20, 31, 20);

        jLabel3.setIcon(new javax.swing.ImageIcon("C:\\Users\\PC\\Desktop\\5220071-plain-picture.jpg")); // NOI18N
        getContentPane().add(jLabel3);
        jLabel3.setBounds(0, -160, 1410, 1510);

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
       MessageFormat myheader=new MessageFormat("List of employees") ;
       MessageFormat myfooter=new MessageFormat("page{0}") ;
       try
        {jTable1.print(JTable.PrintMode.FIT_WIDTH,myheader,myfooter);
        }
       catch(PrinterException e )
       { JOptionPane.showMessageDialog(rootPane, "Error while printing due to" + e.getMessage());
       }
        // TODO add your handling code here:
    }//GEN-LAST:event_jButton2ActionPerformed

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
try
 {    Connection myconnection;
        
                 String path="jdbc:mysql://localhost/";
                 String place="category";
                 String uname="root" ;
                
                 String pass="";
                 myconnection=DriverManager.getConnection(path+place, uname, pass);
 
 
                      try
                        {
                          String myquery="select * from emp_table where  dob between ? and ?";
                          PreparedStatement mystatement = myconnection.prepareStatement(myquery);
                                 SimpleDateFormat myformat=new SimpleDateFormat("yyyy-MM-dd");
                                  mystatement.setString(1,myformat.format(d1.getDate()));  
                                    mystatement.setString(2,myformat.format(d2.getDate()));  
                        
                          ResultSet myresult=mystatement.executeQuery();
 
                         if(myresult.next())
                            {
                              DefaultTableModel mymodel = (DefaultTableModel) jTable1.getModel();
                              String emp_id,emp_name,emp_desg,gender,address,dob;
                              mymodel.setRowCount(0);
                              
                              do
                              { 
                                           emp_id=myresult.getString("emp_id");
                                           emp_name=myresult.getString("emp_name");
                                           emp_desg=myresult.getString("emp_desig");
                                           gender=myresult.getString("gender");
                                           address=myresult.getString("address");
                                           dob=myresult.getString("dob");
                                          
                                mymodel.addRow(new Object[]{emp_id,emp_name,emp_desg,gender,address,dob});
                               }
                               while(myresult.next());
 
                               }
                        else
                        {
                          JOptionPane.showMessageDialog(rootPane,"No Info available");
                         }
 }
 catch(Exception e)
 {
 JOptionPane.showMessageDialog(rootPane, "Error in Query due to " + e.getMessage());
 }
 finally
 {
 myconnection.close();
 }
 }
 catch(Exception e)
 {
 JOptionPane.showMessageDialog(rootPane, "Error in Connection due to " + e.getMessage());
 }        // TODO add your handling code here:
    }//GEN-LAST:event_jButton1ActionPerformed

    private void jButton3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton3ActionPerformed
try
 {    Connection myconnection;
        
                 String path="jdbc:mysql://localhost/";
                 String place="category";
                 String uname="root" ;
                
                 String pass="";
                 myconnection=DriverManager.getConnection(path+place, uname, pass);
 
 
                      try
                        {
                          String myquery="select * from emp_table where  emp_id=? or emp_name=?";
                          PreparedStatement mystatement = myconnection.prepareStatement(myquery);
                                 mystatement.setString(1, srhbox.getText());
                                   mystatement.setString(2, srhbox.getText());
                        
                          ResultSet myresult=mystatement.executeQuery();
 
                         if(myresult.next())
                            {
                              DefaultTableModel mymodel = (DefaultTableModel) jTable1.getModel();
                              
                            
                              
                              do
                              { String emp_id,emp_name,emp_desg,gender,address,dob;
                                           emp_id=myresult.getString("emp_id");
                                           emp_name=myresult.getString("emp_name");
                                           emp_desg=myresult.getString("emp_desig");
                                           gender=myresult.getString("gender");
                                           address=myresult.getString("address");
                                           dob=myresult.getString("dob");
                                          
                                mymodel.addRow(new Object[]{emp_id,emp_name,emp_desg,gender,address,dob});
                               }
                               while(myresult.next());
 
                               }
                        else
                        {
                          JOptionPane.showMessageDialog(rootPane,"No Info available");
                         }
 }
 catch(Exception e)
 {
 JOptionPane.showMessageDialog(rootPane, "Error in Query due to " + e.getMessage());
 }
 finally
 {
 myconnection.close();
 }
 }
 catch(Exception e)
 {
 JOptionPane.showMessageDialog(rootPane, "Error in Connection due to " + e.getMessage());
 }         // TODO add your handling code here:
    }//GEN-LAST:event_jButton3ActionPerformed


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private com.toedter.calendar.JDateChooser d1;
    private com.toedter.calendar.JDateChooser d2;
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JButton jButton3;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTable jTable1;
    private javax.swing.JTextField srhbox;
    // End of variables declaration//GEN-END:variables
}