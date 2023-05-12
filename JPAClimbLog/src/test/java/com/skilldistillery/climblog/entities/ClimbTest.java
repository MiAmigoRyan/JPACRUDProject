package com.skilldistillery.climblog.entities;

import static org.junit.jupiter.api.Assertions.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import com.skilldistillery.climblog.entities.Climb;

class ClimbTest {
	private static EntityManagerFactory emf;
	private EntityManager em;
	private Climb climb;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPAClimbLog");

	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		climb = em.find(Climb.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		climb = null;
	}

	@Test
	void test_Climb_Entity_Mapping() {

		assertNotNull(climb);
		
		assertEquals("Seal Rock", climb.getZone());  
		

	}

}
