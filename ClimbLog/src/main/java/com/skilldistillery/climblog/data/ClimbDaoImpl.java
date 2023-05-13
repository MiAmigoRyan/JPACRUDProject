package com.skilldistillery.climblog.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.climblog.entities.Climb;
@Service
@Transactional
public class ClimbDaoImpl implements ClimbDAO{
	
	@PersistenceContext
	private EntityManager em;
	
	@Override
	public Climb findById(int climbId) {
		return em.find(Climb.class, climbId);
	}
//	@Override
//	public Climb findByName(String name) {
//		return em.find(Climb.class, name);
//	}

	@Override
	public List<Climb> findAll() {
		String jpql = "SELECT c FROM Climb c";	
		return em.createQuery(jpql, Climb.class).getResultList();
	}

	@Override
	public Climb create(Climb climb) {
		em.persist(climb);		
		return climb;
	}

	@Override
	public Climb update(int climbId, Climb climb) {
		Climb managed = em.find(Climb.class, climbId);
		if(managed != null) {
			managed.setZone(climb.getZone());
			managed.setDate(climb.getDate());
			managed.setType(climb.getType());
			managed.setProtection(climb.getProtection());
			managed.setLocation(climb.getLocation());
			managed.setFirstAscentionist(climb.getFirstAscentionist());
			managed.setNotes(climb.getNotes());
			managed.setImage(climb.getImage());
			managed.setGrade(climb.getGrade());
		return managed;
		}
		return null;
	}

	@Override
	public boolean deleteById(int climbId) {
		Climb climb = em.find(Climb.class, climbId);
		if(climb != null) {
			em.remove(climb);
		
			return true;
		}
		return false;
	}


}
