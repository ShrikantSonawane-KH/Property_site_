package property.dao;

import java.util.List;

import property.pojo.User;


public interface UserDao {
	public User insertion(User user);
	public User deletion(int id);
	public User updation(User user);
	public List<User> showAll();
}
