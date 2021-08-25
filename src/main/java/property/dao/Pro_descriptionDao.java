package property.dao;

import java.util.List;

import property.pojo.Pro_Description;


public interface Pro_descriptionDao {
	public Pro_Description insertion(Pro_Description pro_description);
	public Pro_Description deletion(int id);
	public Pro_Description updation(Pro_Description pro_description);
	public List<Pro_Description> showAll();

}
