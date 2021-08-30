package property.service;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.Transaction;

import property.pojo.User;
import property.util.SessionUtil;

public class RegistrationValidationDaoImpl implements RegistrationValidationDao {

	@Override
	public boolean checkForRegistration(String email) {
		
		
		Session session = SessionUtil.getFactory().openSession();
		Transaction tx = session.beginTransaction();
		
		String QueryString = "from User";
		Query query = session.createQuery(QueryString);
		List<User> uList = query.getResultList();
		
		for(User list : uList) {
			if(list.getUsername().equals(email)) {
				return false;
			}else {
				return true;
			}
			
		}

		tx.commit();
		session.close();
		
		
		return true;
	}

}
