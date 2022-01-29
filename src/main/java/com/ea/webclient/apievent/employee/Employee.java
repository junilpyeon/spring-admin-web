package com.ea.webclient.apievent.employee;


import lombok.Data;

@Data
public class Employee {
	 
    public Employee() {
 
    }
 
    public Employee(Integer id, String firstName, String lastName, String email) {
        super();
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
    }
  
    private Integer id;
    private String firstName;
    private String lastName;
    private String email;
 
    //Getters and setters
	public Integer getid() {
		return id;
	}

	public void setid(Integer id) {
		this.id = id;
	}
	public String getfirstName() {
		return firstName;
	}

	public void setfirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getlastName() {
		return lastName;
	}

	public void setlastName(String lastName) {
		this.lastName = lastName;
	}
	public String getemail() {
		return email;
	}

	public void setemail(String email) {
		this.email = email;
	}
	
    @Override
    public String toString() {
        return "Employee [id=" + id + ", firstName=" + firstName + "lastName=" + lastName + ", email=" + email + "]";
    }

	
}
