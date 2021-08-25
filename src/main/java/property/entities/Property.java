package property.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Property {
	
	@Id
	@GeneratedValue
	private int id;
	private String pro_name;
	Pro_address address;
	Pro_Description description;
	private String pro_for;
	Pro_image image; 
	private float price;
	private float deposite;
	private String pro_type;
	private String category;
	public Property() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Property(int id, String pro_name, Pro_address address, Pro_Description description, String pro_for,
			Pro_image image, float price, float deposite, String pro_type, String category) {
		super();
		this.id = id;
		this.pro_name = pro_name;
		this.address = address;
		this.description = description;
		this.pro_for = pro_for;
		this.image = image;
		this.price = price;
		this.deposite = deposite;
		this.pro_type = pro_type;
		this.category = category;
	}
	public Property(String pro_name, Pro_address address, Pro_Description description, String pro_for, float price,
			float deposite, String pro_type, String category) {
		super();
		this.pro_name = pro_name;
		this.address = address;
		this.description = description;
		this.pro_for = pro_for;
		this.price = price;
		this.deposite = deposite;
		this.pro_type = pro_type;
		this.category = category;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPro_name() {
		return pro_name;
	}
	public void setPro_name(String pro_name) {
		this.pro_name = pro_name;
	}
	public Pro_address getAddress() {
		return address;
	}
	public void setAddress(Pro_address address) {
		this.address = address;
	}
	public Pro_Description getDescription() {
		return description;
	}
	public void setDescription(Pro_Description description) {
		this.description = description;
	}
	public String getPro_for() {
		return pro_for;
	}
	public void setPro_for(String pro_for) {
		this.pro_for = pro_for;
	}
	public Pro_image getImage() {
		return image;
	}
	public void setImage(Pro_image image) {
		this.image = image;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public float getDeposite() {
		return deposite;
	}
	public void setDeposite(float deposite) {
		this.deposite = deposite;
	}
	public String getPro_type() {
		return pro_type;
	}
	public void setPro_type(String pro_type) {
		this.pro_type = pro_type;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	@Override
	public String toString() {
		return "Property [id=" + id + ", pro_name=" + pro_name + ", pro_for=" + pro_for + ", price=" + price
				+ ", deposite=" + deposite + ", pro_type=" + pro_type + ", category=" + category + "]";
	}
	
	
	
	
	
}
