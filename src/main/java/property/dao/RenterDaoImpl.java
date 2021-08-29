package property.dao;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.Transaction;

import property.pojo.Renter;
import property.util.SessionUtil;

public class RenterDaoImpl implements RenterDao {

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

		for (Renter rList : renterList) {

			System.out.println(rList);
		}
		session.close();
		return renterList;

	}

	@Override
	public List<Renter> getAllPropertiesByType(String pro_type) {

		Session session = SessionUtil.getFactory().openSession();

		Query Query = session.createQuery("from Renter where pro_type =: p");
		Query.setParameter("p", pro_type);
		List<Renter> renterListByProType = Query.getResultList();

		for (Renter rList : renterListByProType) {

			System.out.println(rList);
		}
		session.close();

		return renterListByProType;

	}

	@Override
	public List<Renter> getAllPropertiesByCat(String pro_cat) {

		Session session = SessionUtil.getFactory().openSession();

		Query Query = session.createQuery("from Renter where category =: p");
		Query.setParameter("p", pro_cat);
		List<Renter> renterListByProCat = Query.getResultList();

		for (Renter rList : renterListByProCat) {

			System.out.println(rList);
		}
		session.close();

		return renterListByProCat;

	}

	@Override
	public List<Renter> getAllPropertiesByBothCatergory(String pro_type, String pro_cat) {

		Session session = SessionUtil.getFactory().openSession();

		Query Query = session.createQuery("from Renter where category =: p and  pro_type =: q");
		Query.setParameter("p", pro_type);
		Query.setParameter("q", pro_cat);
		List<Renter> renterListByProCat = Query.getResultList();

		for (Renter rList : renterListByProCat) {

			System.out.println(rList);
		}
		session.close();

		System.out.println(pro_type);
		System.out.println(pro_cat);

		return renterListByProCat;

	}

	@Override
	public Renter showById(int id) {

		Session session = SessionUtil.getFactory().openSession();

		Transaction tx = session.beginTransaction();

		Renter renter = session.get(Renter.class, id);

		tx.commit();
		session.close();

		return renter;
	}

	@Override
	public List<Renter> getPropertyByRenter(String emailID) {
		Session session = SessionUtil.getFactory().openSession();

		Query Query = session.createQuery("from Renter where validRenterEmail =: e");
		Query.setParameter("e", emailID);
		List<Renter> proListByRenter = Query.getResultList();

		for (Renter rList : proListByRenter) {

			System.out.println(rList);
		}
		session.close();

		return proListByRenter;


	}

}
