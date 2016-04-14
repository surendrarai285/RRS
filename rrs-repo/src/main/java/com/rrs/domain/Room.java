package com.rrs.domain;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Room {

	@Id
	private Integer id;
	private Integer room_no;
	private String name;
	private Boolean status;
	private Boolean smoke;

	public Integer getRoom_no() {
		return room_no;
	}

	public void setRoom_no(Integer room_no) {
		this.room_no = room_no;
	}

	public Boolean getStatus() {
		return status;
	}

	public void setStatus(Boolean status) {
		this.status = status;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Boolean getSmoke() {
		return smoke;
	}

	public void setSmoke(Boolean smoke) {
		this.smoke = smoke;
	}
}
