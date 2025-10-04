package com.solarTrack.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name="report")
@Component

public class Reports {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private int InstallationId;
	private double PowerGenerated;
	private String ReportDate;
	private String MaintenanceNotes;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getInstallationId() {
		return InstallationId;
	}
	public void setInstallationId(int installationId) {
		InstallationId = installationId;
	}
	public double getPowerGenerated() {
		return PowerGenerated;
	}
	public void setPowerGenerated(double powerGenerated) {
		PowerGenerated = powerGenerated;
	}
	public String getReportDate() {
		return ReportDate;
	}
	public void setReportDate(String reportDate) {
		ReportDate = reportDate;
	}
	public String getMaintenanceNotes() {
		return MaintenanceNotes;
	}
	public void setMaintenanceNotes(String maintenanceNotes) {
		MaintenanceNotes = maintenanceNotes;
	}
	public Reports(int id, int installationId, double powerGenerated, String reportDate, String maintenanceNotes) {
		super();
		this.id = id;
		InstallationId = installationId;
		PowerGenerated = powerGenerated;
		ReportDate = reportDate;
		MaintenanceNotes = maintenanceNotes;
	}
	public Reports() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Reports [id=" + id + ", InstallationId=" + InstallationId + ", PowerGenerated=" + PowerGenerated
				+ ", ReportDate=" + ReportDate + ", MaintenanceNotes=" + MaintenanceNotes + "]";
	}
	
	
}
