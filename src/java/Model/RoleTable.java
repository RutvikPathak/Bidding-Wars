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
@Table(name = "role_table")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "RoleTable.findAll", query = "SELECT r FROM RoleTable r"),
    @NamedQuery(name = "RoleTable.findByRoleID", query = "SELECT r FROM RoleTable r WHERE r.roleID = :roleID"),
    @NamedQuery(name = "RoleTable.findByRoleName", query = "SELECT r FROM RoleTable r WHERE r.roleName = :roleName")})
public class RoleTable implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "Role_ID")
    private Integer roleID;
    @Basic(optional = false)
    @Column(name = "Role_Name")
    private String roleName;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "roleID")
    private Collection<LoginTable> loginTableCollection;

    public RoleTable() {
    }

    public RoleTable(Integer roleID) {
        this.roleID = roleID;
    }

    public RoleTable(Integer roleID, String roleName) {
        this.roleID = roleID;
        this.roleName = roleName;
    }

    public Integer getRoleID() {
        return roleID;
    }

    public void setRoleID(Integer roleID) {
        this.roleID = roleID;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    @XmlTransient
    public Collection<LoginTable> getLoginTableCollection() {
        return loginTableCollection;
    }

    public void setLoginTableCollection(Collection<LoginTable> loginTableCollection) {
        this.loginTableCollection = loginTableCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (roleID != null ? roleID.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof RoleTable)) {
            return false;
        }
        RoleTable other = (RoleTable) object;
        if ((this.roleID == null && other.roleID != null) || (this.roleID != null && !this.roleID.equals(other.roleID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Model.RoleTable[ roleID=" + roleID + " ]";
    }
    
}
