package bean;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="entry")
public class entry {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer entryId;
	private String sendName;
	private String sendAddress;
	private String tel;
	private Date sendTime;
	private Integer sendCount;
	//Íâ¼ü
	private Integer orderid;
	@ManyToOne
	@JoinColumn(name="orderid",insertable=false,updatable=false)
	private order order;
	public Integer getEntryId() {
		return entryId;
	}
	public void setEntryId(Integer entryId) {
		this.entryId = entryId;
	}
	public String getSendName() {
		return sendName;
	}
	public void setSendName(String sendName) {
		this.sendName = sendName;
	}
	public String getSendAddress() {
		return sendAddress;
	}
	public void setSendAddress(String sendAddress) {
		this.sendAddress = sendAddress;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public Date getSendTime() {
		return sendTime;
	}
	public void setSendTime(Date sendTime) {
		this.sendTime = sendTime;
	}
	public Integer getSendCount() {
		return sendCount;
	}
	public void setSendCount(Integer sendCount) {
		this.sendCount = sendCount;
	}
	public Integer getOrderid() {
		return orderid;
	}
	public void setOrderid(Integer orderid) {
		this.orderid = orderid;
	}
	public order getOrder() {
		return order;
	}
	public void setOrder(order order) {
		this.order = order;
	}
	@Override
	public String toString() {
		return "entry [entryId=" + entryId + ", sendName=" + sendName + ", sendAddress=" + sendAddress + ", tel=" + tel
				+ ", sendTime=" + sendTime + ", sendCount=" + sendCount + ", orderid=" + orderid + ", order=" + order
				+ "]";
	}
	
}
