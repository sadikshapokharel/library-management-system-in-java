package koshilibrary;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JComboBox;
import javax.swing.JTable;
import javax.swing.JTextField;
import javax.swing.table.DefaultTableModel;

public class Database {

    Connection con; //Connect with Database
    Statement st;   //Insert, Delete and Update
    ResultSet rs;   //Show or search Records

    String url = "jdbc:mysql://localhost:3306/lms?serverTimezone=UTC";
    String username = "root";
    String password = "";

    DefaultTableModel model;
    
    public boolean isIssue;

    public void ConnectDB() {
        try {
            con = DriverManager.getConnection(url, username, password);
            st = con.createStatement();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
    }

    public boolean saveRecord(String query) {
        try {
            if (st.executeUpdate(query) == 1) {
                return true;
            } else {
                return false;
            }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
            return false;
        }
    }

    public void AddFaculty(String query, JComboBox cmbFaculty) {
        try {
            rs = st.executeQuery(query);
            while (rs.next()) {
                cmbFaculty.addItem(rs.getString("Faculty"));
            }
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }

    }

    public void showStudentDetails(String query, JTable tdTable) {
        try {
            rs = st.executeQuery(query);
            model = (DefaultTableModel) tdTable.getModel();
            while (rs.next()) {
                model.addRow(new Object[]{
                    rs.getString("StudentID"),
                    rs.getString("Fullname"),
                    rs.getString("City"),
                    rs.getString("Mobile"),
                    rs.getString("Faculty"),});
            }
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
    }
    
    public void showBook(String query, JTextField txtBookID) {
        try {
            rs = st.executeQuery(query);
            while (rs.next()) {
                txtBookID.setText(rs.getString("BookTitle"));
            }
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }

    }
    
    
}
