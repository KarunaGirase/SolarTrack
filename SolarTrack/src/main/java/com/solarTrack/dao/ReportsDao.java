package com.solarTrack.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.orm.hibernate5.HibernateTemplate;

import com.solarTrack.model.Installations;
import com.solarTrack.model.Reports;



public class ReportsDao {
	private HibernateTemplate hibernateTemplate;

	
	@Transactional
	public int insert(Reports reports){
	    return (Integer) this.hibernateTemplate.save(reports);
	}
	

	 @Transactional
	 public Reports getReports(int id){
		 Reports reports = this.hibernateTemplate.get(Reports.class, id);
		 return reports;
	 }
	 @Transactional
	 public List<Reports>getAllReports(){
		 List<Reports> reports = this.hibernateTemplate.loadAll(Reports.class);
		 return reports;
	 }
	 @Transactional
	 public void deleteReports(int id){
		 Reports reports = this.hibernateTemplate.get(Reports.class, id);
		 this.hibernateTemplate.delete(reports);
	 }
	 @Transactional
	 public void updateReports(Reports reports){
		 this.hibernateTemplate.update(reports);
	 }
	
	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	
}
