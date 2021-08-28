package property.dao;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.Transaction;

import property.pojo.Property;
import property.pojo.Renter;
import property.util.SessionUtil;


public class RenterDaoImpl implements RenterDao{

	public Renter insertion(Renter renter) {
		Session session = SessionUtil.getFactory().openSession();
		Transaction tx = session.beginTransaction();
		
		session.save(renter);
		
		tx.commit();
		session.close();
		
		return renter;
	}

	public Renter deletion(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	public Renter updation(Renter renter) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Renter> showAll() {
		
		Session session = SessionUtil.getFactory().openSession();

		String QueryString = "from Renter";
		Query Query = session.createQuery(QueryString);
		List<Renter> renter = Query.getResultList();
		
		session.close();
		return renter;
	
	}

	@Override
	public List<Renter> showByCity(String city) {
		Session session = SessionUtil.getFactory().openSession();

		Query Query = session.createQuery("from Renter where city =: c");
		Query.setParameter("c", city);
		List<Renter> renterList = Query.getResultList();
		
		for(Renter rList : renterList) {
	
		System.out.println(rList);
		}
		session.close();
		return renterList;
		
		
	

	}

	@Override
	public List<Renter> getAllPropertiesByCategory(String price) {
		
		// working on --remain
		
		Session session = SessionUtil.getFactory().openSession();

		Query Query = session.createQuery("from Renter where price =: p");
		Query.setParameter("c", price);
		List<Renter> renterList = Query.getResultList();
		
		for(Renter rList : renterList) {
	
		System.out.println(rList);
		}
		session.close();
		return renterList;
		

		
		
		return null;
	}

}
