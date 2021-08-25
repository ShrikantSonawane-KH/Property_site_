package property.dao;

import java.util.List;

import property.pojo.Property;


public interface PropertyDao {
	public Property insertion(Property property);
	public Property deletion(int id);
	public Property updation(Property property);
	public List<Property> showAll();

}
