package com.portal.action;

import java.util.ArrayList;
import java.util.List;

import org.apache.struts2.util.SubsetIteratorFilter.Decider;

public class Employee {
	private String firstname;
	private String lastname;
	private String companyname;
	private String city;
	private String country;

	public Employee() {
	}

	public Employee(String firstname, String lastname, String companyname, String city, String country) {
		this.firstname = firstname;
		this.lastname = lastname;
		this.companyname = companyname;
		this.city = city;
		this.country = country;
	}

	private List employees;
	private List contractors;

	public String execute() {
		employees = new ArrayList();
		employees.add(new Employee("George", "Boole", "Recruitment", "	KABUL", "AFGHANISTAN"));
		employees.add(new Employee("Danielle", "Bayo", "Accounts", "TIRANA", "ALBANIA"));
		employees.add(new Employee("Melissa", "Janes", "Recruitment", "ALGIERS", "ALGERIA"));
		employees.add(new Employee("Rose", "Garden", "Accounts", "	ANDORRA LA VELLA", "ANDORRA"));
		employees.add(new Employee("Angel", "Joyar", "Recruitment", "LUANDA", "ANGOLA"));
		employees.add(new Employee("Gilbert", "Paul", "Accounts", "SAINT JOHN'S", "ANTIGUA"));
		employees.add(new Employee("January", "Enero", "Recruitment", "ARGENTINA", "BUENOS AIRES"));
		employees.add(new Employee("February", "Pebrero", "Accounts", "ARMENIA", "YEREVAN"));
		employees.add(new Employee("March", "Marso", "Recruitment", "NASSAU", "AUSTRALIA"));
		employees.add(new Employee("April", "Abril", "Accounts", "CANBERRA", "Philippines"));
		employees.add(new Employee("May", "Mayo", "Recruitment", "	VIENNA", "AUSTRIA"));
		employees.add(new Employee("June", "Hunyo", "Accounts", "NASSAU", "BAHAMAS"));
		employees.add(new Employee("July", "Hulyo", "Recruitment", "MANAMA", "BAHRAIN"));
		employees.add(new Employee("August", "Agosto", "Accounts", "DHAKA", "BANGLADESH"));
		employees.add(new Employee("September", "Septyembre", "Recruitment", "BRIDGETOWN", "BARBADOS"));
		employees.add(new Employee("October", "Octobre", "Accounts", "MINSK", "BELARUS"));
		employees.add(new Employee("November", "Nobyembre", "Recruitment", "BRUSSELS", "BELGIUM"));
		employees.add(new Employee("December", "Desyembre", "Accounts", "BELMOPAN", "BELIZE"));
		employees.add(new Employee("Melissa", "Gavino", "Recruitment", "	PORTO-NOVO", "BENIN"));
		employees.add(new Employee("Rudy", "Bonds", "Accounts", "BHUTAN", "THIMPHU"));

		contractors = new ArrayList();
		contractors.add(new Employee("Mindy", "Database", "Recruitment", "SUCRE", "BOLIVIA"));
		contractors.add(new Employee("Vanessa", "Network", "Accounts", "SARAJEVO", "BOSNIA"));
		return "success";
	}

	public Decider getRecruitmentDecider() {
		return new Decider() {
			public boolean decide(Object element) throws Exception {
				Employee employee = (Employee) element;
				return employee.getCompanyname().equals("Recruitment");
			}
		};
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getCompanyname() {
		return companyname;
	}

	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public List getEmployees() {
		return employees;
	}

	public void setEmployees(List employees) {
		this.employees = employees;
	}

	public List getContractors() {
		return contractors;
	}

	public void setContractors(List contractors) {
		this.contractors = contractors;
	}

}
