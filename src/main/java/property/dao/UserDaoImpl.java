package property.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import property.pojo.User;
import property.util.SessionUtil;

public class UserDaoImpl implements UserDao {

	public User insertion(User user) {
		
		Session session = SessionUtil.getFactory().openSession();
		Transaction tx = session.beginTransaction();
		session.save(user);

		tx.commit();
		session.close();
		
		return user;
	}

	public User deletion(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	public User updation(User user) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<User> showAll() {
		// TODO Auto-generated method stub
		return null;
	}

}
