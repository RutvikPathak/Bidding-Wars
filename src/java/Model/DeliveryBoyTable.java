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
@Table(name = "delivery_boy_table")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "DeliveryBoyTable.findAll", query = "SELECT d FROM DeliveryBoyTable d"),
    @NamedQuery(name = "DeliveryBoyTable.findByDeliveryBoyID", query = "SELECT d FROM DeliveryBoyTable d WHERE d.deliveryBoyID = :deliveryBoyID"),
    @NamedQuery(name = "DeliveryBoyTable.findByDeliveryBoyFirstName", query = "SELECT d FROM DeliveryBoyTable d WHERE d.deliveryBoyFirstName = :deliveryBoyFirstName"),
    @NamedQuery(name = "DeliveryBoyTable.findByDeliveryBoyLastName", query = "SELECT d FROM DeliveryBoyTable d WHERE d.deliveryBoyLastName = :deliveryBoyLastName"),
    @NamedQuery(name = "DeliveryBoyTable.findByDeliveryBoyAddress", query = "SELECT d FROM DeliveryBoyTable d WHERE d.deliveryBoyAddress = :deliveryBoyAddress"),
    @NamedQuery(name = "DeliveryBoyTable.findByDeliveryBoyContact", query = "SELECT d FROM DeliveryBoyTable d WHERE d.deliveryBoyContact = :deliveryBoyContact"),
    @NamedQuery(name = "DeliveryBoyTable.findByDeliveryboyProfilePic", query = "SELECT d FROM DeliveryBoyTable d WHERE d.deliveryboyProfilePic = :deliveryboyProfilePic")})
public class DeliveryBoyTable implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "DeliveryBoy_ID")
    private Integer deliveryBoyID;
    @Basic(optional = false)
    @Column(name = "DeliveryBoy_FirstName")
    private String deliveryBoyFirstName;
    @Basic(optional = false)
    @Column(name = "DeliveryBoy_LastName")
    private String deliveryBoyLastName;
    @Basic(optional = false)
    @Column(name = "DeliveryBoy_Address")
    private String deliveryBoyAddress;
    @Basic(optional = false)
    @Column(name = "DeliveryBoy_Contact")
    private String deliveryBoyContact;
    @Column(name = "delivery_boy_ProfilePic")
    private String deliveryboyProfilePic;
    @JoinColumn(name = "DeliveryBoy_LoginID", referencedColumnName = "Login_ID")
    @ManyToOne(optional = false)
    private LoginTable deliveryBoyLoginID;

    public DeliveryBoyTable() {
    }

    public DeliveryBoyTable(Integer deliveryBoyID) {
        this.deliveryBoyID = deliveryBoyID;
    }

    public DeliveryBoyTable(Integer deliveryBoyID, String deliveryBoyFirstName, String deliveryBoyLastName, String deliveryBoyAddress, String deliveryBoyContact) {
        this.deliveryBoyID = deliveryBoyID;
        this.deliveryBoyFirstName = deliveryBoyFirstName;
        this.deliveryBoyLastName = deliveryBoyLastName;
        this.deliveryBoyAddress = deliveryBoyAddress;
        this.deliveryBoyContact = deliveryBoyContact;
    }

    public Integer getDeliveryBoyID() {
        return deliveryBoyID;
    }

    public void setDeliveryBoyID(Integer deliveryBoyID) {
        this.deliveryBoyID = deliveryBoyID;
    }

    public String getDeliveryBoyFirstName() {
        return deliveryBoyFirstName;
    }

    public void setDeliveryBoyFirstName(String deliveryBoyFirstName) {
        this.deliveryBoyFirstName = deliveryBoyFirstName;
    }

    public String getDeliveryBoyLastName() {
        return deliveryBoyLastName;
    }

    public void setDeliveryBoyLastName(String deliveryBoyLastName) {
        this.deliveryBoyLastName = deliveryBoyLastName;
    }

    public String getDeliveryBoyAddress() {
        return deliveryBoyAddress;
    }

    public void setDeliveryBoyAddress(String deliveryBoyAddress) {
        this.deliveryBoyAddress = deliveryBoyAddress;
    }

    public String getDeliveryBoyContact() {
        return deliveryBoyContact;
    }

    public void setDeliveryBoyContact(String deliveryBoyContact) {
        this.deliveryBoyContact = deliveryBoyContact;
    }

    public String getDeliveryboyProfilePic() {
        return deliveryboyProfilePic;
    }

    public void setDeliveryboyProfilePic(String deliveryboyProfilePic) {
        this.deliveryboyProfilePic = deliveryboyProfilePic;
    }

    public LoginTable getDeliveryBoyLoginID() {
        return deliveryBoyLoginID;
    }

    public void setDeliveryBoyLoginID(LoginTable deliveryBoyLoginID) {
        this.deliveryBoyLoginID = deliveryBoyLoginID;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (deliveryBoyID != null ? deliveryBoyID.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof DeliveryBoyTable)) {
            return false;
        }
        DeliveryBoyTable other = (DeliveryBoyTable) object;
        if ((this.deliveryBoyID == null && other.deliveryBoyID != null) || (this.deliveryBoyID != null && !this.deliveryBoyID.equals(other.deliveryBoyID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Model.DeliveryBoyTable[ deliveryBoyID=" + deliveryBoyID + " ]";
    }
    
}
