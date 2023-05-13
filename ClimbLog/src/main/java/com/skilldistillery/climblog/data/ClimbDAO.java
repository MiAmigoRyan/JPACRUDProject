package com.skilldistillery.climblog.data;

import java.util.List;

import com.skilldistillery.climblog.entities.Climb;

public interface ClimbDAO {
	
	Climb findById(int climbId);
	//Climb findByName(String name);
	List<Climb> findAll();
	Climb create(Climb climb);
	Climb update(int climbId, Climb climb);
	boolean deleteById(int climbId);
}
