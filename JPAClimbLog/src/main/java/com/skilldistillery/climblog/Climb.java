package com.skilldistillery.climblog;

import java.time.LocalDateTime;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Climb {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private String zone;

	private LocalDateTime date;

	public Climb() {
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getZone() {
		return zone;
	}

	public void setZone(String zone) {
		this.zone = zone;
	}

	public LocalDateTime getdate() {
		return date;
	}

	public void setdate(LocalDateTime date) {
		this.date = date;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Climb [id=").append(id).append(", location=").append(zone).append(", date=").append(date)
				.append("]");
		return builder.toString();
	}

}
