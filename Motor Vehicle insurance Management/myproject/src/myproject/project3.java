/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package myproject;
import java.awt.Image;
import java.io.File;
import java.sql.*;
import java.text.SimpleDateFormat;
import javax.imageio.ImageIO;
import javax.swing.ImageIcon;
import javax.swing.JFileChooser;
import javax.swing.JOptionPane;
import javax.swing.filechooser.FileFilter;
/**
 *
 * @author PC
 */
public class project3 extends javax.swing.JInternalFrame {
File myfile;
String oldfilename;
    /**
     * Creates new form project2
     */
    public project3() {
        initComponents();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        buttonGroup1 = new javax.swing.ButtonGroup();
        buttonGroup2 = new javax.swing.ButtonGroup();
        label1 = new java.awt.Label();
        label2 = new java.awt.Label();
        label3 = new java.awt.Label();
        employeename_box = new java.awt.TextField();
        employdes_box = new java.awt.TextField();
        jButton1 = new javax.swing.JButton();
        employeeid_box = new javax.swing.JFormattedTextField();
        label6 = new java.awt.Label();
        jButton2 = new javax.swing.JButton();
        male2 = new javax.swing.JRadioButton();
        female2 = new javax.swing.JRadioButton();
        emp_addr = new java.awt.TextArea();
        dob2 = new com.toedter.calendar.JDateChooser();
        jLabel4 = new javax.swing.JLabel();
        label4 = new java.awt.Label();
        label5 = new java.awt.Label();
        label7 = new java.awt.Label();
        jLabel1 = new javax.swing.JLabel();

        setBackground(new java.awt.Color(0, 255, 255));
        setBorder(javax.swing.BorderFactory.createCompoundBorder());
        setClosable(true);
        setForeground(java.awt.Color.gray);
        setIconifiable(true);
        setMaximizable(true);
        setResizable(true);
        setTitle("ADD EMPLOYEE");
        getContentPane().setLayout(null);

        label1.setBackground(new java.awt.Color(255, 255, 255));
        label1.setFont(new java.awt.Font("Dialog", 1, 12)); // NOI18N
        label1.setText("EMPLOYEE ID");
        getContentPane().add(label1);
        label1.setBounds(380, 180, 146, 20);

        label2.setBackground(new java.awt.Color(255, 255, 255));
        label2.setFont(new java.awt.Font("Dialog", 1, 12)); // NOI18N
        label2.setText("EMPLOYEE NAME");
        getContentPane().add(label2);
        label2.setBounds(380, 220, 146, 20);

        label3.setBackground(new java.awt.Color(255, 255, 255));
        label3.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        label3.setFont(new java.awt.Font("Dialog", 1, 12)); // NOI18N
        label3.setText("DOB");
        getContentPane().add(label3);
        label3.setBounds(380, 450, 60, 20);

        employeename_box.setCursor(new java.awt.Cursor(java.awt.Cursor.TEXT_CURSOR));
        employeename_box.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                employeename_boxActionPerformed(evt);
            }
        });
        getContentPane().add(employeename_box);
        employeename_box.setBounds(570, 220, 221, 20);
        getContentPane().add(employdes_box);
        employdes_box.setBounds(570, 260, 221, 20);

        jButton1.setFont(new java.awt.Font("Arial", 1, 11)); // NOI18N
        jButton1.setText("SAVE");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });
        getContentPane().add(jButton1);
        jButton1.setBounds(570, 490, 109, 23);

        employeeid_box.setFormatterFactory(new javax.swing.text.DefaultFormatterFactory(new javax.swing.text.NumberFormatter()));
        employeeid_box.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                employeeid_boxActionPerformed(evt);
            }
        });
        getContentPane().add(employeeid_box);
        employeeid_box.setBounds(572, 175, 221, 30);

        label6.setBackground(new java.awt.Color(255, 204, 204));
        label6.setFont(new java.awt.Font("Dialog", 1, 24)); // NOI18N
        label6.setForeground(new java.awt.Color(255, 0, 51));
        label6.setName(""); // NOI18N
        label6.setText("         ADD EMPLOYEE DETAILS");
        getContentPane().add(label6);
        label6.setBounds(448, 68, 386, 53);

        jButton2.setIcon(new javax.swing.ImageIcon(getClass().getResource("/download.png"))); // NOI18N
        getContentPane().add(jButton2);
        jButton2.setBounds(383, 68, 55, 53);

        buttonGroup2.add(male2);
        male2.setText("MALE");
        male2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                male2ActionPerformed(evt);
            }
        });
        getContentPane().add(male2);
        male2.setBounds(570, 300, 70, 23);

        buttonGroup2.add(female2);
        female2.setText("FEMALE");
        female2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                female2ActionPerformed(evt);
            }
        });
        getContentPane().add(female2);
        female2.setBounds(670, 300, 80, 23);
        getContentPane().add(emp_addr);
        emp_addr.setBounds(570, 350, 170, 80);
        getContentPane().add(dob2);
        dob2.setBounds(570, 450, 222, 30);

        jLabel4.setBackground(new java.awt.Color(51, 255, 204));
        getContentPane().add(jLabel4);
        jLabel4.setBounds(90, 201, 0, 0);

        label4.setBackground(new java.awt.Color(255, 255, 255));
        label4.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        label4.setFont(new java.awt.Font("Dialog", 1, 12)); // NOI18N
        label4.setText("EMPLOYEE DESIGNATION");
        getContentPane().add(label4);
        label4.setBounds(380, 260, 146, 20);

        label5.setBackground(new java.awt.Color(255, 255, 255));
        label5.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        label5.setFont(new java.awt.Font("Dialog", 1, 12)); // NOI18N
        label5.setText("GENDER");
        getContentPane().add(label5);
        label5.setBounds(380, 300, 50, 20);

        label7.setBackground(new java.awt.Color(255, 255, 255));
        label7.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        label7.setFont(new java.awt.Font("Dialog", 1, 12)); // NOI18N
        label7.setText("ADDRESS");
        getContentPane().add(label7);
        label7.setBounds(380, 350, 146, 20);

        jLabel1.setIcon(new javax.swing.ImageIcon("C:\\Users\\PC\\Desktop\\Colorful-and-plain-theme-abstract-wallpapers.jpg")); // NOI18N
        getContentPane().add(jLabel1);
        jLabel1.setBounds(-10, 0, 1370, 650);

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void employeename_boxActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_employeename_boxActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_employeename_boxActionPerformed

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
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
                    String a="insert into emp_table values(?,?,?,?,?,?)";
                    PreparedStatement mystatement=myconnection.prepareStatement(a);
                    mystatement.setString(1, employeeid_box.getText());
                    mystatement.setString(2, employeename_box.getText());
                    mystatement.setString(3, employdes_box.getText());
                    if(male2.isSelected())
                       {mystatement.setString(4,"MALE");
                       }
                    else if(female2.isSelected())
                       {mystatement.setString(4,"FEMALE");
                       }
                    mystatement.setString(5,emp_addr.getText());
                    SimpleDateFormat myformat=new SimpleDateFormat("yyyy-MM-dd");
                    mystatement.setString(6,myformat.format(dob2.getDate()));  
                  
                    
                  
 if(mystatement.executeUpdate()>0)
 {
   JOptionPane.showMessageDialog(rootPane, "Saved Successfully");
   employeeid_box.setText("");
   employeename_box.setText("");
   employdes_box.setText("");
   buttonGroup2.clearSelection();
   emp_addr.setText("");
   dob2.setDate(null);
   
           
                                           
 }
 
 }
 catch(Exception e)
 {
   JOptionPane.showMessageDialog(rootPane, "Error in Query " + e.getMessage());
 }
 finally
 {
 myconnection.close();
 }
 
 
 }
 catch(Exception e)
 {
 JOptionPane.showMessageDialog(rootPane, "Error in Connection " + e.getMessage());
 }

    }//GEN-LAST:event_jButton1ActionPerformed

    private void employeeid_boxActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_employeeid_boxActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_employeeid_boxActionPerformed

    private void female2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_female2ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_female2ActionPerformed

    private void male2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_male2ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_male2ActionPerformed


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.ButtonGroup buttonGroup1;
    private javax.swing.ButtonGroup buttonGroup2;
    private com.toedter.calendar.JDateChooser dob2;
    private java.awt.TextArea emp_addr;
    private java.awt.TextField employdes_box;
    private javax.swing.JFormattedTextField employeeid_box;
    private java.awt.TextField employeename_box;
    private javax.swing.JRadioButton female2;
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel4;
    private java.awt.Label label1;
    private java.awt.Label label2;
    private java.awt.Label label3;
    private java.awt.Label label4;
    private java.awt.Label label5;
    private java.awt.Label label6;
    private java.awt.Label label7;
    private javax.swing.JRadioButton male2;
    // End of variables declaration//GEN-END:variables
}
