package com.portal.action;
import com.portal.dao.ApplicationDao;

import com.opensymphony.xwork2.ActionSupport;

public class RegisterAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private String fname;
	private String lname;
	private String role;
	private String email;
	private String uname;
	private String password;
	private String gender;
	private String msg = "";
	ApplicationDao admin = null;
	int ctr = 0;
	
	@Override
	public String execute() throws Exception {
		admin = new ApplicationDao();

		try {
			ctr = admin.registerUser(fname, lname, role, email, uname, password, gender);
			if (ctr > 0) {
				msg = "Registration Successfull";
			} else {
				msg = "Some error";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "REGISTER";
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}
	
	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public int getCtr() {
		return ctr;
	}

	public void setCtr(int ctr) {
		this.ctr = ctr;
	}

	public void validate() {
		
		// password must not be blank , and it should be more than 6 characters
		if (password.equals("")) {
			addFieldError("password", "The Password can't be empty");
		} else if (password.length() < 6) {
			addFieldError("password", "Password must be minimum of 6 characters");
		}
	
	}

}
