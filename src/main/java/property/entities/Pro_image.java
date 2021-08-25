package property.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import com.mysql.cj.jdbc.Blob;
@Entity
public class Pro_image {
	
	@Id
	@GeneratedValue
	private int id;
	private String img_desc;
	private Blob img;				// think of import
	public Pro_image() {
		super();
		
	}
	public Pro_image(int id, String img_desc, Blob img) {
		super();
		this.id = id;
		this.img_desc = img_desc;
		this.img = img;
	}
	public Pro_image(String img_desc, Blob img) {
		super();
		this.img_desc = img_desc;
		this.img = img;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getImg_desc() {
		return img_desc;
	}
	public void setImg_desc(String img_desc) {
		this.img_desc = img_desc;
	}
	public Blob getImg() {
		return img;
	}
	public void setImg(Blob img) {
		this.img = img;
	}
	@Override
	public String toString() {
		return "Pro_image [id=" + id + ", img_desc=" + img_desc + ", img=" + img + "]";
	}
	
	
	
}
