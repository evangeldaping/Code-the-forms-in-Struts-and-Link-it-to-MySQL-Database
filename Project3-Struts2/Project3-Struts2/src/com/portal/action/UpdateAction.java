package com.portal.action;
import java.sql.ResultSet;
import com.portal.dao.ApplicationDao;

import com.opensymphony.xwork2.ActionSupport;

public class UpdateAction extends ActionSupport {

	private static final long serialVersionUID = -1905974197186620917L;
	private String fname="", lname="", role="", uname = "", email = "", pass = "", gender="", emailhidden = "";
	private String msg = "";
	ResultSet rs = null;
	ApplicationDao dao = new ApplicationDao();
	String submitType;

	@Override
	public String execute() throws Exception {
		try {
			if (submitType.equals("updatedata")) {
				rs = dao.fetchUserDetails(email.trim());
				if (rs != null) {
					while (rs.next()) {
						fname  =  rs.getString("fname");
						lname  =  rs.getString("lname");
						role   =  rs.getString("role");
						email  =  rs.getString("email");
						uname  =  rs.getString("uname");
						email  =  rs.getString("email");
						pass   =  rs.getString("pass");
						gender =  rs.getString("gender");
					}
				}
			} else {
				int i = dao.updateUserDetails(fname, lname, role, email, uname, pass, gender, emailhidden);
				if (i > 0) {
					msg = "Record Updated Successfuly";
				} else {
					msg = "error";
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return "UPDATE";
	}

	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}

	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}

	public String getEmailhidden() {
		return emailhidden;
	}
	public void setEmailhidden(String emailhidden) {
		this.emailhidden = emailhidden;
	}

	public String getSubmitType() {
		return submitType;
	}
	public void setSubmitType(String submitType) {
		this.submitType = submitType;
	}
}
