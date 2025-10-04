package com.solarTrack.model;



import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name="installer")
@Component

public class Installer {
	@Id
	private String InstallerContact;
	private String InstallerName;
	private int InstallerLicenseNo;
	private String InstallerEmail;
	private String InstallerPassword;
	public String getInstallerContact() {
		return InstallerContact;
	}
	public void setInstallerContact(String installerContact) {
		InstallerContact = installerContact;
	}
	public String getInstallerName() {
		return InstallerName;
	}
	public void setInstallerName(String installerName) {
		InstallerName = installerName;
	}
	public int getInstallerLicenseNo() {
		return InstallerLicenseNo;
	}
	public void setInstallerLicenseNo(int installerLicenseNo) {
		InstallerLicenseNo = installerLicenseNo;
	}
	public String getInstallerEmail() {
		return InstallerEmail;
	}
	public void setInstallerEmail(String installerEmail) {
		InstallerEmail = installerEmail;
	}
	public String getInstallerPassword() {
		return InstallerPassword;
	}
	public void setInstallerPassword(String installerPassword) {
		InstallerPassword = installerPassword;
	}
	public Installer(String installerContact, String installerName, int installerLicenseNo, String installerEmail,
			String installerPassword) {
		super();
		InstallerContact = installerContact;
		InstallerName = installerName;
		InstallerLicenseNo = installerLicenseNo;
		InstallerEmail = installerEmail;
		InstallerPassword = installerPassword;
	}
	public Installer() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Installer [InstallerContact=" + InstallerContact + ", InstallerName=" + InstallerName
				+ ", InstallerLicenseNo=" + InstallerLicenseNo + ", InstallerEmail=" + InstallerEmail
				+ ", InstallerPassword=" + InstallerPassword + "]";
	}

	
	
}
