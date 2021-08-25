package property.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Renter {
	
	@Id
	@GeneratedValue
	private int id;
	
	Property property;
	public Renter() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Renter(int id, Property property) {
		super();
		this.id = id;
		this.property = property;
	}
	public Renter(Property property) {
		super();
		this.property = property;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Property getProperty() {
		return property;
	}
	public void setProperty(Property property) {
		this.property = property;
	}
	@Override
	public String toString() {
		return "Renter [id=" + id + ", property=" + property + "]";
	}
	
	
}
