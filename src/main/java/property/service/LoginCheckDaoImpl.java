package property.service;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.Transaction;

import property.pojo.User;
import property.util.SessionUtil;

public class LoginCheckDaoImpl implements LoginCheckDao {

	public String checkUser(String email, String password) {

		Session session = SessionUtil.getFactory().openSession();
		Transaction tx = session.beginTransaction();
		
		String QueryString = "from User";
		Query Query = session.createQuery(QueryString);
		List<User> UserList = Query.getResultList();

		for (User ul : UserList) {
			String user_role = ul.getRole();
			System.out.println("in service: "+user_role);

			if (user_role==null) {
				return "renter";
			} else {
				return "tenant";
			}
		
		}
		tx.commit();
		session.close();
		return "not_user";
	
	}


}
