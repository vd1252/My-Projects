/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package myproject;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.swing.JOptionPane;

/**
 *
 * @author PC
 */
public class createadmin extends javax.swing.JFrame {

    /**
     * Creates new form createadmin
     */
    public createadmin() {
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
        jLabel2 = new javax.swing.JLabel();
        create_adminbox = new javax.swing.JTextField();
        jButton1 = new javax.swing.JButton();
        create_passwordbox = new javax.swing.JPasswordField();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setTitle("create admin");
        setBackground(new java.awt.Color(204, 255, 204));
        getContentPane().setLayout(null);

        jLabel1.setForeground(new java.awt.Color(51, 255, 255));
        jLabel1.setText("CREATE ADMIN");
        getContentPane().add(jLabel1);
        jLabel1.setBounds(72, 110, 100, 14);

        jLabel2.setForeground(new java.awt.Color(102, 255, 255));
        jLabel2.setText("PASSWORD");
        getContentPane().add(jLabel2);
        jLabel2.setBounds(76, 160, 100, 14);

        create_adminbox.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                create_adminboxActionPerformed(evt);
            }
        });
        getContentPane().add(create_adminbox);
        create_adminbox.setBounds(210, 100, 93, 30);

        jButton1.setBackground(new java.awt.Color(255, 255, 153));
        jButton1.setForeground(new java.awt.Color(255, 0, 0));
        jButton1.setText("create");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });
        getContentPane().add(jButton1);
        jButton1.setBounds(210, 200, 63, 23);
        getContentPane().add(create_passwordbox);
        create_passwordbox.setBounds(210, 150, 93, 20);

        jLabel3.setBackground(new java.awt.Color(153, 255, 153));
        jLabel3.setFont(new java.awt.Font("Dialog", 1, 18)); // NOI18N
        jLabel3.setText("CREATE ADMIN FIRST");
        getContentPane().add(jLabel3);
        jLabel3.setBounds(100, 40, 195, 24);

        jLabel4.setIcon(new javax.swing.ImageIcon(getClass().getResource("/download.png"))); // NOI18N
        getContentPane().add(jLabel4);
        jLabel4.setBounds(60, 40, 22, 22);

        jLabel5.setIcon(new javax.swing.ImageIcon("C:\\Users\\PC\\Desktop\\5145328-plain-picture.png")); // NOI18N
        getContentPane().add(jLabel5);
        jLabel5.setBounds(20, 20, 320, 240);

        setSize(new java.awt.Dimension(395, 317));
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    private void create_adminboxActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_create_adminboxActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_create_adminboxActionPerformed

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
                    String a="insert into logindatabase values(?,?,?)";
                    PreparedStatement mystatement=myconnection.prepareStatement(a);
                    mystatement.setString(1,create_adminbox.getText());
                    mystatement.setString(2,create_passwordbox.getText());
                    mystatement.setString(3,"admin");
                              
                    
                  
                                 if(mystatement.executeUpdate()>0)
                        {
                                  JOptionPane.showMessageDialog(rootPane, "admin created Successfully");
                                    create_adminbox.setText("");
                                    create_passwordbox.setText("");
                                    project1 obj=new project1();
                                    obj.setVisible(true);
    
  
           
                                           
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
            java.util.logging.Logger.getLogger(createadmin.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(createadmin.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(createadmin.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(createadmin.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new createadmin().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JTextField create_adminbox;
    private javax.swing.JPasswordField create_passwordbox;
    private javax.swing.JButton jButton1;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    // End of variables declaration//GEN-END:variables
}
