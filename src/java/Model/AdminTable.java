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
@Table(name = "admin_table")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "AdminTable.findAll", query = "SELECT a FROM AdminTable a"),
    @NamedQuery(name = "AdminTable.findByAdminID", query = "SELECT a FROM AdminTable a WHERE a.adminID = :adminID"),
    @NamedQuery(name = "AdminTable.findByAdminLastName", query = "SELECT a FROM AdminTable a WHERE a.adminLastName = :adminLastName"),
    @NamedQuery(name = "AdminTable.findByAdminAddress", query = "SELECT a FROM AdminTable a WHERE a.adminAddress = :adminAddress"),
    @NamedQuery(name = "AdminTable.findByAdminContact", query = "SELECT a FROM AdminTable a WHERE a.adminContact = :adminContact"),
    @NamedQuery(name = "AdminTable.findByAdminProfilePic", query = "SELECT a FROM AdminTable a WHERE a.adminProfilePic = :adminProfilePic"),
    @NamedQuery(name = "AdminTable.findByAdminFirstName", query = "SELECT a FROM AdminTable a WHERE a.adminFirstName = :adminFirstName")})
public class AdminTable implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "Admin_ID")
    private Integer adminID;
    @Basic(optional = false)
    @Column(name = "Admin _LastName")
    private String adminLastName;
    @Basic(optional = false)
    @Column(name = "Admin _Address")
    private String adminAddress;
    @Basic(optional = false)
    @Column(name = "Admin _Contact")
    private String adminContact;
    @Basic(optional = false)
    @Column(name = "Admin _ProfilePic")
    private String adminProfilePic;
    @Basic(optional = false)
    @Column(name = "Admin_FirstName")
    private String adminFirstName;
    @JoinColumn(name = "Admin_LoginID", referencedColumnName = "Login_ID")
    @ManyToOne(optional = false)
    private LoginTable adminLoginID;

    public AdminTable() {
    }

    public AdminTable(Integer adminID) {
        this.adminID = adminID;
    }

    public AdminTable(Integer adminID, String adminLastName, String adminAddress, String adminContact, String adminProfilePic, String adminFirstName) {
        this.adminID = adminID;
        this.adminLastName = adminLastName;
        this.adminAddress = adminAddress;
        this.adminContact = adminContact;
        this.adminProfilePic = adminProfilePic;
        this.adminFirstName = adminFirstName;
    }

    public Integer getAdminID() {
        return adminID;
    }

    public void setAdminID(Integer adminID) {
        this.adminID = adminID;
    }

    public String getAdminLastName() {
        return adminLastName;
    }

    public void setAdminLastName(String adminLastName) {
        this.adminLastName = adminLastName;
    }

    public String getAdminAddress() {
        return adminAddress;
    }

    public void setAdminAddress(String adminAddress) {
        this.adminAddress = adminAddress;
    }

    public String getAdminContact() {
        return adminContact;
    }

    public void setAdminContact(String adminContact) {
        this.adminContact = adminContact;
    }

    public String getAdminProfilePic() {
        return adminProfilePic;
    }

    public void setAdminProfilePic(String adminProfilePic) {
        this.adminProfilePic = adminProfilePic;
    }

    public String getAdminFirstName() {
        return adminFirstName;
    }

    public void setAdminFirstName(String adminFirstName) {
        this.adminFirstName = adminFirstName;
    }

    public LoginTable getAdminLoginID() {
        return adminLoginID;
    }

    public void setAdminLoginID(LoginTable adminLoginID) {
        this.adminLoginID = adminLoginID;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (adminID != null ? adminID.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof AdminTable)) {
            return false;
        }
        AdminTable other = (AdminTable) object;
        if ((this.adminID == null && other.adminID != null) || (this.adminID != null && !this.adminID.equals(other.adminID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Model.AdminTable[ adminID=" + adminID + " ]";
    }
    
}
