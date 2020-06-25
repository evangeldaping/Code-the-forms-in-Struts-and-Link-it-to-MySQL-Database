package com.portal.action;

import com.opensymphony.xwork2.ActionSupport;

public class SearchAction extends ActionSupport {
	
	private static final long serialVersionUID = 1L;
	
	private String search;
	
	 public String getSearch() {
			return search;
		}

		public void setSearch(String search) {
			this.search = search;
		}
		
		public void validate() {
	        if (getSearch().length() == 0) {
	            addFieldError("search", getText("Nothing to display"));
	        } else if (!getSearch().equals("employee")) {
	            addFieldError("search", "Nothing to display");
	        }
	    }
}
