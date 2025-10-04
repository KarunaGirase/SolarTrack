package com.solarTrack.controller;

import java.util.List;



import javax.servlet.http.HttpServletRequest;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.solarTrack.dao.InstallationRequestsDao;
import com.solarTrack.dao.InstallationsDao;
import com.solarTrack.dao.InstallerDao;
import com.solarTrack.dao.ReportsDao;
import com.solarTrack.model.InstallationRequests;
import com.solarTrack.model.Installations;
import com.solarTrack.model.Installer;
import com.solarTrack.model.Reports;


@Controller
public class InstallerController {
	 ApplicationContext context = new ClassPathXmlApplicationContext("config.xml");
     InstallerDao installerDao = context.getBean("installerDao",InstallerDao.class);
     Installer installer = context.getBean("installer",Installer.class);
     InstallationRequestsDao installationRequestsDao = context.getBean("installationRequestDao", InstallationRequestsDao.class);
     InstallationRequests installationRequests = context.getBean("installationRequests", InstallationRequests.class);
     Installations installations = context.getBean("installations", Installations.class);
     InstallationsDao installationsDao = context.getBean("installationsDao", InstallationsDao.class);
     Reports reports = context.getBean("reports",Reports.class);
     ReportsDao reportsDao = context.getBean("reportsDao",ReportsDao.class);
     
     @RequestMapping("/addinstaller")
 	public String openaccopen(){
 		return "addinstaller";
 	}
     
     @RequestMapping(path="/Addinstaller", method = RequestMethod.POST)
 	public String submitaccopen(HttpServletRequest request){
 		
 		installer.setInstallerContact(request.getParameter("InstallerContact"));
 		installer.setInstallerName(request.getParameter("InstallerName"));
 		installer.setInstallerLicenseNo(Integer.parseInt(request.getParameter("InstallerLicenseNo")));
 		installer.setInstallerEmail(request.getParameter("InstallerEmail"));
 		installer.setInstallerPassword(request.getParameter("InstallerPassword"));
 		
 		String id = installerDao.insert(installer);
 		if(id != null){
 		    return "redirect:/admindashboard";
 		} else {
 		    return "index";
 		}
     }
     @RequestMapping("/admindashboard")
     public String openDashboard() {
         return "admindashboard";
     }
     
     @RequestMapping("/viewinstaller")
     public String openViewInstaller(Model m) {
         List<Installer> allInstallers = installerDao.getAllInstaller();
         m.addAttribute("allInstaller", allInstallers);
         return "viewinstaller"; 
     }
     
     @RequestMapping(path="/delete", method = RequestMethod.GET)
 	public String deleteAccount(HttpServletRequest request){
 		String InstallerContact = request.getParameter("InstallerContact");
 		installerDao.deleteInstaller(InstallerContact);
 		return "redirect:/viewinstaller";
 	}
     
     @RequestMapping("/installerlogin")
     public String openlogin(){
     	return "installerlogin";
     }
     
     @RequestMapping(path="/submitinstallerlogin", method = RequestMethod.POST)
     public String submitinstallerlogin(HttpServletRequest request,Model m) {
     	String contact = request.getParameter("InstallerContact");
 		String password = request.getParameter("InstallerPassword");

 		installer = installerDao.getInstaller(contact);

 		if (installer == null) {
 			
 			return "installerlogin";

 		} else {
 			m.addAttribute("InstallerContact",contact);
 			return "InstallerDashboard";
 		}
 	
 	}
     
     @RequestMapping("/viewApprovedInstallationRequests")
     public String viewApprovedInstallationRequests(Model m) {
         List<InstallationRequests> approvedRequests = installationRequestsDao.getApprovedInstallationRequests();
         m.addAttribute("approvedInstallationRequests", approvedRequests);
         return "viewApprovedInstallationRequests"; // JSP page name
     }

     
     @RequestMapping("/InstallerDashboard")
     public String openinstallerdashboard(){
    	 return "InstallerDashboard";
     }
     
     @RequestMapping("/viewInstallationRequests")
     public String viewinstallationrequests(Model m) {
         List<InstallationRequests> allInstallationRequests = installationRequestsDao.getAllInstallationRequests();
         m.addAttribute("allInstallationRequests", allInstallationRequests);
         return "viewInstallationRequests"; 
     }
     
     @RequestMapping("/completeinstallations")
     public String completeinstallation(){
    	 return "completeinstallations";
     }
     @RequestMapping(path="/Completeinstallations", method = RequestMethod.POST)
  	public String submitinstallations(HttpServletRequest request,Model m){
  		installations.setInstallerContact(request.getParameter("InstallerContact"));
  		installations.setInstallDate(request.getParameter("InstallDate"));
  		installations.setSystemCost(Integer.parseInt(request.getParameter("SystemCost")));
  		installations.setSubsidyApproved(Integer.parseInt(request.getParameter("subsidyApproved")));
  		installations.setRemark(request.getParameter("Remark"));
  		
  		int id = installationsDao.insert(installations);  
  	    if(id > 0){
  	    	m.addAttribute("InstallerContact",request.getParameter("InstallerContact"));
  	        return "redirect:/SubsidyReports";
  	    } else {
  	        return "index";
  	    }
  	}
      
     @RequestMapping("/SubsidyReports")
     public String submitsubsidyreports(){
    	 
    	 return "SubsidyReports";
     }
     
     @RequestMapping(path="/submitreport", method = RequestMethod.POST)
   	public String submitSubsidyReports(HttpServletRequest request){
   		
   		reports.setPowerGenerated(Double.parseDouble(request.getParameter("PowerGenerated")));
   		reports.setReportDate(request.getParameter("ReportDate"));
   		reports.setMaintenanceNotes(request.getParameter("MaintenanceNotes"));
   		
   		int i = reportsDao.insert(reports);  
   	    if(i > 0){
   	        return "redirect:/InstallerDashboard";
   	    } else {
   	        return "index";
   	    }
   	}
     
     @RequestMapping("/ChangePassword")
     public String Changepassword(){
    	 return "ChangePassword";
     }
     @RequestMapping(path="/changeinstallerpassword", method = RequestMethod.POST)
     public String changeInstallerPassword(HttpServletRequest request) {
         String contact = request.getParameter("contact");
         String oldPassword = request.getParameter("oldPassword");
         String newPassword = request.getParameter("newPassword");

         Installer installer = installerDao.getInstaller(contact);

         if (installer != null && installer.getInstallerPassword().equals(oldPassword)) {
             installerDao.changeInstallerPassword(contact, newPassword);
             return "redirect:/InstallerDashboard";
         } else {
             return "redirect:/ChangePassword?error=Invalid+contact+or+old+password";
         }
     }

     
     @RequestMapping("/ViewSubsidyReports")
     public String viewsubsidyReportsAdmin(Model m){
    	 List<Reports> allReports = reportsDao.getAllReports();
    	 m.addAttribute("allReports",allReports);
    	 return "ViewSubsidyReports";
     }
     
//     @RequestMapping("/ViewSubsidyReports")
//     public String viewsubsidyReportsResident(Model m){
//    	 List<Reports> allReports = reportsDao.getAllReports();
//    	 m.addAttribute("allReports",allReports);
//    	 return "ViewSubsidyReports";
//     }
}
