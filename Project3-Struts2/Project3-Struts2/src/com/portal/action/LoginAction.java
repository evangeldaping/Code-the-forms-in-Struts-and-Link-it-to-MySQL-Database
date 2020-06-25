package com.portal.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import java.sql.*;

import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport implements SessionAware {
 
	private static final long serialVersionUID = 1L;
	
	
	
	private String username;
	private String passwd;
	private Map<String, Object> sessionMap;
	public static final String SUCCESS = "success";
	public static final String ERROR = "error";
	public static final String INPUT = "input";
	
	public Map<String, Object> getSessionMap() {
		return sessionMap;
	}
	
	@Override
    public void setSession(Map<String, Object> sessionMap) {
        this.sessionMap = sessionMap;

    }
	
	public void setSessionMap(Map<String, Object> sessionMap) {
		this.sessionMap = sessionMap;
	}
	
	public String getUsername() {
		System.out.println("username="+username); 
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	public String getPasswd() {
		System.out.println("password="+passwd); 
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	
	public String execute() throws Exception {
		String host = "jdbc:mysql://localhost:3306/";
		String dbName = "communityportal";
		String dbusername = "root";
		String pass = "";
		String url = host + dbName + "?user=" + dbusername + "&password=" + pass;
		String loggedUserName = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url);
			Statement stmt = con.createStatement();

			ResultSet rs = stmt.executeQuery("select uname, pass from members");
			int flag = 0;
			while (rs.next()) {
				if ((username.equals(rs.getString(1).trim()) || username == rs.getString(1).trim())
						&& ((passwd.equals(rs.getString(2).trim()) || passwd == rs.getString(2).trim()))) {
					flag = 1;
					return SUCCESS;
				}
			}
			if (flag == 0) {
				addActionError("No such User!!");
				return ERROR;
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return ERROR;
	}
	
	public void validate() {
		if("".equals(username) || "".equals(passwd)) {
			addActionError("Missing username or password!!");
		}
	}
	
	public String logout() {
        // remove userName from the session
        if (sessionMap.containsKey("username")) {
            sessionMap.remove("username");
        }
        return SUCCESS;
    }
    
	
}