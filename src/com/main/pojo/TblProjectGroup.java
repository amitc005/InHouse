package com.main.pojo;
// Generated Dec 6, 2016 11:51:12 PM by Hibernate Tools 3.6.0

import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
 
@Entity
@Table(name = "tbl_project_group", catalog = "db_manager"
)
public class TblProjectGroup implements java.io.Serializable {

    private String txtId;
    private TblProject tblProject;
    private TblProjectInquiry tblProjectInquiry;
    private String txtDeptId;
    private String txtGroupCode;
    private Integer txtGropuMember;
    private String txtPassword;
    private Integer txtProjectAmt;
    private Integer txtPaidAmt;
    private Integer txtBalanceAmt;
    private String txtRemark;
    private Character txtIsDelete;
    private int txtSession;
    private Date txtEntryDate;
    private Character txtIsActive;
    private Set<TblStudent> tblStudents = new HashSet<TblStudent>(0);
    private Set<TblProjectStatus> tblProjectStatuses = new HashSet<TblProjectStatus>(0);
    private Set<TblProjectBug> tblProjectBugs = new HashSet<TblProjectBug>(0);
    private Set<TblGroupAccount> tblGroupAccounts = new HashSet<TblGroupAccount>(0);
    private Set<TblGroupSchedules> tblGroupScheduleses = new HashSet<TblGroupSchedules>(0);
    private Set<TblGroupTelecalling> tblGroupTelecallings = new HashSet<TblGroupTelecalling>(0);
    private Set<TblProjectUpdates> tblProjectUpdateses = new HashSet<TblProjectUpdates>(0);
    private Set<TblGroupQueries> tblGroupQuerieses = new HashSet<TblGroupQueries>(0);

    public TblProjectGroup() {
    }

    public TblProjectGroup(String txtId, TblProjectInquiry tblProjectInquiry, String txtDeptId, int txtSession, Date txtEntryDate) {
        this.txtId = txtId;
        this.tblProjectInquiry = tblProjectInquiry;
        this.txtDeptId = txtDeptId;
        this.txtSession = txtSession;
        this.txtEntryDate = txtEntryDate;
    }

    public TblProjectGroup(String txtId, TblProject tblProject, TblProjectInquiry tblProjectInquiry, String txtDeptId, String txtGroupCode, Integer txtGropuMember, String txtPassword, Integer txtProjectAmt, Integer txtPaidAmt, Integer txtBalanceAmt, String txtRemark, Character txtIsDelete, int txtSession, Date txtEntryDate, Character txtIsActive, Set<TblStudent> tblStudents, Set<TblProjectStatus> tblProjectStatuses, Set<TblProjectBug> tblProjectBugs, Set<TblGroupAccount> tblGroupAccounts, Set<TblGroupSchedules> tblGroupScheduleses, Set<TblGroupTelecalling> tblGroupTelecallings, Set<TblProjectUpdates> tblProjectUpdateses, Set<TblGroupQueries> tblGroupQuerieses) {
        this.txtId = txtId;
        this.tblProject = tblProject;
        this.tblProjectInquiry = tblProjectInquiry;
        this.txtDeptId = txtDeptId;
        this.txtGroupCode = txtGroupCode;
        this.txtGropuMember = txtGropuMember;
        this.txtPassword = txtPassword;
        this.txtProjectAmt = txtProjectAmt;
        this.txtPaidAmt = txtPaidAmt;
        this.txtBalanceAmt = txtBalanceAmt;
        this.txtRemark = txtRemark;
        this.txtIsDelete = txtIsDelete;
        this.txtSession = txtSession;
        this.txtEntryDate = txtEntryDate;
        this.txtIsActive = txtIsActive;
        this.tblStudents = tblStudents;
        this.tblProjectStatuses = tblProjectStatuses;
        this.tblProjectBugs = tblProjectBugs;
        this.tblGroupAccounts = tblGroupAccounts;
        this.tblGroupScheduleses = tblGroupScheduleses;
        this.tblGroupTelecallings = tblGroupTelecallings;
        this.tblProjectUpdateses = tblProjectUpdateses;
        this.tblGroupQuerieses = tblGroupQuerieses;
    }

    @Id
    @Column(name = "txtId", unique = true, nullable = false, length = 38)
    public String getTxtId() {
        return this.txtId;
    }

    public void setTxtId(String txtId) {
        this.txtId = txtId;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "txtProjectId")
    public TblProject getTblProject() {
        return this.tblProject;
    }

    public void setTblProject(TblProject tblProject) {
        this.tblProject = tblProject;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "txtInquiryId", nullable = false)
    public TblProjectInquiry getTblProjectInquiry() {
        return this.tblProjectInquiry;
    }

    public void setTblProjectInquiry(TblProjectInquiry tblProjectInquiry) {
        this.tblProjectInquiry = tblProjectInquiry;
    }

    @Column(name = "txtDeptId", nullable = false, length = 38)
    public String getTxtDeptId() {
        return this.txtDeptId;
    }

    public void setTxtDeptId(String txtDeptId) {
        this.txtDeptId = txtDeptId;
    }

    @Column(name = "txtGroupCode", length = 15)
    public String getTxtGroupCode() {
        return this.txtGroupCode;
    }

    public void setTxtGroupCode(String txtGroupCode) {
        this.txtGroupCode = txtGroupCode;
    }

    @Column(name = "txtGropuMember")
    public Integer getTxtGropuMember() {
        return this.txtGropuMember;
    }

    public void setTxtGropuMember(Integer txtGropuMember) {
        this.txtGropuMember = txtGropuMember;
    }

    @Column(name = "txtPassword", length = 20)
    public String getTxtPassword() {
        return this.txtPassword;
    }

    public void setTxtPassword(String txtPassword) {
        this.txtPassword = txtPassword;
    }

    @Column(name = "txtProjectAmt")
    public Integer getTxtProjectAmt() {
        return this.txtProjectAmt;
    }

    public void setTxtProjectAmt(Integer txtProjectAmt) {
        this.txtProjectAmt = txtProjectAmt;
    }

    @Column(name = "txtPaidAmt")
    public Integer getTxtPaidAmt() {
        return this.txtPaidAmt;
    }

    public void setTxtPaidAmt(Integer txtPaidAmt) {
        this.txtPaidAmt = txtPaidAmt;
    }

    @Column(name = "txtBalanceAmt")
    public Integer getTxtBalanceAmt() {
        return this.txtBalanceAmt;
    }

    public void setTxtBalanceAmt(Integer txtBalanceAmt) {
        this.txtBalanceAmt = txtBalanceAmt;
    }

    @Column(name = "txtRemark", length = 150)
    public String getTxtRemark() {
        return this.txtRemark;
    }

    public void setTxtRemark(String txtRemark) {
        this.txtRemark = txtRemark;
    }

    @Column(name = "txtIsDelete", length = 1)
    public Character getTxtIsDelete() {
        return this.txtIsDelete;
    }

    public void setTxtIsDelete(Character txtIsDelete) {
        this.txtIsDelete = txtIsDelete;
    }

    @Column(name = "txtSession", nullable = false)
    public int getTxtSession() {
        return this.txtSession;
    }

    public void setTxtSession(int txtSession) {
        this.txtSession = txtSession;
    }

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "txtEntryDate", nullable = false, length = 19)
    public Date getTxtEntryDate() {
        return this.txtEntryDate;
    }

    public void setTxtEntryDate(Date txtEntryDate) {
        this.txtEntryDate = txtEntryDate;
    }

    @Column(name = "txtIsActive", length = 1)
    public Character getTxtIsActive() {
        return this.txtIsActive;
    }

    public void setTxtIsActive(Character txtIsActive) {
        this.txtIsActive = txtIsActive;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "tblProjectGroup")
    public Set<TblStudent> getTblStudents() {
        return this.tblStudents;
    }

    public void setTblStudents(Set<TblStudent> tblStudents) {
        this.tblStudents = tblStudents;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "tblProjectGroup")
    public Set<TblProjectStatus> getTblProjectStatuses() {
        return this.tblProjectStatuses;
    }

    public void setTblProjectStatuses(Set<TblProjectStatus> tblProjectStatuses) {
        this.tblProjectStatuses = tblProjectStatuses;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "tblProjectGroup")
    public Set<TblProjectBug> getTblProjectBugs() {
        return this.tblProjectBugs;
    }

    public void setTblProjectBugs(Set<TblProjectBug> tblProjectBugs) {
        this.tblProjectBugs = tblProjectBugs;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "tblProjectGroup")
    public Set<TblGroupAccount> getTblGroupAccounts() {
        return this.tblGroupAccounts;
    }

    public void setTblGroupAccounts(Set<TblGroupAccount> tblGroupAccounts) {
        this.tblGroupAccounts = tblGroupAccounts;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "tblProjectGroup")
    public Set<TblGroupSchedules> getTblGroupScheduleses() {
        return this.tblGroupScheduleses;
    }

    public void setTblGroupScheduleses(Set<TblGroupSchedules> tblGroupScheduleses) {
        this.tblGroupScheduleses = tblGroupScheduleses;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "tblProjectGroup")
    public Set<TblGroupTelecalling> getTblGroupTelecallings() {
        return this.tblGroupTelecallings;
    }

    public void setTblGroupTelecallings(Set<TblGroupTelecalling> tblGroupTelecallings) {
        this.tblGroupTelecallings = tblGroupTelecallings;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "tblProjectGroup")
    public Set<TblProjectUpdates> getTblProjectUpdateses() {
        return this.tblProjectUpdateses;
    }

    public void setTblProjectUpdateses(Set<TblProjectUpdates> tblProjectUpdateses) {
        this.tblProjectUpdateses = tblProjectUpdateses;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "tblProjectGroup")
    public Set<TblGroupQueries> getTblGroupQuerieses() {
        return this.tblGroupQuerieses;
    }

    public void setTblGroupQuerieses(Set<TblGroupQueries> tblGroupQuerieses) {
        this.tblGroupQuerieses = tblGroupQuerieses;
    }

}
