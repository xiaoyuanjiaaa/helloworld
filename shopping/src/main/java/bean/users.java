package bean;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name="users")//用户表
public class users {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int 	userId;
	private String	username;
	private String	password;
	private String userImg;//头像	
	private String userRank;//等级
	
	@OneToMany(cascade=CascadeType.ALL,mappedBy="users",fetch=FetchType.LAZY)
	@JsonIgnore
	private Set<address> addresses=new HashSet<address>();
	
	@OneToMany(cascade=CascadeType.ALL,mappedBy="users",fetch=FetchType.LAZY)
	@JsonIgnore
	private Set<order> orders=new HashSet<order>();
	
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUserImg() {
		return userImg;
	}
	public void setUserImg(String userImg) {
		this.userImg = userImg;
	}
	public String getUserRank() {
		return userRank;
	}
	public void setUserRank(String userRank) {
		this.userRank = userRank;
	}
	@Override
	public String toString() {
		return "users [userId=" + userId + ", username=" + username + ", password=" + password + ", userImg=" + userImg
				+ ", userRank=" + userRank + "]";
	}
	
}
