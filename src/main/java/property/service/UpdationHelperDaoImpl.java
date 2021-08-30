package property.service;

import org.hibernate.Session;
import org.hibernate.Transaction;

import property.pojo.Renter;
import property.util.SessionUtil;

public class UpdationHelperDaoImpl implements UpdationHelperDao{

	@Override
	public Renter propertyupdation(Renter updaterenter,int id) {
		Session session = SessionUtil.getFactory().openSession();

		Transaction tx = session.beginTransaction();

		Renter renter = session.get(Renter.class, id);
		
		 String name =updaterenter.getProperty().getName();
		 renter.getProperty().setName(name);
		 
		String area = updaterenter.getProperty().getAddress().getArea();
		renter.getProperty().getAddress().setArea(area);
		
		String lane = updaterenter.getProperty().getAddress().getLane();
		renter.getProperty().getAddress().setLane(lane);
		
		String landmark = updaterenter.getProperty().getAddress().getLandmark();
		renter.getProperty().getAddress().setLandmark(landmark);
		
		String city = updaterenter.getProperty().getAddress().getCity();
		renter.getProperty().getAddress().setCity(city);
		
		
		String state = updaterenter.getProperty().getAddress().getState();
		renter.getProperty().getAddress().setState(state);

		String country = updaterenter.getProperty().getAddress().getCountry();
		renter.getProperty().getAddress().setCountry(country);
		
		String pin = updaterenter.getProperty().getAddress().getPincode();
		renter.getProperty().getAddress().setPincode(pin);
		
		
		String furnish = updaterenter.getProperty().getDescription().getFurnished();
		renter.getProperty().getDescription().setFurnished(furnish);
		
		
		String prostatus = updaterenter.getProperty().getDescription().getPro_status();
		renter.getProperty().getDescription().setPro_status(prostatus);
		
		String highlights = updaterenter.getProperty().getDescription().getSpecial_highlights();
		renter.getProperty().getDescription().setSpecial_highlights(highlights);

		
		String security = updaterenter.getProperty().getDescription().getOverview().getSecurity();
		renter.getProperty().getDescription().getOverview().setSecurity(security);

		float maintenance = updaterenter.getProperty().getDescription().getOverview().getMaintenance();
		renter.getProperty().getDescription().getOverview().setMaintenance(maintenance);
		
		String buildarea = updaterenter.getProperty().getDescription().getOverview().getBuild_area();
		renter.getProperty().getDescription().getOverview().setBuild_area(buildarea);
		
		int bathroom = updaterenter.getProperty().getDescription().getOverview().getBathroom();
		renter.getProperty().getDescription().getOverview().setBathroom(bathroom);
		
		int balcony = updaterenter.getProperty().getDescription().getOverview().getBalcony();
		renter.getProperty().getDescription().getOverview().setBalcony(balcony);
		
		String avalability = updaterenter.getProperty().getDescription().getOverview().getAvailable_from();
		renter.getProperty().getDescription().getOverview().setAvailable_from(avalability);
		
		int floorNo = updaterenter.getProperty().getDescription().getOverview().getFloor_no();
		renter.getProperty().getDescription().getOverview().setFloor_no(floorNo);
		
		
		String proage = updaterenter.getProperty().getDescription().getOverview().getPro_age();
		renter.getProperty().getDescription().getOverview().setPro_age(proage);		
		
		
		String parking = updaterenter.getProperty().getDescription().getOverview().getParking();
		renter.getProperty().getDescription().getOverview().setParking(parking);
		
		
		String entryface = updaterenter.getProperty().getDescription().getOverview().getEntrance_facing();
		renter.getProperty().getDescription().getOverview().setEntrance_facing(entryface);

		String profor = updaterenter.getProperty().getPro_for();
		renter.getProperty().setPro_for(profor);
		
		
		String imgdec = updaterenter.getProperty().getImage().getImg_desc();
		renter.getProperty().getImage().setImg_desc(imgdec);
		
		String imgname = updaterenter.getProperty().getImage().getImage();
		renter.getProperty().getImage().setImage(imgname);

		float price = updaterenter.getProperty().getPrice();
		renter.getProperty().setPrice(price);
		
		float deposite = updaterenter.getProperty().getDeposite();
		renter.getProperty().setDeposite(deposite);		
		
		String protype = updaterenter.getProperty().getPro_type();
		renter.getProperty().setPro_type(protype);
		
		String category = updaterenter.getProperty().getCategory();
		renter.getProperty().setCategory(category);
		
		tx.commit();
		session.close();

		return renter;
	}

}
