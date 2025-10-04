package com.solarTrack.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.orm.hibernate5.HibernateTemplate;

import com.solarTrack.model.InstallationRequests;
import com.solarTrack.model.Resident;



public class InstallationRequestsDao {
	private HibernateTemplate hibernateTemplate;

	 @Transactional
	    public int insert(InstallationRequests installationRequests) {
	        Integer i = (Integer) this.hibernateTemplate.save(installationRequests); 
	        return i;
	    }
	 @Transactional
	 public InstallationRequests getInstallationRequests(int Id){
		 InstallationRequests requests = this.hibernateTemplate.get(InstallationRequests.class, Id);
		 return requests;
	 }
	 @Transactional
	 public List<InstallationRequests>getAllInstallationRequests(){
		 List<InstallationRequests> requests = this.hibernateTemplate.loadAll(InstallationRequests.class);
		 return requests;
	 }
	 
	 @Transactional
	 public void updateStatusApproved(int id){
		 InstallationRequests installationrequests = this.hibernateTemplate.get(InstallationRequests.class, id);
		 installationrequests.setStatus("Approved");
		 this.hibernateTemplate.update(installationrequests);
	 }
	 @Transactional
	 public void updateStatusReject(int id){
		 InstallationRequests installationrequests = this.hibernateTemplate.get(InstallationRequests.class, id);
		 installationrequests.setStatus("Rejected");
		 this.hibernateTemplate.update(installationrequests);
	 }
	 
	 
	 
	 @Transactional
	 public void deleteInstallationRequests(int Id){
		 InstallationRequests requests = this.hibernateTemplate.get(InstallationRequests.class, Id);
		 this.hibernateTemplate.delete(requests);
	 }
	 @Transactional
	 public void updateInstallationRequests(InstallationRequests requests){
		 this.hibernateTemplate.update(requests);
	 }
	 
	 @Transactional
	 public List<InstallationRequests> getRequestsByResident(Resident resident) {
	     String hql = "from InstallationRequests where resident = :resident";
	     return (List<InstallationRequests>) this.hibernateTemplate.findByNamedParam(hql, "resident", resident);
	 }

	 @Transactional
	 public List<InstallationRequests> getApprovedInstallationRequests() {
	     DetachedCriteria criteria = DetachedCriteria.forClass(InstallationRequests.class);
	     criteria.add(Restrictions.eq("Status", "Approved"));
	     return (List<InstallationRequests>) this.hibernateTemplate.findByCriteria(criteria);
	 }

	 
	 
	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	
}
