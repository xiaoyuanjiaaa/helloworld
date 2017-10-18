package bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="address")//地址表
public class address {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer addressId;
	private String	tel;//电话
	private String	address;//详细地址
	private String	zip;//邮编
	//多对一
	private int 	userId;//外键
	@ManyToOne
	@JoinColumn(name="userId",insertable=false,updatable=false)
	private users users;
	public Integer getAddressId() {
		return addressId;
	}
	public void setAddressId(Integer addressId) {
		this.addressId = addressId;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getZip() {
		return zip;
	}
	public void setZip(String zip) {
		this.zip = zip;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public users getUsers() {
		return users;
	}
	public void setUsers(users users) {
		this.users = users;
	}
	@Override
	public String toString() {
		return "address [addressId=" + addressId + ", tel=" + tel + ", address=" + address + ", zip=" + zip
				+ ", userId=" + userId + ", users=" + users + "]";
	}
	
}
