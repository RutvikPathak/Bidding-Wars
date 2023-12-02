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
@Table(name = "feedback_table")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "FeedbackTable.findAll", query = "SELECT f FROM FeedbackTable f"),
    @NamedQuery(name = "FeedbackTable.findByFeedbackID", query = "SELECT f FROM FeedbackTable f WHERE f.feedbackID = :feedbackID"),
    @NamedQuery(name = "FeedbackTable.findByFeedbackTitle", query = "SELECT f FROM FeedbackTable f WHERE f.feedbackTitle = :feedbackTitle"),
    @NamedQuery(name = "FeedbackTable.findByFeebackMessage", query = "SELECT f FROM FeedbackTable f WHERE f.feebackMessage = :feebackMessage"),
    @NamedQuery(name = "FeedbackTable.findByFeedbackEmail", query = "SELECT f FROM FeedbackTable f WHERE f.feedbackEmail = :feedbackEmail")})
public class FeedbackTable implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "Feedback_ID")
    private Integer feedbackID;
    @Basic(optional = false)
    @Column(name = "Feedback_Title")
    private String feedbackTitle;
    @Basic(optional = false)
    @Column(name = "Feeback_Message")
    private String feebackMessage;
    @Basic(optional = false)
    @Column(name = "Feedback_Email")
    private String feedbackEmail;
    @JoinColumn(name = "FeedbackUser_ID", referencedColumnName = "User_ID")
    @ManyToOne(optional = false)
    private UserTable feedbackUserID;

    public FeedbackTable() {
    }

    public FeedbackTable(Integer feedbackID) {
        this.feedbackID = feedbackID;
    }

    public FeedbackTable(Integer feedbackID, String feedbackTitle, String feebackMessage, String feedbackEmail) {
        this.feedbackID = feedbackID;
        this.feedbackTitle = feedbackTitle;
        this.feebackMessage = feebackMessage;
        this.feedbackEmail = feedbackEmail;
    }

    public Integer getFeedbackID() {
        return feedbackID;
    }

    public void setFeedbackID(Integer feedbackID) {
        this.feedbackID = feedbackID;
    }

    public String getFeedbackTitle() {
        return feedbackTitle;
    }

    public void setFeedbackTitle(String feedbackTitle) {
        this.feedbackTitle = feedbackTitle;
    }

    public String getFeebackMessage() {
        return feebackMessage;
    }

    public void setFeebackMessage(String feebackMessage) {
        this.feebackMessage = feebackMessage;
    }

    public String getFeedbackEmail() {
        return feedbackEmail;
    }

    public void setFeedbackEmail(String feedbackEmail) {
        this.feedbackEmail = feedbackEmail;
    }

    public UserTable getFeedbackUserID() {
        return feedbackUserID;
    }

    public void setFeedbackUserID(UserTable feedbackUserID) {
        this.feedbackUserID = feedbackUserID;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (feedbackID != null ? feedbackID.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof FeedbackTable)) {
            return false;
        }
        FeedbackTable other = (FeedbackTable) object;
        if ((this.feedbackID == null && other.feedbackID != null) || (this.feedbackID != null && !this.feedbackID.equals(other.feedbackID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Model.FeedbackTable[ feedbackID=" + feedbackID + " ]";
    }

    public void setFeedbackUserID(int userID) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
