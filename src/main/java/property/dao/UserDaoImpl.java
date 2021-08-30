package property.dao;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.Transaction;

import property.pojo.Renter;
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
		
		Session session = SessionUtil.getFactory().openSession();
		Transaction tx = session.beginTransaction();
		
		User user = session.get(User.class, id);
		session.delete(user);
	
		tx.commit();
		session.close();
		return user;
		
	}

	public User updation(User user) {

		return null;
	}

	public List<User> showAll() {
		
		Session session = SessionUtil.getFactory().openSession();

		String QueryString = "from User";
		Query Query = session.createQuery(QueryString);
		List<User> user = Query.getResultList();

		session.close();
		return user;

	}

	@Override
	public User showById(int id) {
		Session session = SessionUtil.getFactory().openSession();

		Transaction tx = session.beginTransaction();

		User user = session.get(User.class, id);

		tx.commit();
		session.close();

		return user;
		
	}

}
