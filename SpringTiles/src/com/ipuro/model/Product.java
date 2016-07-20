package com.ipuro.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table (name = "product")
public class Product implements Serializable {
	@Id
	@GeneratedValue
	
    
    private int productid;	
    private String categoryname;  
    private String productname;	
    private String productprice;    
    private String userImage;
    private String quantity;
    private String description;    
    private String briefdisc;     
    @Column(name = "productid")
    public int getProductid() {
        return this.productid;
    }

    public void setProductid(int productid) {
        this.productid = productid;
    }
    
    @Column(name = "categoryname")
    public String getCategoryname() {
		return categoryname;
	}

	public void setCategoryname(String categoryname) {
		this.categoryname = categoryname;
	}

	@Column(name = "productname")
    public String getProductname() {
        return this.productname;
    }

    public void setProductname(String productname) {
        this.productname = productname;
    }
    
    @Column(name = "productprice")
    public String getProductprice() {
        return this.productprice;
    }

    public void setProductprice(String productprice)
    {
        this.productprice = productprice;
    }    
    @Column(name = "userImage")
    public String getUserImage() {
		return userImage;
	}

	public void setUserImage(String userImage) {
		this.userImage = userImage;
	}
    
//    public String getImagename() {
//        return this.imagename;
//    }
//
//    public void setImagename(String imagename) {
//        this.imagename = imagename;
//    }
    @Column(name = "quantity")
    public String getQuantity() {
        return this.quantity;
    }

	public void setQuantity(String quantity) {
        this.quantity = quantity;
    }
  
    @Column(name = "description")
    public String getDescription() {
        return this.description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
    
    @Column(name = "briefdisc")
    public String getBriefdisc() {
        return this.briefdisc;
    }
    public void setBriefdisc(String briefdisc) {
        this.briefdisc = briefdisc;
    }   
}
