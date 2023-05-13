package com.skilldistillery.climblog.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.climblog.data.ClimbDAO;
import com.skilldistillery.climblog.entities.Climb;

@Controller
public class ClimbController {

	@Autowired
	private ClimbDAO climbDAO;
	
	@GetMapping({"/", "index.do"})
	public String index(Model model) {
		List<Climb> climbList = climbDAO.findAll();
		model.addAttribute("climbList", climbList);
		return "index";
	}
	
	@GetMapping("getClimbById.do")
	public String getClimbById(@RequestParam("id")int climbId, Model model) {
		Climb climb = climbDAO.findById(climbId);
		model.addAttribute("climb", climb);
		return "climb/show";
	}
	
	@PostMapping("addClimb.do")
	public String addClimb(Climb climb, Model model) {
	    model.addAttribute("climb", climbDAO.create(climb));
	    return "climb/show";
	}
	
	
	
	@GetMapping("goToUpdateClimb.do")
	public String goToUbdateClimb(@RequestParam int id,Climb climb, Model model) {
		
		Climb climbUpdate = climbDAO.findById(climb.getId());
		
		model.addAttribute("climb", climbUpdate);
		
		return "climb/updateForm";
	}
	
	
	@PostMapping("updateClimb.do")
	public String updateClimb(@RequestParam int id, Model model) {
	    Climb climb = climbDAO.findById(id);
	    
	        model.addAttribute("climb", climb);
	        return "climb/show";
	   
	    }
	
	
	@GetMapping("deleteClimb.do")
	public String deleteClimb(@RequestParam int id) {
	    boolean deleted = climbDAO.deleteById(id);
	    if (deleted) {
	        return "climb/deleteSuccess"; 
	    } 
	        return "climb/invalid";
	    }
	}

