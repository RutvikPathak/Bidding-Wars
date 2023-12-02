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
@Table(name = "auction_participant_table")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "AuctionParticipantTable.findAll", query = "SELECT a FROM AuctionParticipantTable a"),
    @NamedQuery(name = "AuctionParticipantTable.findByAuctionParticipantID", query = "SELECT a FROM AuctionParticipantTable a WHERE a.auctionParticipantID = :auctionParticipantID"),
    @NamedQuery(name = "AuctionParticipantTable.findByPrice", query = "SELECT a FROM AuctionParticipantTable a WHERE a.price = :price"),
    @NamedQuery(name = "AuctionParticipantTable.findByBidTime", query = "SELECT a FROM AuctionParticipantTable a WHERE a.bidTime = :bidTime")})
public class AuctionParticipantTable implements Serializable {
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "auctionParticipantID")
    private Collection<AuctionWinnerTable> auctionWinnerTableCollection;
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "Auction_Participant_ID")
    private Integer auctionParticipantID;
    @Basic(optional = false)
    @Column(name = "Price")
    private int price;
    @Basic(optional = false)
    @Column(name = "BidTime")
    private String bidTime;
    @JoinColumn(name = "Auction_ID", referencedColumnName = "Auction_ID")
    @ManyToOne(optional = false)
    private AuctionTable auctionID;
    @JoinColumn(name = "Participant_UserID", referencedColumnName = "User_ID")
    @ManyToOne(optional = false)
    private UserTable participantUserID;

    public AuctionParticipantTable() {
    }

    public AuctionParticipantTable(Integer auctionParticipantID) {
        this.auctionParticipantID = auctionParticipantID;
    }

    public AuctionParticipantTable(Integer auctionParticipantID, int price, String bidTime) {
        this.auctionParticipantID = auctionParticipantID;
        this.price = price;
        this.bidTime = bidTime;
    }

    public Integer getAuctionParticipantID() {
        return auctionParticipantID;
    }

    public void setAuctionParticipantID(Integer auctionParticipantID) {
        this.auctionParticipantID = auctionParticipantID;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getBidTime() {
        return bidTime;
    }

    public void setBidTime(String bidTime) {
        this.bidTime = bidTime;
    }

    public AuctionTable getAuctionID() {
        return auctionID;
    }

    public void setAuctionID(AuctionTable auctionID) {
        this.auctionID = auctionID;
    }

    public UserTable getParticipantUserID() {
        return participantUserID;
    }

    public void setParticipantUserID(UserTable participantUserID) {
        this.participantUserID = participantUserID;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (auctionParticipantID != null ? auctionParticipantID.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof AuctionParticipantTable)) {
            return false;
        }
        AuctionParticipantTable other = (AuctionParticipantTable) object;
        if ((this.auctionParticipantID == null && other.auctionParticipantID != null) || (this.auctionParticipantID != null && !this.auctionParticipantID.equals(other.auctionParticipantID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Model.AuctionParticipantTable[ auctionParticipantID=" + auctionParticipantID + " ]";
    }

    @XmlTransient
    public Collection<AuctionWinnerTable> getAuctionWinnerTableCollection() {
        return auctionWinnerTableCollection;
    }

    public void setAuctionWinnerTableCollection(Collection<AuctionWinnerTable> auctionWinnerTableCollection) {
        this.auctionWinnerTableCollection = auctionWinnerTableCollection;
    }
    
}
