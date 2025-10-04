package com.solarTrack.dao;

import java.io.Serializable;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.orm.hibernate5.HibernateTemplate;

import com.solarTrack.model.Installer;

public class InstallerDao {

private HibernateTemplate hibernateTemplate;
	
	@Transactional
	public String insert(Installer installer){
	    return (String) this.hibernateTemplate.save(installer);
	}
	
	@Transactional
	public void changeInstallerPassword(String contact, String newPassword) {
	    Installer installer = this.hibernateTemplate.get(Installer.class, contact);
	    if (installer != null) {
	        installer.setInstallerPassword(newPassword);
	        this.hibernateTemplate.update(installer);
	    }
	}

	
	 @Transactional
	 public Installer getInstaller(String contact){
		 Installer installer = this.hibernateTemplate.get(Installer.class, contact);
		 return installer;
	 }
	 @Transactional
	 public List<Installer>getAllInstaller(){
		 List<Installer> installer = this.hibernateTemplate.loadAll(Installer.class);
		 return installer;
	 }
	 @Transactional
	 public void deleteInstaller(String installerContact){
		 Installer installer = this.hibernateTemplate.get(Installer.class, installerContact);
		 this.hibernateTemplate.delete(installer);
	 }
	 @Transactional
	 public void updateInstaller(Installer installer){
		 this.hibernateTemplate.update(installer);
	 }
	 
	 

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	
}
