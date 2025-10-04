package com.solarTrack.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name = "installation")
@Component
public class Installations {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) // Auto-increment ID
    @Column(name = "id")
    private int id;

    private int requestId;
    private String InstallerContact;
    private String InstallDate;
    private int SystemCost;
    private int subsidyApproved;
    private String remark;

    // Getter and Setter Methods
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getRequestId() {
        return requestId;
    }

    public void setRequestId(int requestId) {
        this.requestId = requestId;
    }

    public String getInstallerContact() {
        return InstallerContact;
    }

    public void setInstallerContact(String installerContact) {
        InstallerContact = installerContact;
    }

    public String getInstallDate() {
        return InstallDate;
    }

    public void setInstallDate(String installDate) {
        InstallDate = installDate;
    }

    public int getSystemCost() {
        return SystemCost;
    }

    public void setSystemCost(int systemCost) {
        SystemCost = systemCost;
    }

    public int getSubsidyApproved() {
        return subsidyApproved;
    }

    public void setSubsidyApproved(int subsidyApproved) {
        this.subsidyApproved = subsidyApproved;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    // Constructors
    public Installations() {
        super();
    }

    public Installations(int id, int requestId, String installerContact, String installDate,
                         int systemCost, int subsidyApproved, String remark) {
        super();
        this.id = id;
        this.requestId = requestId;
        this.InstallerContact = installerContact;
        this.InstallDate = installDate;
        this.SystemCost = systemCost;
        this.subsidyApproved = subsidyApproved;
        this.remark = remark;
    }

    @Override
    public String toString() {
        return "Installations [id=" + id + ", requestId=" + requestId + ", InstallerContact=" + InstallerContact
                + ", InstallDate=" + InstallDate + ", SystemCost=" + SystemCost
                + ", subsidyApproved=" + subsidyApproved + ", remark=" + remark + "]";
    }
}
