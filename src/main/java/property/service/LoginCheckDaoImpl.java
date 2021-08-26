package property.service;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.Transaction;

import property.pojo.User;
import property.util.SessionUtil;

public class LoginCheckDaoImpl implements LoginCheckDao {
	
	private final String RENTER = "renter";
	private final String TENANT = "tenant";

	public String checkUser(String email, String password) {

		Session session = SessionUtil.getFactory().openSession();
		Transaction tx = session.beginTransaction();
		
		String QueryString = "from User";
		Query Query = session.createQuery(QueryString);
		List<User> UserList = Query.getResultList();
		
		for (User ul : UserList) {	
			if (RENTER.equals(ul.getRole()) && email.equals(ul.getUsername()) && password.equals(ul.getPassword())) {
				return "renter";
			} else if(TENANT.equals(ul.getRole()) && email.equals(ul.getUsername()) && password.equals(ul.getPassword())) {
				return "tenant";
			}
		}
		tx.commit();
		session.close();
		return "not_user";
	
	}


}
