package com.solarTrack.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table (name="resident")
@Component
public class Resident {
	@Id
	private String ResidentContact;
	private String ResidentName;
	private String ResidentAddress;
	private String ResidentEmail;
	private String ResidentAadhaar;
	private String ResidentPassword;
	public String getResidentContact() {
		return ResidentContact;
	}
	public void setResidentContact(String residentContact) {
		ResidentContact = residentContact;
	}
	public String getResidentName() {
		return ResidentName;
	}
	public void setResidentName(String residentName) {
		ResidentName = residentName;
	}
	public String getResidentAddress() {
		return ResidentAddress;
	}
	public void setResidentAddress(String residentAddress) {
		ResidentAddress = residentAddress;
	}
	public String getResidentEmail() {
		return ResidentEmail;
	}
	public void setResidentEmail(String residentEmail) {
		ResidentEmail = residentEmail;
	}
	public String getResidentAadhaar() {
		return ResidentAadhaar;
	}
	public void setResidentAadhaar(String residentAadhaar) {
		ResidentAadhaar = residentAadhaar;
	}
	public String getResidentPassword() {
		return ResidentPassword;
	}
	public void setResidentPassword(String residentPassword) {
		ResidentPassword = residentPassword;
	}
	public Resident(String residentContact, String residentName, String residentAddress, String residentEmail,
			String residentAadhaar, String residentPassword) {
		super();
		ResidentContact = residentContact;
		ResidentName = residentName;
		ResidentAddress = residentAddress;
		ResidentEmail = residentEmail;
		ResidentAadhaar = residentAadhaar;
		ResidentPassword = residentPassword;
	}
	public Resident() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Resident [ResidentContact=" + ResidentContact + ", ResidentName=" + ResidentName + ", ResidentAddress="
				+ ResidentAddress + ", ResidentEmail=" + ResidentEmail + ", ResidentAadhaar=" + ResidentAadhaar
				+ ", ResidentPassword=" + ResidentPassword + "]";
	}
	
}
