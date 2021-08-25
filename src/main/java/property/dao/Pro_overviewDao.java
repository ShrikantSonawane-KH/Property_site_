package property.dao;

import java.util.List;

import property.pojo.Pro_overview;


public interface Pro_overviewDao {
	public Pro_overview insertion(Pro_overview pro_overview);
	public Pro_overview deletion(int id);
	public Pro_overview updation(Pro_overview pro_overview);
	public List<Pro_overview> showAll();

}
