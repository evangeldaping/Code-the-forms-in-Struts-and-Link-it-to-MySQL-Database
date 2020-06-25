package com.portal.action;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import com.opensymphony.xwork2.ActionSupport;

public class ForgotPassAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private String email;
	private String password;
	private String confirmpassword;
	
	public String execute() {
		return SUCCESS;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getConfirmpassword() {
		return confirmpassword;
	}

	public void setConfirmpassword(String confirmpassword) {
		this.confirmpassword = confirmpassword;
	}

	public void validate() {
        if (getPassword().length() == 0) {
            addFieldError("password", getText("Password is required"));
        }
        if (getConfirmpassword().length() == 0) {
            addFieldError("confirmpassword", getText("Confirm Password is required"));
        }
        if (!confirmpassword.contentEquals(password) ) {
        	addFieldError("confirmpassword", "password not confirm");
        }        
        if(email.equals("")){
            addFieldError("email","The Email can't be empty");
        }else{
            String  expression="^[\\w\\-]([\\.\\w])+[\\w]+@([\\w\\-]+\\.)+[A-Z]{2,4}$";
               CharSequence inputStr = email;
               Pattern pattern = Pattern.compile(expression,Pattern.CASE_INSENSITIVE);
               Matcher matcher = pattern.matcher(inputStr);
               if(!matcher.matches())
                   addFieldError("email","Invalid email address");
        }
        
    }

}
