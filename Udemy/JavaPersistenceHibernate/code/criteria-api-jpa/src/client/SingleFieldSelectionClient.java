package client;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Path;
import javax.persistence.criteria.Root;

import entity.Guide;
import entity.Student;

//generated Guide_ metamodel after enabling Annotation Processing
//import entity.Guide_;

public class SingleFieldSelectionClient {
	public static void main(String[] args) {

		EntityManagerFactory emf = Persistence.createEntityManagerFactory("hello-world");
		EntityManager em = emf.createEntityManager();
		EntityTransaction txn = em.getTransaction();
		try {
			txn.begin();			
			
			//SINGLE FIELD SELECTION - Querying just for the name field of the Guide entity [using Criteria API]			
			CriteriaBuilder builder = em.getCriteriaBuilder();

			CriteriaQuery<String> criteria = builder.createQuery( String.class );
			Root<Guide> root = criteria.from( Guide.class );
			Path<String> name = root.get("name");
			//Path<String> name = root.get(Guide_.name); //using Guide_ metamodel
			criteria.select(name);
			
			TypedQuery<String> query = em.createQuery(criteria);
			List<String> names = query.getResultList();
			for (String name_ : names) {
				System.out.println(name_);
			} 			
				
			//############################
			
			//SINGLE FIELD SELECTION - Querying just for the name field of the Guide entity [using JPQL]
			/*
			TypedQuery<String> typedQuery = em.createQuery("select g.name from Guide g", String.class);
			List<String> names = typedQuery.getResultList();
			for (String name : names) {
				System.out.println(name);
			}
			*/			
			
			txn.commit();
		} catch (Exception e) {
			if (txn != null) {
				txn.rollback();
			}
			e.printStackTrace();
		} finally {
			if (em != null) {
				em.close();
			}
		}

	}
}














