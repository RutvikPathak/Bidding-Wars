/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Rutvik
 */
@Entity
@Table(name = "graphic_table")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "GraphicTable.findAll", query = "SELECT g FROM GraphicTable g"),
    @NamedQuery(name = "GraphicTable.findByGraphicID", query = "SELECT g FROM GraphicTable g WHERE g.graphicID = :graphicID"),
    @NamedQuery(name = "GraphicTable.findByImagePath", query = "SELECT g FROM GraphicTable g WHERE g.imagePath = :imagePath")})
public class GraphicTable implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "Graphic_ID")
    private Integer graphicID;
    @Basic(optional = false)
    @Column(name = "Image_Path")
    private String imagePath;
    @JoinColumn(name = "Product_ID", referencedColumnName = "Product_ID")
    @ManyToOne(optional = false)
    private ProductTable productID;

    public GraphicTable() {
    }

    public GraphicTable(Integer graphicID) {
        this.graphicID = graphicID;
    }

    public GraphicTable(Integer graphicID, String imagePath) {
        this.graphicID = graphicID;
        this.imagePath = imagePath;
    }

    public Integer getGraphicID() {
        return graphicID;
    }

    public void setGraphicID(Integer graphicID) {
        this.graphicID = graphicID;
    }

    public String getImagePath() {
        return imagePath;
    }

    public void setImagePath(String imagePath) {
        this.imagePath = imagePath;
    }

    public ProductTable getProductID() {
        return productID;
    }

    public void setProductID(ProductTable productID) {
        this.productID = productID;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (graphicID != null ? graphicID.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof GraphicTable)) {
            return false;
        }
        GraphicTable other = (GraphicTable) object;
        if ((this.graphicID == null && other.graphicID != null) || (this.graphicID != null && !this.graphicID.equals(other.graphicID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Model.GraphicTable[ graphicID=" + graphicID + " ]";
    }
    
}
