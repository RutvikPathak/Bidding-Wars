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
@Table(name = "auction_table")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "AuctionTable.findAll", query = "SELECT a FROM AuctionTable a"),
    @NamedQuery(name = "AuctionTable.findByAuctionID", query = "SELECT a FROM AuctionTable a WHERE a.auctionID = :auctionID"),
    @NamedQuery(name = "AuctionTable.findByAuctionStartDateTime", query = "SELECT a FROM AuctionTable a WHERE a.auctionStartDateTime = :auctionStartDateTime"),
    @NamedQuery(name = "AuctionTable.findByAuctionEndDateTime", query = "SELECT a FROM AuctionTable a WHERE a.auctionEndDateTime = :auctionEndDateTime")})
public class AuctionTable implements Serializable {
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "auctionID")
    private Collection<AuctionParticipantTable> auctionParticipantTableCollection;
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "Auction_ID")
    private Integer auctionID;
    @Basic(optional = false)
    @Column(name = "AuctionStartDateTime")
    private String auctionStartDateTime;
    @Basic(optional = false)
    @Column(name = "AuctionEndDateTime")
    private String auctionEndDateTime;
    @JoinColumn(name = "Product_AuctionID", referencedColumnName = "Product_ID")
    @ManyToOne(optional = false)
    private ProductTable productAuctionID;

    public AuctionTable() {
    }

    public AuctionTable(Integer auctionID) {
        this.auctionID = auctionID;
    }

    public AuctionTable(Integer auctionID, String auctionStartDateTime, String auctionEndDateTime) {
        this.auctionID = auctionID;
        this.auctionStartDateTime = auctionStartDateTime;
        this.auctionEndDateTime = auctionEndDateTime;
    }

    public Integer getAuctionID() {
        return auctionID;
    }

    public void setAuctionID(Integer auctionID) {
        this.auctionID = auctionID;
    }

    public String getAuctionStartDateTime() {
        return auctionStartDateTime;
    }

    public void setAuctionStartDateTime(String auctionStartDateTime) {
        this.auctionStartDateTime = auctionStartDateTime;
    }

    public String getAuctionEndDateTime() {
        return auctionEndDateTime;
    }

    public void setAuctionEndDateTime(String auctionEndDateTime) {
        this.auctionEndDateTime = auctionEndDateTime;
    }

    public ProductTable getProductAuctionID() {
        return productAuctionID;
    }

    public void setProductAuctionID(ProductTable productAuctionID) {
        this.productAuctionID = productAuctionID;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (auctionID != null ? auctionID.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof AuctionTable)) {
            return false;
        }
        AuctionTable other = (AuctionTable) object;
        if ((this.auctionID == null && other.auctionID != null) || (this.auctionID != null && !this.auctionID.equals(other.auctionID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Model.AuctionTable[ auctionID=" + auctionID + " ]";
    }

    @XmlTransient
    public Collection<AuctionParticipantTable> getAuctionParticipantTableCollection() {
        return auctionParticipantTableCollection;
    }

    public void setAuctionParticipantTableCollection(Collection<AuctionParticipantTable> auctionParticipantTableCollection) {
        this.auctionParticipantTableCollection = auctionParticipantTableCollection;
    }
    
}
