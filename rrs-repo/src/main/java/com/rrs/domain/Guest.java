package com.rrs.domain;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Guest {
//new file
	@Id
	private Integer id;
	private String firstName;
	private String lastName;
	private Date member_since;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public Date getMember_since() {
		return member_since;
	}

	public void setMember_since(Date member_since) {
		this.member_since = member_since;
	}

}
