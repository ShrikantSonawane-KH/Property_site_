package property.dao;

import java.util.List;

import property.pojo.Pro_address;

public interface Pro_addressDao {
	
	public Pro_address insertion(Pro_address pro_address);
	public Pro_address deletion(int id);
	public Pro_address updation(Pro_address pro_address);
	public List<Pro_address> showAll();

}
