/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package myproject;

import java.awt.Dimension;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.print.PageFormat;
import java.awt.print.Printable;
import static java.awt.print.Printable.NO_SUCH_PAGE;
import java.awt.print.PrinterException;
import java.awt.print.PrinterJob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.MessageFormat;
import java.text.SimpleDateFormat;
import javax.swing.JOptionPane;
import javax.swing.JScrollPane;
import javax.swing.JTable;

/**
 *
 * @author PC
 */
public class certificate extends javax.swing.JInternalFrame implements Printable{

    /**
     * Creates new form certificate
     */
    
    public certificate() {
        initComponents();
       int i= JScrollPane.VERTICAL_SCROLLBAR_AS_NEEDED;
        java.util.Date obj=new java.util.Date();
        SimpleDateFormat myformat=new SimpleDateFormat("yyyy-MM-dd");
        date_box.setText(myformat.format(obj));
        DATE_BOX2.setText(myformat.format(obj));
        rdate.setText(myformat.format(obj));
        try
        {        
                  Connection myconnection;
        
                 String path="jdbc:mysql://localhost/";
                 String place="category";
                 String uname="root" ;
                
                 String pass="";
                 myconnection=DriverManager.getConnection(path+place, uname, pass);
                 try{
                                    String b="select * from company_table ";
                                    PreparedStatement mystatement=myconnection.prepareStatement(b);
                                    ResultSet myresult = mystatement.executeQuery();
                                    if(myresult.next())
                                        {do
                                            {    company_idbox.addItem(myresult.getString("company_id"));
                                                
                                            } 
                                        while(myresult.next());
                                        
                                        }
                                   else
                                    { JOptionPane.showMessageDialog(rootPane, "No categories exist");
                                    }
                                    
                                    
                                    
         
                   }
 
 
               catch(Exception e)
                  {
              JOptionPane.showMessageDialog(rootPane, "Error in Query " + e.getMessage());
                  }
                 try{
                                    String b="select * from producttable ";
                                    PreparedStatement mystatement=myconnection.prepareStatement(b);
                                    ResultSet myresult = mystatement.executeQuery();
                                    if(myresult.next())
                                        {do
                                            {    c_idbox.addItem(myresult.getString("customer_id_nam"));
                                                
                                            } 
                                        while(myresult.next());
                                        
                                        }
                                   else
                                    { JOptionPane.showMessageDialog(rootPane, "No categories exist");
                                    }
                                    
                                    
                                    
         
                   }
 
 
               catch(Exception e)
                  {
              JOptionPane.showMessageDialog(rootPane, "Error in Query " + e.getMessage());
                  }
          
                 try{
                                    String b="select * from categorytable";
                                    PreparedStatement mystatement=myconnection.prepareStatement(b);
                                    ResultSet myresult = mystatement.executeQuery();
                                    if(myresult.next())
                                        {do
                                            {    category_box.addItem(myresult.getString("catname"));
                                            }
                                        while(myresult.next());
                                        }
                                   else
                                    { JOptionPane.showMessageDialog(rootPane, "No categories exist");
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
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel2 = new javax.swing.JPanel();
        jLabel3 = new javax.swing.JLabel();
        label1 = new java.awt.Label();
        label2 = new java.awt.Label();
        jLabel4 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        jLabel7 = new javax.swing.JLabel();
        vehicle_box = new javax.swing.JTextField();
        label3 = new java.awt.Label();
        label4 = new java.awt.Label();
        label5 = new java.awt.Label();
        contact_box = new java.awt.TextField();
        periods_box = new javax.swing.JFormattedTextField();
        insured_box = new javax.swing.JFormattedTextField();
        label7 = new java.awt.Label();
        label8 = new java.awt.Label();
        category_box = new javax.swing.JComboBox<>();
        subcategory_box = new javax.swing.JComboBox<>();
        jLabel8 = new javax.swing.JLabel();
        jLabel14 = new javax.swing.JLabel();
        date1box = new javax.swing.JFormattedTextField();
        date2box = new javax.swing.JFormattedTextField();
        jLabel17 = new javax.swing.JLabel();
        c_idbox = new javax.swing.JComboBox<>();
        eng_box = new javax.swing.JFormattedTextField();
        add1_box = new javax.swing.JTextField();
        jLabel18 = new javax.swing.JLabel();
        jLabel1 = new javax.swing.JLabel();
        jLabel15 = new javax.swing.JLabel();
        jLabel16 = new javax.swing.JLabel();
        cer_no = new javax.swing.JFormattedTextField();
        jPanel1 = new javax.swing.JPanel();
        c_namebox = new javax.swing.JTextField();
        c_codebox = new javax.swing.JTextField();
        jLabel5 = new javax.swing.JLabel();
        mail_box = new javax.swing.JTextField();
        jLabel9 = new javax.swing.JLabel();
        tel_box = new javax.swing.JFormattedTextField();
        jLabel10 = new javax.swing.JLabel();
        jLabel11 = new javax.swing.JLabel();
        jLabel12 = new javax.swing.JLabel();
        jLabel13 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        company_idbox = new javax.swing.JComboBox<>();
        add_box = new javax.swing.JTextField();
        date_box = new javax.swing.JFormattedTextField();
        jLabel19 = new javax.swing.JLabel();
        jPanel4 = new javax.swing.JPanel();
        jLabel20 = new javax.swing.JLabel();
        jLabel21 = new javax.swing.JLabel();
        jLabel22 = new javax.swing.JLabel();
        jLabel23 = new javax.swing.JLabel();
        jLabel24 = new javax.swing.JLabel();
        jLabel25 = new javax.swing.JLabel();
        jLabel26 = new javax.swing.JLabel();
        jLabel27 = new javax.swing.JLabel();
        jLabel28 = new javax.swing.JLabel();
        jLabel29 = new javax.swing.JLabel();
        jLabel30 = new javax.swing.JLabel();
        jLabel31 = new javax.swing.JLabel();
        jPanel3 = new javax.swing.JPanel();
        jLabel32 = new javax.swing.JLabel();
        jLabel33 = new javax.swing.JLabel();
        jLabel34 = new javax.swing.JLabel();
        jPanel5 = new javax.swing.JPanel();
        jLabel35 = new javax.swing.JLabel();
        jLabel36 = new javax.swing.JLabel();
        jLabel37 = new javax.swing.JLabel();
        jLabel38 = new javax.swing.JLabel();
        premium = new javax.swing.JFormattedTextField();
        gst = new javax.swing.JFormattedTextField();
        rno = new javax.swing.JFormattedTextField();
        rdate = new javax.swing.JFormattedTextField();
        jLabel39 = new javax.swing.JLabel();
        jLabel40 = new javax.swing.JLabel();
        jLabel41 = new javax.swing.JLabel();
        DATE_BOX2 = new javax.swing.JFormattedTextField();
        jTextField1 = new javax.swing.JTextField();
        jLabel42 = new javax.swing.JLabel();
        jButton1 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();

        setClosable(true);
        setIconifiable(true);
        setMaximizable(true);
        setResizable(true);
        setTitle("CERTIFICATE OF MOTOR VEHICLE INSURANCE");
        getContentPane().setLayout(null);

        jPanel2.setBackground(new java.awt.Color(255, 255, 255));
        jPanel2.setBorder(javax.swing.BorderFactory.createMatteBorder(2, 2, 2, 2, new java.awt.Color(102, 102, 102)));
        jPanel2.setOpaque(false);

        jLabel3.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        jLabel3.setText("CUSTOMER DETAIL");

        label1.setBackground(new java.awt.Color(255, 255, 255));
        label1.setFont(new java.awt.Font("Times New Roman", 1, 10)); // NOI18N
        label1.setText("ENGINE NO./CHASIS NO.");

        label2.setBackground(new java.awt.Color(255, 255, 255));
        label2.setFont(new java.awt.Font("Times New Roman", 1, 10)); // NOI18N
        label2.setText("CUSTOMER ID/CUSTOMER NAME");

        jLabel4.setText("INR");

        jLabel6.setBackground(new java.awt.Color(255, 255, 255));
        jLabel6.setFont(new java.awt.Font("Times New Roman", 1, 10)); // NOI18N
        jLabel6.setText("ADDRESS");

        jLabel7.setBackground(new java.awt.Color(255, 255, 255));
        jLabel7.setFont(new java.awt.Font("Times New Roman", 1, 10)); // NOI18N
        jLabel7.setText("VEHICLE NO./VEHICLE NAME/MFD.YEAR");

        label3.setBackground(new java.awt.Color(255, 255, 255));
        label3.setFont(new java.awt.Font("Times New Roman", 1, 10)); // NOI18N
        label3.setText("CONTACT NO.");

        label4.setBackground(new java.awt.Color(255, 255, 255));
        label4.setFont(new java.awt.Font("Times New Roman", 1, 10)); // NOI18N
        label4.setText("PERIODS OF INSURANCE(in years)");

        label5.setBackground(new java.awt.Color(255, 255, 255));
        label5.setFont(new java.awt.Font("Times New Roman", 1, 10)); // NOI18N
        label5.setText("INSURED VALUE");

        periods_box.setFormatterFactory(new javax.swing.text.DefaultFormatterFactory(new javax.swing.text.NumberFormatter(new java.text.DecimalFormat("#0"))));
        periods_box.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                periods_boxActionPerformed(evt);
            }
        });

        insured_box.setFormatterFactory(new javax.swing.text.DefaultFormatterFactory(new javax.swing.text.NumberFormatter(new java.text.DecimalFormat("#0"))));

        label7.setBackground(new java.awt.Color(255, 255, 255));
        label7.setFont(new java.awt.Font("Times New Roman", 1, 10)); // NOI18N
        label7.setText("INSURANCE SUBTYPE");

        label8.setBackground(new java.awt.Color(255, 255, 255));
        label8.setFont(new java.awt.Font("Times New Roman", 1, 10)); // NOI18N
        label8.setText("INSURANCE TYPE");

        category_box.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "CHOOSE TYPE" }));
        category_box.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                category_boxActionPerformed(evt);
            }
        });

        subcategory_box.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "CHOOSE TYPE FIRST" }));
        subcategory_box.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                subcategory_boxActionPerformed(evt);
            }
        });

        jLabel8.setBackground(new java.awt.Color(255, 255, 255));
        jLabel8.setFont(new java.awt.Font("Times New Roman", 1, 10)); // NOI18N
        jLabel8.setText("DATE OF INSURANCE");

        jLabel14.setFont(new java.awt.Font("Dialog", 1, 12)); // NOI18N
        jLabel14.setText("TO");

        date1box.setFormatterFactory(new javax.swing.text.DefaultFormatterFactory(new javax.swing.text.DateFormatter(new java.text.SimpleDateFormat("d/M/yy"))));

        date2box.setFormatterFactory(new javax.swing.text.DefaultFormatterFactory(new javax.swing.text.DateFormatter(new java.text.SimpleDateFormat("d/M/yy"))));

        jLabel17.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        jLabel17.setText("CUSTOMER DETAIL");

        c_idbox.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "SELECT CUSTOMER ID/NAME" }));
        c_idbox.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                c_idboxActionPerformed(evt);
            }
        });

        eng_box.setFormatterFactory(new javax.swing.text.DefaultFormatterFactory(new javax.swing.text.NumberFormatter(new java.text.DecimalFormat("#0"))));
        eng_box.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                eng_boxActionPerformed(evt);
            }
        });

        add1_box.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                add1_boxActionPerformed(evt);
            }
        });

        jLabel18.setIcon(new javax.swing.ImageIcon("C:\\Users\\PC\\Desktop\\maxresdefault.jpg")); // NOI18N

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(jPanel2Layout.createSequentialGroup()
                                .addGap(948, 948, 948)
                                .addComponent(jLabel3))
                            .addGroup(jPanel2Layout.createSequentialGroup()
                                .addGap(31, 31, 31)
                                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(label2, javax.swing.GroupLayout.PREFERRED_SIZE, 195, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(jLabel7)
                                    .addComponent(label1, javax.swing.GroupLayout.PREFERRED_SIZE, 218, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(label3, javax.swing.GroupLayout.PREFERRED_SIZE, 195, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(label4, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(jLabel8)
                                    .addComponent(jLabel6, javax.swing.GroupLayout.PREFERRED_SIZE, 117, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(label8, javax.swing.GroupLayout.PREFERRED_SIZE, 117, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(label7, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(label5, javax.swing.GroupLayout.PREFERRED_SIZE, 136, javax.swing.GroupLayout.PREFERRED_SIZE))
                                .addGap(20, 20, 20)
                                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                    .addComponent(vehicle_box)
                                    .addComponent(contact_box, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                    .addComponent(eng_box)
                                    .addComponent(periods_box, javax.swing.GroupLayout.PREFERRED_SIZE, 80, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addGroup(jPanel2Layout.createSequentialGroup()
                                        .addComponent(date1box, javax.swing.GroupLayout.PREFERRED_SIZE, 80, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                        .addComponent(jLabel14)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                        .addComponent(date2box, javax.swing.GroupLayout.PREFERRED_SIZE, 80, javax.swing.GroupLayout.PREFERRED_SIZE))
                                    .addComponent(category_box, javax.swing.GroupLayout.PREFERRED_SIZE, 206, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(subcategory_box, javax.swing.GroupLayout.PREFERRED_SIZE, 206, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(c_idbox, 0, 224, Short.MAX_VALUE)
                                    .addComponent(add1_box, javax.swing.GroupLayout.PREFERRED_SIZE, 214, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addGroup(jPanel2Layout.createSequentialGroup()
                                        .addComponent(insured_box, javax.swing.GroupLayout.PREFERRED_SIZE, 87, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                        .addComponent(jLabel4)))))
                        .addGap(0, 0, Short.MAX_VALUE))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel2Layout.createSequentialGroup()
                        .addGap(0, 0, Short.MAX_VALUE)
                        .addComponent(jLabel18, javax.swing.GroupLayout.PREFERRED_SIZE, 1320, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap())
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGap(206, 206, 206)
                .addComponent(jLabel17)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addComponent(jLabel17, javax.swing.GroupLayout.PREFERRED_SIZE, 24, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(21, 21, 21)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(label2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(c_idbox, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addGap(17, 17, 17)
                        .addComponent(jLabel7))
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addGap(18, 18, 18)
                        .addComponent(vehicle_box, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addGap(18, 18, 18)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(label1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(eng_box))
                .addGap(18, 18, 18)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(label3, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(contact_box, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(label4, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(periods_box, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addGap(16, 16, 16)
                        .addComponent(jLabel8))
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addGap(18, 18, 18)
                        .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(date1box, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel14)
                            .addComponent(date2box, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))))
                .addGap(18, 18, 18)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel6)
                    .addComponent(add1_box, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addGap(14, 14, 14)
                        .addComponent(label8, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(category_box, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addGap(20, 20, 20)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addComponent(label7, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(label5, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addComponent(subcategory_box, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(insured_box, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel4))))
                .addGap(85, 85, 85)
                .addComponent(jLabel3)
                .addGap(93, 93, 93)
                .addComponent(jLabel18, javax.swing.GroupLayout.PREFERRED_SIZE, 1090, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );

        getContentPane().add(jPanel2);
        jPanel2.setBounds(380, 140, 530, 450);

        jLabel1.setFont(new java.awt.Font("Dialog", 3, 24)); // NOI18N
        jLabel1.setText("   CERTIFICATE OF MOTOR VEHICLE INSURANCE");
        getContentPane().add(jLabel1);
        jLabel1.setBounds(370, 10, 690, 46);

        jLabel15.setFont(new java.awt.Font("Dialog", 1, 10)); // NOI18N
        jLabel15.setText("CERTIFICATE NO.");
        getContentPane().add(jLabel15);
        jLabel15.setBounds(60, 90, 85, 14);

        jLabel16.setFont(new java.awt.Font("Dialog", 1, 10)); // NOI18N
        jLabel16.setText("DATED:-");
        getContentPane().add(jLabel16);
        jLabel16.setBounds(1080, 90, 39, 14);

        cer_no.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));
        cer_no.setFormatterFactory(new javax.swing.text.DefaultFormatterFactory(new javax.swing.text.NumberFormatter(new java.text.DecimalFormat("#0"))));
        cer_no.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                cer_noActionPerformed(evt);
            }
        });
        getContentPane().add(cer_no);
        cer_no.setBounds(150, 90, 172, 16);

        jPanel1.setBorder(javax.swing.BorderFactory.createMatteBorder(2, 2, 2, 2, new java.awt.Color(102, 102, 102)));
        jPanel1.setOpaque(false);

        jLabel5.setFont(new java.awt.Font("Dialog", 1, 10)); // NOI18N
        jLabel5.setText("COMPANY ID");

        jLabel9.setFont(new java.awt.Font("Dialog", 1, 10)); // NOI18N
        jLabel9.setText("COMPANY NAME");

        tel_box.setFormatterFactory(new javax.swing.text.DefaultFormatterFactory(new javax.swing.text.NumberFormatter(new java.text.DecimalFormat("##########"))));

        jLabel10.setFont(new java.awt.Font("Dialog", 1, 10)); // NOI18N
        jLabel10.setText("TELEPHONE");

        jLabel11.setFont(new java.awt.Font("Dialog", 1, 10)); // NOI18N
        jLabel11.setText("E-MAIL");

        jLabel12.setFont(new java.awt.Font("Dialog", 1, 10)); // NOI18N
        jLabel12.setText("OFFICE ADDRESS");

        jLabel13.setFont(new java.awt.Font("Dialog", 1, 10)); // NOI18N
        jLabel13.setText("COMPANY CODE");

        jLabel2.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        jLabel2.setText("COMPANY DETAIL");

        company_idbox.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "SELECT COMPANY ID" }));
        company_idbox.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                company_idboxActionPerformed(evt);
            }
        });

        add_box.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                add_boxActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(34, 34, 34)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel11)
                    .addComponent(jLabel12)
                    .addComponent(jLabel10)
                    .addComponent(jLabel13)
                    .addComponent(jLabel9)
                    .addComponent(jLabel5, javax.swing.GroupLayout.PREFERRED_SIZE, 94, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(mail_box, javax.swing.GroupLayout.PREFERRED_SIZE, 160, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(add_box, javax.swing.GroupLayout.PREFERRED_SIZE, 160, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(tel_box, javax.swing.GroupLayout.PREFERRED_SIZE, 160, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(c_codebox, javax.swing.GroupLayout.PREFERRED_SIZE, 160, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(c_namebox, javax.swing.GroupLayout.PREFERRED_SIZE, 160, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(company_idbox, javax.swing.GroupLayout.PREFERRED_SIZE, 160, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(50, 50, 50))
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(117, 117, 117)
                .addComponent(jLabel2, javax.swing.GroupLayout.PREFERRED_SIZE, 100, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addComponent(jLabel2, javax.swing.GroupLayout.PREFERRED_SIZE, 24, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 36, Short.MAX_VALUE)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel5, javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(company_idbox, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(32, 32, 32)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel9)
                    .addComponent(c_namebox, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(31, 31, 31)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel13)
                    .addComponent(c_codebox, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(29, 29, 29)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel10)
                    .addComponent(tel_box, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(36, 36, 36)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel12, javax.swing.GroupLayout.PREFERRED_SIZE, 20, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(add_box, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(39, 39, 39)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel11)
                    .addComponent(mail_box, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(99, 99, 99))
        );

        getContentPane().add(jPanel1);
        jPanel1.setBounds(50, 140, 330, 450);

        date_box.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));
        date_box.setFormatterFactory(new javax.swing.text.DefaultFormatterFactory(new javax.swing.text.DateFormatter(new java.text.SimpleDateFormat("yyyy-MM-dd"))));
        date_box.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                date_boxActionPerformed(evt);
            }
        });
        getContentPane().add(date_box);
        date_box.setBounds(1130, 90, 134, 16);

        jLabel19.setFont(new java.awt.Font("Dialog", 1, 12)); // NOI18N
        jLabel19.setText("( FORM 51 OF CENTRAL MOTOR VEHICLE RULES 1989 )");
        getContentPane().add(jLabel19);
        jLabel19.setBounds(490, 50, 320, 16);

        jPanel4.setBorder(javax.swing.BorderFactory.createMatteBorder(2, 2, 2, 2, new java.awt.Color(0, 0, 0)));

        jLabel20.setFont(new java.awt.Font("Dialog", 1, 18)); // NOI18N
        jLabel20.setText("TERMS AND CONDITIONS OF POLICY:-");

        jLabel21.setFont(new java.awt.Font("Dialog", 1, 12)); // NOI18N
        jLabel21.setText("1.ANY PERSON INCLUDING INSURED PROVIDED  THAT A PERSON HOLDS AN EFFECTIVE DRIVING LICENSE .");

        jLabel22.setFont(new java.awt.Font("Dialog", 1, 12)); // NOI18N
        jLabel22.setText("2.PROVIDED ALSO THAT THE PERSON HOLDING AN EFFECTIVE LEARNER'S LICENSE MAY ALSO DRIVE THE VEHICLE AND SUCH A PERSON SATISFIES THE REQUIREMENTS OF RULE 3 OF CENTRAL MOTOR VEHICLE RULE,1989.");

        jLabel24.setFont(new java.awt.Font("Dialog", 1, 12)); // NOI18N
        jLabel24.setText("3.THE POLICY COVERS USE OF THE VEHICLE FOR ANY PURPOSE OTHER THAN:-");

        jLabel25.setFont(new java.awt.Font("Dialog", 1, 10)); // NOI18N
        jLabel25.setText("a) HIRE OR REWARD.");

        jLabel26.setFont(new java.awt.Font("Dialog", 1, 10)); // NOI18N
        jLabel26.setText("b) CARRIAGE GOODS(OTHER THAN SAMPLES OR PERSONAL LUGGAGE)");

        jLabel27.setFont(new java.awt.Font("Dialog", 1, 10)); // NOI18N
        jLabel27.setText("c) ORGANISED RACING");
        jLabel27.setToolTipText("");

        jLabel28.setFont(new java.awt.Font("Dialog", 1, 10)); // NOI18N
        jLabel28.setText("d) PACE MAKING.");

        jLabel29.setFont(new java.awt.Font("Dialog", 1, 10)); // NOI18N
        jLabel29.setText("e) SPEED TESTING AND RELIABILITY TRIALS.");

        jLabel30.setFont(new java.awt.Font("Dialog", 1, 10)); // NOI18N
        jLabel30.setText("f) USE IN CONNECTION WITH MOTOR TRADE.");

        jLabel31.setFont(new java.awt.Font("Dialog", 1, 12)); // NOI18N
        jLabel31.setText("4.ANY PHYSICAL DAMAGE /LIABILITY CAUSED BY THE OWNER WILL BE EXCLUDED FROM THE POLICY");

        javax.swing.GroupLayout jPanel4Layout = new javax.swing.GroupLayout(jPanel4);
        jPanel4.setLayout(jPanel4Layout);
        jPanel4Layout.setHorizontalGroup(
            jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel4Layout.createSequentialGroup()
                .addGap(25, 25, 25)
                .addGroup(jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel4Layout.createSequentialGroup()
                        .addGroup(jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(jPanel4Layout.createSequentialGroup()
                                .addComponent(jLabel23)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addGroup(jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(jLabel25)
                                    .addComponent(jLabel26)
                                    .addComponent(jLabel27)
                                    .addComponent(jLabel28)
                                    .addComponent(jLabel29)
                                    .addComponent(jLabel30)))
                            .addComponent(jLabel21)
                            .addComponent(jLabel20))
                        .addContainerGap(600, Short.MAX_VALUE))
                    .addGroup(jPanel4Layout.createSequentialGroup()
                        .addGroup(jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel31)
                            .addComponent(jLabel24)
                            .addComponent(jLabel22, javax.swing.GroupLayout.PREFERRED_SIZE, 1167, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(0, 0, Short.MAX_VALUE))))
        );
        jPanel4Layout.setVerticalGroup(
            jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel4Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel20)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLabel21)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLabel22)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLabel24)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLabel25)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLabel26)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLabel27)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLabel28)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLabel29)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLabel30)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLabel31)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLabel23)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        getContentPane().add(jPanel4);
        jPanel4.setBounds(50, 620, 1220, 210);

        jPanel3.setBorder(javax.swing.BorderFactory.createMatteBorder(2, 2, 2, 2, new java.awt.Color(0, 0, 0)));

        jLabel32.setFont(new java.awt.Font("Dialog", 1, 14)); // NOI18N
        jLabel32.setText("LIMITS OF LIABILITY:-");

        jLabel33.setText("UNDER SECTION(2)-1. DEATH OR BODILY INJURY IN RESPECT OF ANY ONE ACCIDENT;AS PER MOTOR VEHICLE ACT 1988.");

        jLabel34.setText("UNDER SECTION(2)-1. DAMAGE TO THIRD PARTY PROPERT IN RESPECT OF ANY ONE CLAIM OR SERIES OF CLAIMS ARISING OUT OF ONE EVENT:RUPEE: -100000/-");

        javax.swing.GroupLayout jPanel3Layout = new javax.swing.GroupLayout(jPanel3);
        jPanel3.setLayout(jPanel3Layout);
        jPanel3Layout.setHorizontalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel3Layout.createSequentialGroup()
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel3Layout.createSequentialGroup()
                        .addGap(0, 0, Short.MAX_VALUE)
                        .addComponent(jLabel34))
                    .addGroup(jPanel3Layout.createSequentialGroup()
                        .addGap(37, 37, 37)
                        .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel32)
                            .addComponent(jLabel33, javax.swing.GroupLayout.PREFERRED_SIZE, 796, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(0, 3, Short.MAX_VALUE)))
                .addContainerGap())
        );
        jPanel3Layout.setVerticalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel3Layout.createSequentialGroup()
                .addGap(20, 20, 20)
                .addComponent(jLabel32)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jLabel33)
                .addGap(18, 18, 18)
                .addComponent(jLabel34)
                .addContainerGap(40, Short.MAX_VALUE))
        );

        getContentPane().add(jPanel3);
        jPanel3.setBounds(50, 830, 850, 140);

        jPanel5.setBorder(javax.swing.BorderFactory.createMatteBorder(2, 2, 2, 2, new java.awt.Color(0, 0, 0)));

        jLabel35.setFont(new java.awt.Font("Dialog", 1, 12)); // NOI18N
        jLabel35.setText("PREMIUM(EXCLUDING GST)  :");

        jLabel36.setFont(new java.awt.Font("Dialog", 1, 12)); // NOI18N
        jLabel36.setText("PREMIUM WITH GST(12%)     :");

        jLabel37.setFont(new java.awt.Font("Dialog", 1, 12)); // NOI18N
        jLabel37.setText("RECEIPT NO.                             :");

        jLabel38.setFont(new java.awt.Font("Dialog", 1, 12)); // NOI18N
        jLabel38.setText("RECEIPT DATE                          :");

        premium.setFormatterFactory(new javax.swing.text.DefaultFormatterFactory(new javax.swing.text.NumberFormatter(new java.text.DecimalFormat("#0.00"))));

        gst.setFormatterFactory(new javax.swing.text.DefaultFormatterFactory(new javax.swing.text.NumberFormatter(new java.text.DecimalFormat("#0.00"))));
        gst.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                gstActionPerformed(evt);
            }
        });

        rno.setFormatterFactory(new javax.swing.text.DefaultFormatterFactory(new javax.swing.text.NumberFormatter(new java.text.DecimalFormat("#0"))));

        rdate.setFormatterFactory(new javax.swing.text.DefaultFormatterFactory(new javax.swing.text.DateFormatter(new java.text.SimpleDateFormat("yyyy-MM-dd"))));

        javax.swing.GroupLayout jPanel5Layout = new javax.swing.GroupLayout(jPanel5);
        jPanel5.setLayout(jPanel5Layout);
        jPanel5Layout.setHorizontalGroup(
            jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel5Layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addGroup(jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                    .addGroup(jPanel5Layout.createSequentialGroup()
                        .addComponent(jLabel38, javax.swing.GroupLayout.PREFERRED_SIZE, 170, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 100, Short.MAX_VALUE)
                        .addComponent(rdate, javax.swing.GroupLayout.PREFERRED_SIZE, 93, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(javax.swing.GroupLayout.Alignment.LEADING, jPanel5Layout.createSequentialGroup()
                        .addComponent(jLabel37)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(rno, javax.swing.GroupLayout.PREFERRED_SIZE, 93, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(jPanel5Layout.createSequentialGroup()
                        .addGroup(jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel36)
                            .addComponent(jLabel35))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addGroup(jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addComponent(premium, javax.swing.GroupLayout.DEFAULT_SIZE, 93, Short.MAX_VALUE)
                            .addComponent(gst))))
                .addGap(33, 33, 33))
        );
        jPanel5Layout.setVerticalGroup(
            jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel5Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel35)
                    .addComponent(premium, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel36)
                    .addComponent(gst, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel37)
                    .addComponent(rno, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(rdate, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel38))
                .addContainerGap(17, Short.MAX_VALUE))
        );

        getContentPane().add(jPanel5);
        jPanel5.setBounds(900, 830, 380, 140);

        jLabel39.setFont(new java.awt.Font("Dialog", 1, 12)); // NOI18N
        jLabel39.setText("INSURANCE ARE ISSUED IN ACCORDANCE WITH PROVISIONS OF M.V ACT,1989.");
        getContentPane().add(jLabel39);
        jLabel39.setBounds(70, 1020, 1160, 16);

        jLabel40.setFont(new java.awt.Font("Dialog", 1, 12)); // NOI18N
        jLabel40.setText("I / WE HEREBY CERTIFY THAT THE POLICY TO WHICH THE CERTIFICATE RELATES AS WELL AS THE CERTIFICATE OF ");
        getContentPane().add(jLabel40);
        jLabel40.setBounds(70, 1000, 1160, 16);

        jLabel41.setFont(new java.awt.Font("Dialog", 1, 12)); // NOI18N
        jLabel41.setText("DATE OF ISSUE :");
        getContentPane().add(jLabel41);
        jLabel41.setBounds(70, 1090, 91, 16);

        DATE_BOX2.setFormatterFactory(new javax.swing.text.DefaultFormatterFactory(new javax.swing.text.DateFormatter(new java.text.SimpleDateFormat("yyyy-MM-dd"))));
        getContentPane().add(DATE_BOX2);
        DATE_BOX2.setBounds(170, 1090, 120, 20);
        getContentPane().add(jTextField1);
        jTextField1.setBounds(1110, 1000, 170, 80);

        jLabel42.setFont(new java.awt.Font("Dialog", 1, 10)); // NOI18N
        jLabel42.setText("  DULY CONSTITUTED ATTORNEY");
        getContentPane().add(jLabel42);
        jLabel42.setBounds(1110, 1090, 170, 14);

        jButton1.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        jButton1.setText("SAVE");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });
        getContentPane().add(jButton1);
        jButton1.setBounds(570, 1150, 70, 23);

        jButton2.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        jButton2.setText("PRINT");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });
        getContentPane().add(jButton2);
        jButton2.setBounds(670, 1150, 73, 23);

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void periods_boxActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_periods_boxActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_periods_boxActionPerformed

    private void eng_boxActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_eng_boxActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_eng_boxActionPerformed

    private void category_boxActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_category_boxActionPerformed
try
        {        
                  Connection myconnection;
        
                 String path="jdbc:mysql://localhost/";
                 String place="category";
                 String uname="root" ;
                
                 String pass="";
                 myconnection=DriverManager.getConnection(path+place, uname, pass);
                 try{
                                    String b="select subcatname from subcategorytable where catname=?";
                                    PreparedStatement mystatement=myconnection.prepareStatement(b);
                                    mystatement.setString(1, category_box.getSelectedItem().toString());
                                    ResultSet myresult = mystatement.executeQuery();
                                    if(myresult.next())
                                        {
                                                subcategory_box.removeAllItems();
                                                subcategory_box.addItem("choose subtype now");
                                            do
                                                 {subcategory_box.addItem(myresult.getString("subcatname"));
                                                 }
                                            while(myresult.next());
                                        
                                        }
                                   else
                                    { JOptionPane.showMessageDialog(rootPane, "No subcategories exist");
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
    }//GEN-LAST:event_category_boxActionPerformed

    private void subcategory_boxActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_subcategory_boxActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_subcategory_boxActionPerformed

    private void cer_noActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_cer_noActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_cer_noActionPerformed

    private void add_boxActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_add_boxActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_add_boxActionPerformed

    private void add1_boxActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_add1_boxActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_add1_boxActionPerformed

    private void company_idboxActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_company_idboxActionPerformed
 try
           {
                 Connection myconnection;
                 String path="jdbc:mysql://localhost/";
                 String place="category";
                 String uname="root" ;
                
                 String pass="";
                  myconnection=DriverManager.getConnection(path+place, uname, pass);
 
        try{
                                    String b="select * from company_table where company_id=?";
                                    PreparedStatement mystatement=myconnection.prepareStatement(b);
                                    mystatement.setString(1,company_idbox.getSelectedItem().toString());
                                    ResultSet myresult = mystatement.executeQuery();
                                    if(myresult.next())
                                        {  if(company_idbox.getSelectedIndex()>0)
                                            {    
                                                c_namebox.setText(myresult.getString("company_name"));
                                                c_codebox.setText(myresult.getString("company_code"));
                                                tel_box.setText(myresult.getString("telphone"));
                                                add_box.setText(myresult.getString("address"));
                                                mail_box.setText(myresult.getString("email"));
                                            } 
                                        
                                        
                                        }
                                   else
                                    { JOptionPane.showMessageDialog(rootPane, "No detail exist");
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
 JOptionPane.showMessageDialog(rootPane, "Error in Connection due to " + e.getMessage());
 }        //
        
        // TODO add your handling code here:
    }//GEN-LAST:event_company_idboxActionPerformed

    private void c_idboxActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_c_idboxActionPerformed
try
           {
                 Connection myconnection;
                 String path="jdbc:mysql://localhost/";
                 String place="category";
                 String uname="root" ;
                
                 String pass="";
                  myconnection=DriverManager.getConnection(path+place, uname, pass);
 
        try{
                                    String b="select * from producttable where customer_id_nam=?";
                                    PreparedStatement mystatement=myconnection.prepareStatement(b);
                                    mystatement.setString(1,c_idbox.getSelectedItem().toString());
                                    ResultSet myresult = mystatement.executeQuery();
                                    if(myresult.next())
                                        {  if(c_idbox.getSelectedIndex()>0)
                                            {    
                                                vehicle_box.setText(myresult.getString("vehicle_no_name"));
                                                eng_box.setText(myresult.getString("engine_chasis"));
                                                periods_box.setText(myresult.getString("periods"));
                                                contact_box.setText(myresult.getString("contact_no"));
                                                date1box.setText(myresult.getString("date1"));
                                                date2box.setText(myresult.getString("date2"));
                                               category_box.setSelectedItem(myresult.getString("catname"));
                                               subcategory_box.setSelectedItem(myresult.getString("subcatname"));
                                               add1_box.setText(myresult.getString("Address"));
                                                insured_box.setText(myresult.getString("insuredvalue"));
                                            } 
                                        
                                        
                                        }
                                   else
                                    { JOptionPane.showMessageDialog(rootPane, "No detail exist");
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
 JOptionPane.showMessageDialog(rootPane, "Error in Connection due to " + e.getMessage());
 }        //        // TODO add your handling code here:
    }//GEN-LAST:event_c_idboxActionPerformed

    private void gstActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_gstActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_gstActionPerformed

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
                    String a="insert into certificate_table values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
                    PreparedStatement mystatement=myconnection.prepareStatement(a);
                    mystatement.setString(1, cer_no.getText());
                    mystatement.setString(2, company_idbox.getSelectedItem().toString());
                    mystatement.setString(3, c_namebox.getText());
                    mystatement.setString(4, c_codebox.getText());
                    mystatement.setString(5, tel_box.getText());
                    mystatement.setString(6, add_box.getText());
                    mystatement.setString(7, mail_box.getText());
                    mystatement.setString(8, date_box.getText());
                    mystatement.setString(9, c_idbox.getSelectedItem().toString());
                    mystatement.setString(10, vehicle_box.getText());
                    mystatement.setString(11, eng_box.getText());
                    mystatement.setString(12, contact_box.getText());
                    mystatement.setString(13, periods_box.getText());
                    mystatement.setString(14, date1box.getText());
                    mystatement.setString(15, date2box.getText()); 
                    mystatement.setString(16, add1_box.getText());
                    mystatement.setString(19, insured_box.getText());
                    mystatement.setString(17, category_box.getSelectedItem().toString());
                    mystatement.setString(18, subcategory_box.getSelectedItem().toString());
                    mystatement.setString(20, premium.getText());
                    mystatement.setString(21, gst.getText());
                    mystatement.setString(22, rno.getText());
                    mystatement.setString(23, rdate.getText());
                   
                    
 if(mystatement.executeUpdate()>0)
 {
   JOptionPane.showMessageDialog(rootPane, "Saved Successfully");
  
   contact_box.setText("");
   periods_box.setText("");
   insured_box.setText("");
   date1box.setText("");
   date2box.setText("");
   
   vehicle_box.setText("");
   category_box.setSelectedIndex(0);
   subcategory_box.setSelectedIndex(0);
   c_idbox.setSelectedIndex(0);
   company_idbox.setSelectedIndex(0);  
   cer_no.setText("");
  c_namebox.setText("");
  c_codebox.setText("");
  tel_box.setText("");
  add_box.setText("");
  mail_box.setText("");
  date_box.setText("");
  eng_box.setText("");
  add1_box.setText("");
  premium.setText("");
  gst.setText("");
  rno.setText("");
  rdate.setText("");
                                           
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
 }        // TODO add your handling code here:
    }//GEN-LAST:event_jButton1ActionPerformed

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
PrinterJob job = PrinterJob.getPrinterJob();
job.setPrintable(this);
PageFormat myformat=job.defaultPage();
myformat.setOrientation(PageFormat.LANDSCAPE);
PageFormat postformat = job.pageDialog(myformat);
if (myformat != postformat) {
boolean ok = job.printDialog();
if (ok) 
{
try {

job.print();

} catch (PrinterException ex) {
/* The job did not successfully complete */
}
}
}        
        // TODO add your handling code here:
    }//GEN-LAST:event_jButton2ActionPerformed

    private void date_boxActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_date_boxActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_date_boxActionPerformed


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JFormattedTextField DATE_BOX2;
    private javax.swing.JTextField add1_box;
    private javax.swing.JTextField add_box;
    private javax.swing.JTextField c_codebox;
    private javax.swing.JComboBox<String> c_idbox;
    private javax.swing.JTextField c_namebox;
    private javax.swing.JComboBox<String> category_box;
    private javax.swing.JFormattedTextField cer_no;
    private javax.swing.JComboBox<String> company_idbox;
    private java.awt.TextField contact_box;
    private javax.swing.JFormattedTextField date1box;
    private javax.swing.JFormattedTextField date2box;
    private javax.swing.JFormattedTextField date_box;
    private javax.swing.JFormattedTextField eng_box;
    private javax.swing.JFormattedTextField gst;
    private javax.swing.JFormattedTextField insured_box;
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel11;
    private javax.swing.JLabel jLabel12;
    private javax.swing.JLabel jLabel13;
    private javax.swing.JLabel jLabel14;
    private javax.swing.JLabel jLabel15;
    private javax.swing.JLabel jLabel16;
    private javax.swing.JLabel jLabel17;
    private javax.swing.JLabel jLabel18;
    private javax.swing.JLabel jLabel19;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel20;
    private javax.swing.JLabel jLabel21;
    private javax.swing.JLabel jLabel22;
    private javax.swing.JLabel jLabel23;
    private javax.swing.JLabel jLabel24;
    private javax.swing.JLabel jLabel25;
    private javax.swing.JLabel jLabel26;
    private javax.swing.JLabel jLabel27;
    private javax.swing.JLabel jLabel28;
    private javax.swing.JLabel jLabel29;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel30;
    private javax.swing.JLabel jLabel31;
    private javax.swing.JLabel jLabel32;
    private javax.swing.JLabel jLabel33;
    private javax.swing.JLabel jLabel34;
    private javax.swing.JLabel jLabel35;
    private javax.swing.JLabel jLabel36;
    private javax.swing.JLabel jLabel37;
    private javax.swing.JLabel jLabel38;
    private javax.swing.JLabel jLabel39;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel40;
    private javax.swing.JLabel jLabel41;
    private javax.swing.JLabel jLabel42;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JPanel jPanel5;
    private javax.swing.JTextField jTextField1;
    private java.awt.Label label1;
    private java.awt.Label label2;
    private java.awt.Label label3;
    private java.awt.Label label4;
    private java.awt.Label label5;
    private java.awt.Label label7;
    private java.awt.Label label8;
    private javax.swing.JTextField mail_box;
    private javax.swing.JFormattedTextField periods_box;
    private javax.swing.JFormattedTextField premium;
    private javax.swing.JFormattedTextField rdate;
    private javax.swing.JFormattedTextField rno;
    private javax.swing.JComboBox<String> subcategory_box;
    private javax.swing.JFormattedTextField tel_box;
    private javax.swing.JTextField vehicle_box;
    // End of variables declaration//GEN-END:variables

    @Override
    public int print(Graphics graphics, PageFormat pageFormat, int i) throws PrinterException {
if (i > 0) { /* We have only one page, and 'page' is zero-based */
return NO_SUCH_PAGE;
}

// get the bounds of the component
Dimension dim = this.getSize();
double cHeight = dim.getHeight();
double cWidth = dim.getWidth();

// get the bounds of the printable area
double pHeight = pageFormat.getImageableHeight();
double pWidth = pageFormat.getImageableWidth();

double pXStart = pageFormat.getImageableX();
double pYStart = pageFormat.getImageableY();

double xRatio = pWidth / cWidth;
double yRatio = pHeight / cHeight;


Graphics2D g2 = (Graphics2D) graphics;
g2.translate(pXStart, pYStart);
g2.scale(xRatio, yRatio);
this.paint(g2);

return Printable.PAGE_EXISTS;
}  
    }
