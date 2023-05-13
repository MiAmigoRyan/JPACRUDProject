package com.skilldistillery.climblog.entities;

import java.time.LocalDateTime;

import javax.persistence.Column;
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
	
	private String type;
	
	private String protection;
	
	private int rating;
	
	private String location;
	
	@Column (name="first_ascentionist")
	private String firstAscentionist;

	private String notes;
	
	private String image;

	private String grade;
	
	private String name;
	


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

	public LocalDateTime getDate() {
		return date;
	}

	public void setDate(LocalDateTime date) {
		this.date = date;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getProtection() {
		return protection;
	}

	public void setProtection(String protection) {
		this.protection = protection;
	}

	public int getRating() {
		return rating;
	}

	public void setRating(int rating) {
		this.rating = rating;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getFirstAscentionist() {
		return firstAscentionist;
	}

	public void setFirstAscentionist(String firstAscentionist) {
		this.firstAscentionist = firstAscentionist;
	}

	public String getNotes() {
		return notes;
	}

	public void setNotes(String notes) {
		this.notes = notes;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}
	


	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Climb [id=").append(id)
				.append(", zone=").append(zone)
				.append(", date=").append(date)
				.append(", type=").append(type)
				.append(", protection=").append(protection)
				.append(", rating=").append(rating)
				.append(", location=").append(location)
				.append(", firstAscentionist=").append(firstAscentionist)
				.append(", notes=").append(notes)
				.append(", image=").append(image)
				.append(", grade=").append(grade)
				.append(", name=").append(name)
				.append("]");
		return builder.toString();
	}



}
