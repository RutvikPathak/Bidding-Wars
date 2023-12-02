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
@Table(name = "user_table")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "UserTable.findAll", query = "SELECT u FROM UserTable u"),
    @NamedQuery(name = "UserTable.findByUserID", query = "SELECT u FROM UserTable u WHERE u.userID = :userID"),
    @NamedQuery(name = "UserTable.findByUserFirstName", query = "SELECT u FROM UserTable u WHERE u.userFirstName = :userFirstName"),
    @NamedQuery(name = "UserTable.findByUserLastName", query = "SELECT u FROM UserTable u WHERE u.userLastName = :userLastName"),
    @NamedQuery(name = "UserTable.findByUserAddress", query = "SELECT u FROM UserTable u WHERE u.userAddress = :userAddress"),
    @NamedQuery(name = "UserTable.findByUserContact", query = "SELECT u FROM UserTable u WHERE u.userContact = :userContact"),
    @NamedQuery(name = "UserTable.findByUserProfilePic", query = "SELECT u FROM UserTable u WHERE u.userProfilePic = :userProfilePic")})
public class UserTable implements Serializable {
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "feedbackUserID")
    private Collection<FeedbackTable> feedbackTableCollection;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "participantUserID")
    private Collection<AuctionParticipantTable> auctionParticipantTableCollection;
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "User_ID")
    private Integer userID;
    @Basic(optional = false)
    @Column(name = "User_FirstName")
    private String userFirstName;
    @Basic(optional = false)
    @Column(name = "User_LastName")
    private String userLastName;
    @Basic(optional = false)
    @Column(name = "User_Address")
    private String userAddress;
    @Basic(optional = false)
    @Column(name = "User_Contact")
    private String userContact;
    @Column(name = "User_ProfilePic")
    private String userProfilePic;
    @JoinColumn(name = "User_LoginID", referencedColumnName = "Login_ID")
    @ManyToOne(optional = false)
    private LoginTable userLoginID;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "userID")
    private Collection<ProductTable> productTableCollection;

    public UserTable() {
    }

    public UserTable(Integer userID) {
        this.userID = userID;
    }

    public UserTable(Integer userID, String userFirstName, String userLastName, String userAddress, String userContact) {
        this.userID = userID;
        this.userFirstName = userFirstName;
        this.userLastName = userLastName;
        this.userAddress = userAddress;
        this.userContact = userContact;
    }

    public Integer getUserID() {
        return userID;
    }

    public void setUserID(Integer userID) {
        this.userID = userID;
    }

    public String getUserFirstName() {
        return userFirstName;
    }

    public void setUserFirstName(String userFirstName) {
        this.userFirstName = userFirstName;
    }

    public String getUserLastName() {
        return userLastName;
    }

    public void setUserLastName(String userLastName) {
        this.userLastName = userLastName;
    }

    public String getUserAddress() {
        return userAddress;
    }

    public void setUserAddress(String userAddress) {
        this.userAddress = userAddress;
    }

    public String getUserContact() {
        return userContact;
    }

    public void setUserContact(String userContact) {
        this.userContact = userContact;
    }

    public String getUserProfilePic() {
        return userProfilePic;
    }

    public void setUserProfilePic(String userProfilePic) {
        this.userProfilePic = userProfilePic;
    }

    public LoginTable getUserLoginID() {
        return userLoginID;
    }

    public void setUserLoginID(LoginTable userLoginID) {
        this.userLoginID = userLoginID;
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
        hash += (userID != null ? userID.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof UserTable)) {
            return false;
        }
        UserTable other = (UserTable) object;
        if ((this.userID == null && other.userID != null) || (this.userID != null && !this.userID.equals(other.userID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Model.UserTable[ userID=" + userID + " ]";
    }

    @XmlTransient
    public Collection<AuctionParticipantTable> getAuctionParticipantTableCollection() {
        return auctionParticipantTableCollection;
    }

    public void setAuctionParticipantTableCollection(Collection<AuctionParticipantTable> auctionParticipantTableCollection) {
        this.auctionParticipantTableCollection = auctionParticipantTableCollection;
    }

    @XmlTransient
    public Collection<FeedbackTable> getFeedbackTableCollection() {
        return feedbackTableCollection;
    }

    public void setFeedbackTableCollection(Collection<FeedbackTable> feedbackTableCollection) {
        this.feedbackTableCollection = feedbackTableCollection;
    }
    
}
