package property.dao;

import java.util.List;

import property.pojo.Pro_image;

public interface Pro_imageDao {
	public Pro_image insertion(Pro_image pro_image);
	public Pro_image deletion(int id);
	public List<Pro_image> showAll();
}
