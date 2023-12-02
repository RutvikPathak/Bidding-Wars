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
@Table(name = "category_table")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "CategoryTable.findAll", query = "SELECT c FROM CategoryTable c"),
    @NamedQuery(name = "CategoryTable.findByCategoryID", query = "SELECT c FROM CategoryTable c WHERE c.categoryID = :categoryID"),
    @NamedQuery(name = "CategoryTable.findByCategoryName", query = "SELECT c FROM CategoryTable c WHERE c.categoryName = :categoryName")})
public class CategoryTable implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "Category_ID")
    private Integer categoryID;
    @Basic(optional = false)
    @Column(name = "Category_Name")
    private String categoryName;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "categoryID")
    private Collection<SubCategory> subCategoryCollection;
    @OneToMany(mappedBy = "categoryID")
    private Collection<ProductTable> productTableCollection;

    public CategoryTable() {
    }

    public CategoryTable(Integer categoryID) {
        this.categoryID = categoryID;
    }

    public CategoryTable(Integer categoryID, String categoryName) {
        this.categoryID = categoryID;
        this.categoryName = categoryName;
    }

    public Integer getCategoryID() {
        return categoryID;
    }

    public void setCategoryID(Integer categoryID) {
        this.categoryID = categoryID;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    @XmlTransient
    public Collection<SubCategory> getSubCategoryCollection() {
        return subCategoryCollection;
    }

    public void setSubCategoryCollection(Collection<SubCategory> subCategoryCollection) {
        this.subCategoryCollection = subCategoryCollection;
    }

    @XmlTransient
    public Collection<ProductTable> getProductTableCollection() {
        return productTableCollection;
    }

    public void setProductTableCollection(Collection<ProductTable> productTableCollection) {
        this.productTableCollection = productTableCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (categoryID != null ? categoryID.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof CategoryTable)) {
            return false;
        }
        CategoryTable other = (CategoryTable) object;
        if ((this.categoryID == null && other.categoryID != null) || (this.categoryID != null && !this.categoryID.equals(other.categoryID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Model.CategoryTable[ categoryID=" + categoryID + " ]";
    }
    
}
