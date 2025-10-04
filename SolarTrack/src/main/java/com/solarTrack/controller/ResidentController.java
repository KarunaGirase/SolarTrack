package com.solarTrack.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.solarTrack.dao.InstallationRequestsDao;
import com.solarTrack.dao.InstallationsDao;
import com.solarTrack.dao.ReportsDao;
import com.solarTrack.dao.ResidentDao;
import com.solarTrack.model.InstallationRequests;
import com.solarTrack.model.Installations;
import com.solarTrack.model.Installer;
import com.solarTrack.model.Reports;
import com.solarTrack.model.Resident;

@Controller
public class ResidentController {
	ApplicationContext context = new ClassPathXmlApplicationContext("config.xml");
    ResidentDao residentDao = context.getBean("residentDao",ResidentDao.class);
    Resident resident = context.getBean("resident",Resident.class);
    InstallationRequestsDao installationRequestsDao = context.getBean("installationRequestDao", InstallationRequestsDao.class);
    InstallationRequests installationRequests = context.getBean("installationRequests", InstallationRequests.class);
    ReportsDao reportsDao = context.getBean("reportsDao",ReportsDao.class);
    InstallationsDao installationsDao = context.getBean("installationsDao",InstallationsDao.class);
    
    
    @RequestMapping("/residentdashboard")
 	public String openresidentdashboard(){
 		return "residentdashboard";
 	}
    
    @RequestMapping("/registerresident")
    public String openregisterresident() {
        return "registerresident";  // JSP name
    }

    @RequestMapping(path="/registerresident", method = RequestMethod.POST)
    public String submitregisterresident(HttpServletRequest request) {
        resident.setResidentContact(request.getParameter("ResidentContact"));
        resident.setResidentName(request.getParameter("ResidentName"));
        resident.setResidentAddress(request.getParameter("ResidentAddress"));
        resident.setResidentEmail(request.getParameter("ResidentEmail"));
        resident.setResidentAadhaar(request.getParameter("ResidentAadhar"));
        resident.setResidentPassword(request.getParameter("ResidentPassword"));

        String id = residentDao.insert(resident);
        if (id != null) {
            return "redirect:/loginresident";
        } else {
            return "index";
        }
    }

    
    @RequestMapping("/loginresident")
    public String openlogin(){
    	return "loginresident";
    }
    @RequestMapping(path = "/submitlogin", method = RequestMethod.POST)
    public String submitloginresident(HttpServletRequest request, HttpSession session) {
        String contact = request.getParameter("ResidentContact");
        String password = request.getParameter("ResidentPassword");

        resident = residentDao.getResident(contact);

        if(resident == null){
        	return "loginresident";
        }
        else{
        	return "residentdashboard";
        }
    }


    
    @RequestMapping("/viewresidents")
    public String openViewResident(Model m) {
        List<Resident> allResident = residentDao.getAllResident();
        m.addAttribute("allResident", allResident);
        return "viewresidents"; 
    }
    
    @RequestMapping(path="/DeleteResident", method = RequestMethod.GET)
	public String deleteResident(HttpServletRequest request){
		String ResidentContact = request.getParameter("ResidentContact");
		residentDao.deleteResident(ResidentContact);
		return "redirect:/viewresidents";
	}
    
    @RequestMapping("/applyinstallation")
 	public String applyinstallation(){
 		return "applyinstallation";
 	}
    
    @RequestMapping(path="/submitInstallationRequest", method = RequestMethod.POST)
    public String submitrequests(HttpServletRequest request, HttpSession session) {
        Resident loggedInResident = (Resident) session.getAttribute("loggedResident");
        
        if (loggedInResident == null) {
            return "redirect:/residentdashboard";
        }

        InstallationRequests newRequest = new InstallationRequests();
        newRequest.setSystemType(request.getParameter("systemType"));
        newRequest.setCapacityKW(Integer.parseInt(request.getParameter("capacityKW")));
        newRequest.setRequestDate(request.getParameter("requestDate"));
        newRequest.setResident(loggedInResident); // link request to resident

        int i = installationRequestsDao.insert(newRequest);

        return (i > 0) ? "redirect:/residentdashboard" : "index";
    }

    
    @RequestMapping("/approved")
    public String approvedStatus(HttpServletRequest request){
    	String id = request.getParameter("id");
    	installationRequestsDao.updateStatusApproved(Integer.parseInt(id));
    	return "redirect:/viewInstallationRequests";
    }
    
    
    @RequestMapping("/reject")
    public String rejectStatus(HttpServletRequest request){
    	String id = request.getParameter("id");
    	installationRequestsDao.updateStatusReject(Integer.parseInt(id));
    	return "redirect:/viewInstallationRequests";
    }
    
    @RequestMapping("/viewresidentstatus")
    public String viewResidentStatus( Model m) {

        List<InstallationRequests> allInstallationRequests = installationRequestsDao.getAllInstallationRequests();
        m.addAttribute("allInstallationRequests", allInstallationRequests);

        return "viewresidentstatus";
    }
    
    
    @RequestMapping("/ViewSubsidyInstallationReports")
    public String viewSubsidyinstallationReports(Model m){
    	
    	List<Reports> allReports = reportsDao.getAllReports();
    	m.addAttribute("allReports", allReports);
    	
    	List<Installations> allInstallations = installationsDao.getAllInstallations();
    	m.addAttribute("allInstallations",allInstallations);
    	return "ViewSubsidyInstallationReports";
    }
    
}

