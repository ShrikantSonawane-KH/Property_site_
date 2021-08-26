package property.pojo;

import java.sql.Blob;

import javax.persistence.Embeddable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Embeddable
public class Pro_image {

	private String img_desc;
	private Blob img;				// think of import
	public Pro_image() {
		super();
		
	}
	public Pro_image(int id, String img_desc, Blob img) {
		super();
		
		this.img_desc = img_desc;
		this.img = img;
	}
	public Pro_image(String img_desc, Blob img) {
		super();
		this.img_desc = img_desc;
		this.img = img;
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
		return "Pro_image [img_desc=" + img_desc + ", img=" + img + "]";
	}
	
	
	
}

