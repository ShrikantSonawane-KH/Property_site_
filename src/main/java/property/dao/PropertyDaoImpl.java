package property.dao;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.Transaction;

import property.pojo.Property;
import property.pojo.Renter;
import property.util.SessionUtil;


public class PropertyDaoImpl implements PropertyDao{

	public Property insertion(Property property) {
		Session session = SessionUtil.getFactory().openSession();
		Transaction tx = session.beginTransaction();
		
		session.save(property);
		
		tx.commit();
		session.close();
		
		return property;
	}

	public Property deletion(int id) {
		
	
		return null;
	}

	public Property updation(Property property) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Property> showAll() {
		
		Session session = SessionUtil.getFactory().openSession();

		String QueryString = "from Property";
		Query Query = session.createQuery(QueryString);
		List<Property> property = Query.getResultList();
		
		session.close();
		return property;

	}
	
}
