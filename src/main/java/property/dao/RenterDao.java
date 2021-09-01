package property.dao;

import java.util.List;

import property.pojo.Renter;


public interface RenterDao {
	
	public Renter insertion(Renter renter);
	public Renter deletion(int id);
	public Renter updation(Renter renter);
	public List<Renter> showAll();
	public List<Renter> showByCity(String city);
	public List<Renter> getAllPropertiesByType(String pro_type);
	public List<Renter> getAllPropertiesByCat(String pro_cat);
	
	public List<Renter> getAllPropertiesByBothCatergory(String pro_type,String pro_cat);
	
	public Renter showById(int id);
	
	public List<Renter> getPropertyByRenter(String emailID);
	
	public List<Renter> getOnlyBuyProperty(String buy);
	
	public List<Renter> getAllPropertiesByTypeAndSell(String pro_for,String pro_type);
	
	public List<Renter> getAllPropertiesByCatAndSell(String pro_for,String category);
	
	
}
