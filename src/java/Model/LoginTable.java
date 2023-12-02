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
@Table(name = "login_table")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "LoginTable.findAll", query = "SELECT l FROM LoginTable l"),
    @NamedQuery(name = "LoginTable.findByLoginID", query = "SELECT l FROM LoginTable l WHERE l.loginID = :loginID"),
    @NamedQuery(name = "LoginTable.findByEmailAddress", query = "SELECT l FROM LoginTable l WHERE l.emailAddress = :emailAddress"),
    @NamedQuery(name = "LoginTable.findByPassword", query = "SELECT l FROM LoginTable l WHERE l.password = :password")})
public class LoginTable implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "Login_ID")
    private Integer loginID;
    @Basic(optional = false)
    @Column(name = "Email_Address")
    private String emailAddress;
    @Basic(optional = false)
    @Column(name = "Password")
    private String password;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "userLoginID")
    private Collection<UserTable> userTableCollection;
    @JoinColumn(name = "Role_ID", referencedColumnName = "Role_ID")
    @ManyToOne(optional = false)
    private RoleTable roleID;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "adminLoginID")
    private Collection<AdminTable> adminTableCollection;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "deliveryBoyLoginID")
    private Collection<DeliveryBoyTable> deliveryBoyTableCollection;

    public LoginTable() {
    }

    public LoginTable(Integer loginID) {
        this.loginID = loginID;
    }

    public LoginTable(Integer loginID, String emailAddress, String password) {
        this.loginID = loginID;
        this.emailAddress = emailAddress;
        this.password = password;
    }

    public Integer getLoginID() {
        return loginID;
    }

    public void setLoginID(Integer loginID) {
        this.loginID = loginID;
    }

    public String getEmailAddress() {
        return emailAddress;
    }

    public void setEmailAddress(String emailAddress) {
        this.emailAddress = emailAddress;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @XmlTransient
    public Collection<UserTable> getUserTableCollection() {
        return userTableCollection;
    }

    public void setUserTableCollection(Collection<UserTable> userTableCollection) {
        this.userTableCollection = userTableCollection;
    }

    public RoleTable getRoleID() {
        return roleID;
    }

    public void setRoleID(RoleTable roleID) {
        this.roleID = roleID;
    }

    @XmlTransient
    public Collection<AdminTable> getAdminTableCollection() {
        return adminTableCollection;
    }

    public void setAdminTableCollection(Collection<AdminTable> adminTableCollection) {
        this.adminTableCollection = adminTableCollection;
    }

    @XmlTransient
    public Collection<DeliveryBoyTable> getDeliveryBoyTableCollection() {
        return deliveryBoyTableCollection;
    }

    public void setDeliveryBoyTableCollection(Collection<DeliveryBoyTable> deliveryBoyTableCollection) {
        this.deliveryBoyTableCollection = deliveryBoyTableCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (loginID != null ? loginID.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof LoginTable)) {
            return false;
        }
        LoginTable other = (LoginTable) object;
        if ((this.loginID == null && other.loginID != null) || (this.loginID != null && !this.loginID.equals(other.loginID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Model.LoginTable[ loginID=" + loginID + " ]";
    }
    
}
