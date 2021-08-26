package property.pojo;


import java.util.Arrays;

import javax.persistence.Embeddable;


@Embeddable
public class Pro_image {

	private String img_desc;
	private byte[] image;				// think of import
	public Pro_image() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Pro_image(String img_desc, byte[] image) {
		super();
		this.img_desc = img_desc;
		this.image = image;
	}
	public String getImg_desc() {
		return img_desc;
	}
	public void setImg_desc(String img_desc) {
		this.img_desc = img_desc;
	}
	public byte[] getImage() {
		return image;
	}
	public void setImage(byte[] image) {
		this.image = image;
	}
	@Override
	public String toString() {
		return "Pro_image [img_desc=" + img_desc + ", image=" + Arrays.toString(image) + "]";
	}
	
	
	
	
	
}

