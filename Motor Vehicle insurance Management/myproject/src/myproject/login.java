/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package myproject;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.swing.JOptionPane;

/**
 *
 * @author PC
 */
public class login extends javax.swing.JFrame {

    /**
     * Creates new form login
     */
    public login() {
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

        jLabel1 = new javax.swing.JLabel();
        user_namebox = new javax.swing.JTextField();
        password_box = new javax.swing.JPasswordField();
        jButton1 = new javax.swing.JButton();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setTitle("login page");
        getContentPane().setLayout(null);

        jLabel1.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        jLabel1.setText("Username");
        getContentPane().add(jLabel1);
        jLabel1.setBounds(90, 80, 70, 30);

        user_namebox.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                user_nameboxActionPerformed(evt);
            }
        });
        getContentPane().add(user_namebox);
        user_namebox.setBounds(170, 80, 103, 30);
        getContentPane().add(password_box);
        password_box.setBounds(170, 130, 103, 30);

        jButton1.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        jButton1.setText("Login");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });
        getContentPane().add(jButton1);
        jButton1.setBounds(170, 180, 70, 23);

        jLabel3.setFont(new java.awt.Font("Dialog", 1, 14)); // NOI18N
        jLabel3.setForeground(new java.awt.Color(255, 204, 0));
        jLabel3.setText("LOGIN");
        getContentPane().add(jLabel3);
        jLabel3.setBounds(170, 30, 60, 19);

        jLabel4.setIcon(new javax.swing.ImageIcon(getClass().getResource("/download.png"))); // NOI18N
        getContentPane().add(jLabel4);
        jLabel4.setBounds(130, 30, 22, 20);

        jLabel6.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        jLabel6.setText("Password");
        getContentPane().add(jLabel6);
        jLabel6.setBounds(90, 130, 60, 30);

        jLabel5.setIcon(new javax.swing.ImageIcon("C:\\Users\\PC\\Desktop\\coolest-desktop-backgrounds-plain-plain-desktop-wallpapers-wallpapers-desktop-backgrounds-plain.jpg")); // NOI18N
        getContentPane().add(jLabel5);
        jLabel5.setBounds(10, 10, 360, 230);

        setSize(new java.awt.Dimension(405, 293));
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    private void user_nameboxActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_user_nameboxActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_user_nameboxActionPerformed

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
                    String a="select * from logindatabase where username=? and password=?";
                    PreparedStatement mystatement=myconnection.prepareStatement(a);
                    mystatement.setString(1,user_namebox.getText());
                    mystatement.setString(2,password_box.getText());
                  ResultSet myresult = mystatement.executeQuery();
                  if(myresult.next())
                     {     if(myresult.getString("user_type").equals("admin"))
                                  {  project1 obj=new project1();
                                     obj.setVisible(true);
                                     obj.setExtendedState(MAXIMIZED_BOTH);
                           
                                  }
                     else if(myresult.getString("user_type").equals("employee"))
                                  {emp_frame obj =new emp_frame();
                                  obj.setVisible(true);
                                  obj.setExtendedState(MAXIMIZED_BOTH);
                                  }
                              this.dispose();
                     }
                  else
                     {JOptionPane.showMessageDialog(rootPane, "Wrong Username/Password Entered");
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
                                   
         
              // TODO add your handling code here:
    }//GEN-LAST:event_jButton1ActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(login.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(login.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(login.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(login.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new login().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JPasswordField password_box;
    private javax.swing.JTextField user_namebox;
    // End of variables declaration//GEN-END:variables
}