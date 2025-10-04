package com.solarTrack.model;

import java.util.Date;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


import org.springframework.stereotype.Component;

@Entity
@Table(name = "installationrequests")
@Component


public class InstallationRequests {
		@Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    private int Id;

	    @ManyToOne
	    @JoinColumn(name = "ResidentContactId", referencedColumnName = "ResidentContact")
	    private Resident Resident;

	    private String SystemType;

	    private int CapacityKW;
	    
	    private String RequestDate;

	    private String Status = "Pending"; 

		public int getId() {
			return Id;
		}

		public void setId(int id) {
			Id = id;
		}

		public Resident getResident() {
			return Resident;
		}

		public void setResident(Resident resident) {
			Resident = resident;
		}

		public String getSystemType() {
			return SystemType;
		}

		public void setSystemType(String systemType) {
			SystemType = systemType;
		}

		public int getCapacityKW() {
			return CapacityKW;
		}

		public void setCapacityKW(int capacityKW) {
			CapacityKW = capacityKW;
		}

		public String getRequestDate() {
			return RequestDate;
		}
		public void setRequestDate(String requestDate) {
			RequestDate = requestDate;
		}

		public String getStatus() {
			return Status;
		}

		public void setStatus(String status) {
			Status = status;
		}

		public InstallationRequests(int id, com.solarTrack.model.Resident resident, String systemType, int capacityKW,
				String requestDate, String status) {
			super();
			Id = id;
			Resident = resident;
			SystemType = systemType;
			CapacityKW = capacityKW;
			RequestDate = requestDate;
			Status = status;
		}

		public InstallationRequests() {
			super();
			// TODO Auto-generated constructor stub
		}

		@Override
		public String toString() {
			return "InstallationRequests [Id=" + Id + ", Resident=" + Resident + ", SystemType=" + SystemType
					+ ", CapacityKW=" + CapacityKW + ", RequestDate=" + RequestDate + ", Status=" + Status + "]";
		}

		
	    
	    
}
