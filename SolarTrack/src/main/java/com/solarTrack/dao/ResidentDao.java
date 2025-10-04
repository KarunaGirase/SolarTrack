package com.solarTrack.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.orm.hibernate5.HibernateTemplate;

import com.solarTrack.model.Resident;



public class ResidentDao {
	private HibernateTemplate hibernateTemplate;

	@Transactional
	public String insert(Resident resident){
	    return (String) this.hibernateTemplate.save(resident);
	}

	 @Transactional
	 public Resident getResident(String ResidentContact){
		 Resident resident = this.hibernateTemplate.get(Resident.class, ResidentContact);
		 return resident;
	 }
	 @Transactional
	 public List<Resident>getAllResident(){
		 List<Resident> resident = this.hibernateTemplate.loadAll(Resident.class);
		 return resident;
	 }
	 @Transactional
	 public void deleteResident(String residentContact){
		 Resident resident = this.hibernateTemplate.get(Resident.class, residentContact);
		 this.hibernateTemplate.delete(resident);
	 }
	 @Transactional
	 public void updateResident(Resident resident){
		 this.hibernateTemplate.update(resident);
	 }
	
	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	
}
