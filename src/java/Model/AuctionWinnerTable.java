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
@Table(name = "auction_winner_table")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "AuctionWinnerTable.findAll", query = "SELECT a FROM AuctionWinnerTable a"),
    @NamedQuery(name = "AuctionWinnerTable.findByAuctionWinnerID", query = "SELECT a FROM AuctionWinnerTable a WHERE a.auctionWinnerID = :auctionWinnerID"),
    @NamedQuery(name = "AuctionWinnerTable.findByAuctionPurchaseDate", query = "SELECT a FROM AuctionWinnerTable a WHERE a.auctionPurchaseDate = :auctionPurchaseDate")})
public class AuctionWinnerTable implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "Auction_Winner_ID")
    private Integer auctionWinnerID;
    @Basic(optional = false)
    @Column(name = "Auction_Purchase_Date")
    private String auctionPurchaseDate;
    @JoinColumn(name = "Auction_ParticipantID", referencedColumnName = "Auction_Participant_ID")
    @ManyToOne(optional = false)
    private AuctionParticipantTable auctionParticipantID;

    public AuctionWinnerTable() {
    }

    public AuctionWinnerTable(Integer auctionWinnerID) {
        this.auctionWinnerID = auctionWinnerID;
    }

    public AuctionWinnerTable(Integer auctionWinnerID, String auctionPurchaseDate) {
        this.auctionWinnerID = auctionWinnerID;
        this.auctionPurchaseDate = auctionPurchaseDate;
    }

    public Integer getAuctionWinnerID() {
        return auctionWinnerID;
    }

    public void setAuctionWinnerID(Integer auctionWinnerID) {
        this.auctionWinnerID = auctionWinnerID;
    }

    public String getAuctionPurchaseDate() {
        return auctionPurchaseDate;
    }

    public void setAuctionPurchaseDate(String auctionPurchaseDate) {
        this.auctionPurchaseDate = auctionPurchaseDate;
    }

    public AuctionParticipantTable getAuctionParticipantID() {
        return auctionParticipantID;
    }

    public void setAuctionParticipantID(AuctionParticipantTable auctionParticipantID) {
        this.auctionParticipantID = auctionParticipantID;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (auctionWinnerID != null ? auctionWinnerID.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof AuctionWinnerTable)) {
            return false;
        }
        AuctionWinnerTable other = (AuctionWinnerTable) object;
        if ((this.auctionWinnerID == null && other.auctionWinnerID != null) || (this.auctionWinnerID != null && !this.auctionWinnerID.equals(other.auctionWinnerID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Model.AuctionWinnerTable[ auctionWinnerID=" + auctionWinnerID + " ]";
    }
    
}
