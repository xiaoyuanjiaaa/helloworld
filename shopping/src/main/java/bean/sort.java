package bean;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name="sort")//商品类别表
public class sort {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer sortId;
	private String sortName;
	
	private Integer parentId;//父类id
	@ManyToOne
	@JoinColumn(name="parentId",insertable=false,updatable=false)
	private sort parent;
	
	@OneToMany(mappedBy="sort",cascade=CascadeType.ALL,fetch=FetchType.LAZY)
	@JsonIgnore
	private Set<shop> shops=new HashSet<shop>();
	public Integer getSortId() {
		return sortId;
	}
	public void setSortId(Integer sortId) {
		this.sortId = sortId;
	}
	public String getSortName() {
		return sortName;
	}
	public void setSortName(String sortName) {
		this.sortName = sortName;
	}
	public Integer getParentId() {
		return parentId;
	}
	public void setParentId(Integer parentId) {
		this.parentId = parentId;
	}
	public sort getParent() {
		return parent;
	}
	public void setParent(sort parent) {
		this.parent = parent;
	}
	@Override
	public String toString() {
		return "sort [sortId=" + sortId + ", sortName=" + sortName + ", parentId=" + parentId + ", parent=" + parent
				+ "]";
	}
	
}
