package com.portal.action;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.portal.dao.ApplicationDao;
import com.portal.bean.User;

import com.opensymphony.xwork2.ActionSupport;

public class ReportAction extends ActionSupport {

	private static final long serialVersionUID = 6329394260276112660L;
	ResultSet rs = null;
	User bean = null;
	List<User> beanList = null;
	ApplicationDao admin = new ApplicationDao();
	private boolean noData = false;

	@Override
	public String execute() throws Exception {
		try {
			beanList = new ArrayList<User>();
			rs = admin.report();
			int i = 0;
			if (rs != null) {
				while (rs.next()) {
					i++;
					bean = new User();
					bean.setId(i);
					bean.setFname(rs.getString("fname"));
					bean.setLname(rs.getString("lname"));
					bean.setRole(rs.getString("role"));
					bean.setEmail(rs.getString("email"));
					bean.setUname(rs.getString("uname"));
					bean.setPass(rs.getString("pass").replaceAll("(?s).", "*"));
					bean.setGender(rs.getString("gender"));
					beanList.add(bean);
				}
			}
			if (i == 0) {
				noData = false;
			} else {
				noData = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "REPORT";
	}

	public boolean isNoData() {
		return noData;
	}

	public void setNoData(boolean noData) {
		this.noData = noData;
	}

	public List<User> getBeanList() {
		return beanList;
	}

	public void setBeanList(List<User> beanList) {
		this.beanList = beanList;
	}
}