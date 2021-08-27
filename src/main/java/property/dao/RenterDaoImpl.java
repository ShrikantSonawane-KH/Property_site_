package property.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

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
		// TODO Auto-generated method stub
		return null;
	}

}
