package com.portal.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ApplicationDao {
	
	// method for create connection
		public static Connection getConnection() throws Exception {
			Connection connection = null;
			
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				System.out.println("MySQl JDBC Driver Registered!");
				
				connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/communityportal", "root","");
			}
			catch (ClassNotFoundException e) {
				System.out.println("MySQl JDBC Driver no found!");
				return null;
			}
			catch(SQLException e) {
				System.out.println("Connection failed");
				System.out.println(e.getMessage());
			}
			if(connection !=null) {
				System.out.println("Connection Made");
			}
			return connection;
		}
	
		// method for save user data in database
		public int registerUser(String fname, String lname, String role, String email, String uname, String pass, String gender) throws Exception {
			int i = 0;
			try {
				String sql = "INSERT INTO members(fname, lname, role, email, uname, pass, gender) VALUES (?, ?, ?, ?, ?, ?, ?)";
				PreparedStatement ps = getConnection().prepareStatement(sql);
				ps.setString(1, fname);
				ps.setString(2, lname);
				ps.setString(3, role);
				ps.setString(4, email);
				ps.setString(5, uname);
				ps.setString(6, pass);
				ps.setString(7, gender);
				
				int rowInserted = ps.executeUpdate();
				if (rowInserted > 0) { 
			        System.out.println("User is created successfully");
			    } 
				return i;
			} catch (Exception e) {
				e.printStackTrace();
				return i;
			} finally {
				if (getConnection() != null) {
					getConnection().close();
				}
			}
		}

	
	// method for fetch saved user data
		public ResultSet report() throws SQLException, Exception {
			ResultSet rs = null;
			try {
				String sql = "SELECT fname, lname, role, email, uname, pass, gender FROM members";
				PreparedStatement ps = getConnection().prepareStatement(sql);
				rs = ps.executeQuery();	
				rs = ps.executeQuery();
				return rs;
			} catch (Exception e) {
				e.printStackTrace();
				return null;
			} finally {
				if (getConnection() != null) {
					getConnection().close();
				}
			}
		}
		
		// method for fetch old data to be update
		public ResultSet fetchUserDetails(String email) throws SQLException, Exception {
			ResultSet rs = null;
			try {
				String sql = "SELECT fname, lname, role, email, uname, pass, gender FROM members WHERE email=?";
				PreparedStatement ps = getConnection().prepareStatement(sql);
				ps.setString(1, email);	
				rs = ps.executeQuery();
				return rs;
			} catch (Exception e) {
				e.printStackTrace();
				return null;
			} finally {
				if (getConnection() != null) {
					getConnection().close();
				}
			}
		}
		
		// method for update new data in database
		public int updateUserDetails(String fname, String lname, String role, String email, String uname, String pass, String gender, String emailhidden)
				throws SQLException, Exception {
			getConnection().setAutoCommit(false);
			int i = 0;
			try {
				String sql = "UPDATE members SET fname=?, lname=?, role=?, email=?, uname=?, pass=?, gender=?  WHERE email=?";
				PreparedStatement ps = getConnection().prepareStatement(sql);
				ps.setString(1, fname);
				ps.setString(2, lname);
				ps.setString(3, role);
				ps.setString(4, email);
				ps.setString(5, uname);
				ps.setString(6, pass);
				ps.setString(7, gender);
				ps.setString(8, emailhidden);
				i = ps.executeUpdate();
				return i;
			} catch (Exception e) {
				e.printStackTrace();
				getConnection().rollback();
				return 0;
			} finally {
				if (getConnection() != null) {
					getConnection().close();
				}
			}
		}
		
		// method for delete the record
		public int deleteUserDetails(String email) throws SQLException, Exception {
			getConnection().setAutoCommit(false);
			int i = 0;
			try {
				String sql = "DELETE FROM members WHERE email=?";
				PreparedStatement ps = getConnection().prepareStatement(sql);
				ps.setString(1, email);
				i = ps.executeUpdate();
				return i;
			} catch (Exception e) {
				e.printStackTrace();
				getConnection().rollback();
				return 0;
			} finally {
				if (getConnection() != null) {
					getConnection().close();
				}
			}
		}
}
