package property.util;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class SessionUtil {
	
public static SessionFactory factory;
	
	public static SessionFactory getFactory() {
		
		if(factory==null || factory.isClosed()) {
			
			factory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
						
		}
		return factory;
	}
	
	public static void closeFactory() {
		if(factory!=null || factory.isOpen()) {
			factory.close();
		}
	}
	
	

}
