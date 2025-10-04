package com.solarTrack.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.orm.hibernate5.HibernateTemplate;

import com.solarTrack.model.Installations;



public class InstallationsDao { 
	private HibernateTemplate hibernateTemplate;
	
	
	@Transactional
	public int insert(Installations installation) {
	    return (Integer) this.hibernateTemplate.save(installation); // Cast to Integer
	}

	 @Transactional
	 public Installations getInstallations(int id){
		 Installations installation = this.hibernateTemplate.get(Installations.class, id);
		 return installation;
	 }
	 @Transactional
	 public List<Installations>getAllInstallations(){
		 List<Installations> installation = this.hibernateTemplate.loadAll(Installations.class);
		 return installation;
	 }
	 @Transactional
	 public void deleteInstallations(int id){
		 Installations installation = this.hibernateTemplate.get(Installations.class, id);
		 this.hibernateTemplate.delete(installation);
	 }
	 @Transactional
	 public void updateInstallations(Installations installation){
		 this.hibernateTemplate.update(installation);
	 }

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	
}
