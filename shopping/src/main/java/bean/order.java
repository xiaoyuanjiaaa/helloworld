package bean;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;

@Entity
@Table(name="ordershop")
public class order {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer orderId;
	private String orderNo;
	private Integer cou;//数量
	@JsonFormat(pattern="yyyy-MM-dd",locale="GTM+8")
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date orderTime;
	private Float orderprice;
	private Float total;//总价
	private String state;//状态
	//外键
	private Integer shopid;
	@ManyToOne
	@JoinColumn(name="shopid",insertable=false,updatable=false)
	private shop shop;
	
	//外键
	private Integer userid;
	@ManyToOne
	@JoinColumn(name="userid",insertable=false,updatable=false)
	private users users;
	public Integer getOrderId() {
		return orderId;
	}
	public void setOrderId(Integer orderId) {
		this.orderId = orderId;
	}
	public String getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(String orderNo) {
		this.orderNo = orderNo;
	}
	public Date getOrderTime() {
		return orderTime;
	}
	public void setOrderTime(Date orderTime) {
		this.orderTime = orderTime;
	}
	public Float getOrderprice() {
		return orderprice;
	}
	public void setOrderprice(Float orderprice) {
		this.orderprice = orderprice;
	}
	public Float getTotal() {
		return total;
	}
	public void setTotal(Float total) {
		this.total = total;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public Integer getShopid() {
		return shopid;
	}
	public void setShopid(Integer shopid) {
		this.shopid = shopid;
	}
	public shop getShop() {
		return shop;
	}
	public void setShop(shop shop) {
		this.shop = shop;
	}

	public Integer getCou() {
		return cou;
	}
	public void setCou(Integer cou) {
		this.cou = cou;
	}
	public Integer getUserid() {
		return userid;
	}
	public void setUserid(Integer userid) {
		this.userid = userid;
	}
	public users getUsers() {
		return users;
	}
	public void setUsers(users users) {
		this.users = users;
	}
	@Override
	public String toString() {
		return "order [orderId=" + orderId + ", orderNo=" + orderNo + ", cou=" + cou + ", orderTime=" + orderTime
				+ ", orderprice=" + orderprice + ", total=" + total + ", state=" + state + ", shopid=" + shopid
				+ ", shop=" + shop + ", userid=" + userid + ", users=" + users + "]";
	}
	
}
