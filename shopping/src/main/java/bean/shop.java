package bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Entity
@Table(name="shop")
public class shop {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer shopId;
	private String shopName;
	private String shopImg;
	private Float price;
	private Float sole;
	private String quality;// 保质期
	private String vender;//厂家
	private String collection;//收藏
	private Integer num;//数量
	//private String brand;//品牌
	private String MBRAM;//运行内存
	private String ROM;//存储内存
	private String CPU;//中央处理器
	private String os;//操作系统版本
	private String resolution;//分辨率
	private String mweight;//机身重量

	//外键
	private Integer sortid;
	@ManyToOne
	@JoinColumn(name="sortid",insertable=false,updatable=false)
	private sort sort;
	public Integer getShopId() {
		return shopId;
	}
	public void setShopId(Integer shopId) {
		this.shopId = shopId;
	}
	public String getShopName() {
		return shopName;
	}
	public void setShopName(String shopName) {
		this.shopName = shopName;
	}
	public String getShopImg() {
		return shopImg;
	}
	public void setShopImg(String shopImg) {
		this.shopImg = shopImg;
	}
	public Float getPrice() {
		return price;
	}
	public void setPrice(Float price) {
		this.price = price;
	}
	public Float getSole() {
		return sole;
	}
	public void setSole(Float sole) {
		this.sole = sole;
	}
	public String getQuality() {
		return quality;
	}
	public void setQuality(String quality) {
		this.quality = quality;
	}
	public String getVender() {
		return vender;
	}
	public void setVender(String vender) {
		this.vender = vender;
	}
	public String getCollection() {
		return collection;
	}
	public void setCollection(String collection) {
		this.collection = collection;
	}
	public Integer getNum() {
		return num;
	}
	public void setNum(Integer num) {
		this.num = num;
	}
	public Integer getSortid() {
		return sortid;
	}
	public void setSortid(Integer sortid) {
		this.sortid = sortid;
	}
	public sort getSort() {
		return sort;
	}
	public void setSort(sort sort) {
		this.sort = sort;
	}
/*	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}*/
	public String getMBRAM() {
		return MBRAM;
	}
	public void setMBRAM(String mBRAM) {
		MBRAM = mBRAM;
	}
	public String getROM() {
		return ROM;
	}
	public void setROM(String rOM) {
		ROM = rOM;
	}
	public String getCPU() {
		return CPU;
	}
	public void setCPU(String cPU) {
		CPU = cPU;
	}
	public String getOs() {
		return os;
	}
	public void setOs(String os) {
		this.os = os;
	}
	public String getResolution() {
		return resolution;
	}
	public void setResolution(String resolution) {
		this.resolution = resolution;
	}
	public String getMweight() {
		return mweight;
	}
	public void setMweight(String mweight) {
		this.mweight = mweight;
	}
	@Override
	public String toString() {
		return "shop [shopId=" + shopId + ", shopName=" + shopName + ", shopImg=" + shopImg + ", price=" + price
				+ ", sole=" + sole + ", quality=" + quality + ", vender=" + vender + ", collection=" + collection
				+ ", num=" + num + ", MBRAM=" + MBRAM + ", ROM=" + ROM + ", CPU=" + CPU + ", os="
				+ os + ", resolution=" + resolution + ", mweight=" + mweight + ", sortid=" + sortid + ", sort=" + sort
				+ "]";
	}
	
}
