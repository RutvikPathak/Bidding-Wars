/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Rutvik
 */
@Entity
@Table(name = "product_table")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "ProductTable.findAll", query = "SELECT p FROM ProductTable p"),
    @NamedQuery(name = "ProductTable.findByProductID", query = "SELECT p FROM ProductTable p WHERE p.productID = :productID"),
    @NamedQuery(name = "ProductTable.findByProductName", query = "SELECT p FROM ProductTable p WHERE p.productName = :productName"),
    @NamedQuery(name = "ProductTable.findByProductDetail", query = "SELECT p FROM ProductTable p WHERE p.productDetail = :productDetail"),
    @NamedQuery(name = "ProductTable.findByProductPrice", query = "SELECT p FROM ProductTable p WHERE p.productPrice = :productPrice"),
    @NamedQuery(name = "ProductTable.findByProductStatus", query = "SELECT p FROM ProductTable p WHERE p.productStatus = :productStatus")})
public class ProductTable implements Serializable {
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "productAuctionID")
    private Collection<AuctionTable> auctionTableCollection;
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "Product_ID")
    private Integer productID;
    @Basic(optional = false)
    @Column(name = "Product_Name")
    private String productName;
    @Basic(optional = false)
    @Column(name = "Product_Detail")
    private String productDetail;
    @Basic(optional = false)
    @Column(name = "Product_Price")
    private int productPrice;
    @Column(name = "Product_Status")
    private String productStatus;
    @JoinColumn(name = "Category_ID", referencedColumnName = "Category_ID")
    @ManyToOne
    private CategoryTable categoryID;
    @JoinColumn(name = "SubCategory_ID", referencedColumnName = "SubCategory_ID")
    @ManyToOne(optional = false)
    private SubCategory subCategoryID;
    @JoinColumn(name = "User_ID", referencedColumnName = "User_ID")
    @ManyToOne(optional = false)
    private UserTable userID;

    public ProductTable() {
    }

    public ProductTable(Integer productID) {
        this.productID = productID;
    }

    public ProductTable(Integer productID, String productName, String productDetail, int productPrice) {
        this.productID = productID;
        this.productName = productName;
        this.productDetail = productDetail;
        this.productPrice = productPrice;
    }

    public Integer getProductID() {
        return productID;
    }

    public void setProductID(Integer productID) {
        this.productID = productID;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getProductDetail() {
        return productDetail;
    }

    public void setProductDetail(String productDetail) {
        this.productDetail = productDetail;
    }

    public int getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(int productPrice) {
        this.productPrice = productPrice;
    }

    public String getProductStatus() {
        return productStatus;
    }

    public void setProductStatus(String productStatus) {
        this.productStatus = productStatus;
    }

    public CategoryTable getCategoryID() {
        return categoryID;
    }

    public void setCategoryID(CategoryTable categoryID) {
        this.categoryID = categoryID;
    }

    public SubCategory getSubCategoryID() {
        return subCategoryID;
    }

    public void setSubCategoryID(SubCategory subCategoryID) {
        this.subCategoryID = subCategoryID;
    }

    public UserTable getUserID() {
        return userID;
    }

    public void setUserID(UserTable userID) {
        this.userID = userID;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (productID != null ? productID.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof ProductTable)) {
            return false;
        }
        ProductTable other = (ProductTable) object;
        if ((this.productID == null && other.productID != null) || (this.productID != null && !this.productID.equals(other.productID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Model.ProductTable[ productID=" + productID + " ]";
    }

    @XmlTransient
    public Collection<AuctionTable> getAuctionTableCollection() {
        return auctionTableCollection;
    }

    public void setAuctionTableCollection(Collection<AuctionTable> auctionTableCollection) {
        this.auctionTableCollection = auctionTableCollection;
    }
    
}
