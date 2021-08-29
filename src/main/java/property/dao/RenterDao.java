package property.dao;

import java.util.List;

import property.pojo.Renter;


public interface RenterDao {
	
	public Renter insertion(Renter renter);
	public Renter deletion(int id);
	public Renter updation(Renter renter);
	public List<Renter> showAll();
	public List<Renter> showByCity(String city);
	public List<Renter> getAllPropertiesByCategory(String pro_type);
	public List<Renter> getCategoriesProType();
	
	
}
