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
@Table(name = "sub_category")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "SubCategory.findAll", query = "SELECT s FROM SubCategory s"),
    @NamedQuery(name = "SubCategory.findBySubCategoryID", query = "SELECT s FROM SubCategory s WHERE s.subCategoryID = :subCategoryID"),
    @NamedQuery(name = "SubCategory.findBySubCategoryName", query = "SELECT s FROM SubCategory s WHERE s.subCategoryName = :subCategoryName")})
public class SubCategory implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "SubCategory_ID")
    private Integer subCategoryID;
    @Basic(optional = false)
    @Column(name = "SubCategory_Name")
    private String subCategoryName;
    @JoinColumn(name = "Category_ID", referencedColumnName = "Category_ID")
    @ManyToOne(optional = false)
    private CategoryTable categoryID;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "subCategoryID")
    private Collection<ProductTable> productTableCollection;

    public SubCategory() {
    }

    public SubCategory(Integer subCategoryID) {
        this.subCategoryID = subCategoryID;
    }

    public SubCategory(Integer subCategoryID, String subCategoryName) {
        this.subCategoryID = subCategoryID;
        this.subCategoryName = subCategoryName;
    }

    public Integer getSubCategoryID() {
        return subCategoryID;
    }

    public void setSubCategoryID(Integer subCategoryID) {
        this.subCategoryID = subCategoryID;
    }

    public String getSubCategoryName() {
        return subCategoryName;
    }

    public void setSubCategoryName(String subCategoryName) {
        this.subCategoryName = subCategoryName;
    }

    public CategoryTable getCategoryID() {
        return categoryID;
    }

    public void setCategoryID(CategoryTable categoryID) {
        this.categoryID = categoryID;
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
        hash += (subCategoryID != null ? subCategoryID.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof SubCategory)) {
            return false;
        }
        SubCategory other = (SubCategory) object;
        if ((this.subCategoryID == null && other.subCategoryID != null) || (this.subCategoryID != null && !this.subCategoryID.equals(other.subCategoryID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Model.SubCategory[ subCategoryID=" + subCategoryID + " ]";
    }
    
}
