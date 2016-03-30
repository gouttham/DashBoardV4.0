package com.dashboard.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dashboard.beans.CredentialBean;
import com.dashboard.beans.InterviewBean;
import com.dashboard.beans.IntervieweeBean;
import com.dashboard.beans.InterviewerBean;
import com.dashboard.beans.ProfileBean;
import com.dashboard.beans.SkillBean;
import com.dashboard.beans.StudentSkillBean;
import com.dashboard.service.Administrator;
import com.dashboard.util.User;

@Controller
public class AdminController {

	@Autowired
	User user;

	@Autowired
	Administrator adminService;

	/////
	
	@RequestMapping(value = "/addTrainer", method = RequestMethod.GET)
	public String addtrainerget(Model model) {
		CredentialBean credentialbean = new CredentialBean();
		model.addAttribute("addTrainer", credentialbean);
		return "addTrainer";
	}
	
	
	
	@RequestMapping(value = "/viewTrainer", method = RequestMethod.GET)
	public String viewTrainerget(Model model) {

		//ProfileBean profilebean = new ProfileBean();
		
			List<ProfileBean> list = adminService.viewTrainer();
			if (list == null) {
				model.addAttribute("failmsg", "Sorry, Empty Records......");
				return "failure";
			}
			else if(list.isEmpty()){
				model.addAttribute("failmsg", "Sorry, Empty Records......");
				return "failure";
			}
				
			else {
				/*
				 * for(ShipBean s: list){ System.out.println(s.getShipId());
				 * System.out.println(s.getShipName());
				 * System.out.println(s.getSeatingCapacity());
				 * System.out.println(s.getReservationCapacity()); }
				 */
				model.addAttribute("dispall", list);
				return "viewTrainer";
			}

	}

	/*@RequestMapping(value = "/viewTrainer", method = RequestMethod.POST)
	public String modifyTrainerpost(
			@ModelAttribute("modifyTrainer") ProfileBean profilebean, Model model) {
		if (adminService.modifyTrainer(profilebean) == true) {
			model.addAttribute("succmsg", "Trainer details modified successfully......");
			return "Success";
		} else {
			model.addAttribute("failmsg",
					"Modification of details unsuccessful......");
			return "failure";
viewStudent.html
		}*/
	
	@RequestMapping(value = "/modifyTrainer", method = RequestMethod.GET)
	public String modifyTrainerget(HttpServletRequest request, Model model) {

		ProfileBean profilebean = new ProfileBean();
		String pid=request.getParameter("value");
		
		System.out.println("in get "+pid);
		model.addAttribute("modifyTrainer", profilebean);
		//profilebean.setpId(credentialbean);
		//request.setAttribute("bean",credentialbean);
		model.addAttribute("modifyTrainer", profilebean);

		return "modifyTrainer";
	}
	
	@RequestMapping(value = "/modifyTrainer", method = RequestMethod.POST)
	public String modifyTrainerpost(
			@ModelAttribute("modifyTrainer") ProfileBean profilebean, Model model,HttpServletRequest request) {
		System.out.println("in ctller modify trainer===");
		System.out.println("in ctrl "+request.getAttribute("pid"));
		String pid=(String) request.getAttribute("pid");
	String ppid=(String) request.getParameter("pid");
		System.out.println("try "+ppid);
		CredentialBean credentialbean = adminService.getCredentialBean(ppid);
		profilebean.setpId(credentialbean);
		if (adminService.modifyTrainer(profilebean) == true) {
			model.addAttribute("succmsg", "Details modified successfully......");
			return "Success";
		} else {
			model.addAttribute("failmsg",
					"Modification failed......");
			return "failure";
		}
	}
	
	@RequestMapping(value = "/deleteTrainer", method = RequestMethod.GET)
	public String deleteTrainerget(Model model) {
		ProfileBean profilebean = new ProfileBean();
		model.addAttribute("deleteTrainer", profilebean);
		return "deleteTrainer";
	}

	@RequestMapping(value = "/deleteTrainer", method = RequestMethod.POST)
	public String deleteTrainerpost(@RequestParam("delete") int[] autogen,
			Model model) {

		ArrayList<Integer> trainerIdarr = new ArrayList<Integer>();
		for (int i = 0; i < autogen.length; i++) {
			trainerIdarr.add(autogen[i]);

		}
		// si.removeShip(shipIdarr);
		if (adminService.removeTrainer(trainerIdarr) == 0) {
			model.addAttribute("failmsg",
					"Trainer not deleted ......");
			return "failure";
		} else {
			model.addAttribute("succmsg", "Trainer deleted successfully......");
			return "Success";
		}
	}

	@RequestMapping(value = "/viewStudent", method = RequestMethod.GET)
	public String viewStudentget(Model model) {

		//ProfileBean profilebean = new ProfileBean();
		
			List<ProfileBean> list = adminService.viewStudent();
			if (list == null) {
				model.addAttribute("failmsg", "Sorry, Empty Records......");
				return "failure";
			}
			else if(list.isEmpty()){
				model.addAttribute("failmsg", "Sorry, Empty Records......");
				return "failure";
			}
				
			else {
				model.addAttribute("dispall", list);
				return "viewStudent";
			}

	}
	
	@RequestMapping(value = "/modifyStudent", method = RequestMethod.GET)
	public String modifyStudentget(HttpServletRequest request, Model model) {

		ProfileBean profilebean = new ProfileBean();
		String pid=request.getParameter("value");
		
		System.out.println("in get student "+pid);
		model.addAttribute("modifyStudent", profilebean);
		//profilebean.setpId(credentialbean);
		//request.setAttribute("bean",credentialbean);
		model.addAttribute("modifyStudent", profilebean);

		return "modifyStudent";
	}
	
	@RequestMapping(value = "/modifyStudent", method = RequestMethod.POST)
	public String modifyStudentpost(
			@ModelAttribute("modifyStudent") ProfileBean profilebean, Model model,HttpServletRequest request) {
		System.out.println("in ctller modifyStudent===");
		System.out.println("in ctrl "+request.getAttribute("pid"));
		String pid=(String) request.getAttribute("pid");
	String ppid=(String) request.getParameter("pid");
		System.out.println("try "+ppid);
		CredentialBean credentialbean = adminService.getCredentialBean(ppid);
		profilebean.setpId(credentialbean);
		if (adminService.modifyTrainer(profilebean) == true) {
			model.addAttribute("succmsg", "Details modified successfully......");
			return "Success";
		} else {
			model.addAttribute("failmsg",
					"Modification failed......");
			return "failure";
		}
	}

	
	
	//////
	
	
	
	@RequestMapping(value = "/ViewStudents", method = RequestMethod.GET)
	public String setValues(HttpSession httpSession, Model model) {
		Map<ProfileBean, ArrayList<StudentSkillBean>> result = adminService.viewAllStudents();
		model.addAttribute("result", result);
		return "ViewStudents";
	}
	
	@RequestMapping(value = "/ViewTrainers", method = RequestMethod.GET)
	public String viewTrainers(HttpSession httpSession, Model model) {
		Map<ProfileBean, ArrayList<StudentSkillBean>> result = adminService.viewAllTrainers();
		model.addAttribute("result", result);
		return "ViewTrainers";
	}



	@RequestMapping(value = "/DoScheduleWithInterviewer", method = RequestMethod.POST)
	public String doScheduleWithInterviewer(HttpServletRequest httpServletRequest, HttpSession httpSession,
			Model model) {
		String[] stinlist = (String[]) httpSession.getAttribute("stinlist");
		String intDate = httpServletRequest.getParameter("intDate");
		String intTime = httpServletRequest.getParameter("intTime");
		String intPanel = httpServletRequest.getParameter("intPanel");
		intDate = intDate + " " + intTime;
		SimpleDateFormat sim = new SimpleDateFormat("yyyy-MM-dd HH:mm");
		Date d = null;
		try {
			d = sim.parse(intDate);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		String[] intPanelArray = intPanel.split(",");
		String result = adminService.iSchedule(intPanelArray, stinlist, d);
		if (result.equalsIgnoreCase("Success")) {
			model.addAttribute("succmsg", "Interview scheduled successfully......");
			return "Success";
		} else {
			return "Failure";
		}
	}
	
	
	@RequestMapping(value = "/ViewScheduledInterview", method = RequestMethod.GET)
	public String viewScheduledInterview(HttpSession httpSession, Model model) {
		Map<InterviewBean, Map<Map<ProfileBean, InterviewerBean>, Map<ProfileBean, IntervieweeBean>>> interviewMap = adminService.ViewAllScheduledInterview();
		httpSession.setAttribute("interviewMap", interviewMap);
		model.addAttribute("result", interviewMap);
		if(interviewMap!=null){
		return "ViewScheduledInterview";
		}else{
			return"Failure";
		}
	}
	
	@RequestMapping(value = "/ScheduleInterviewDeletion", method = RequestMethod.POST)
	public String scheduleInterviewDeletion(HttpServletRequest httpServletRequest, HttpSession httpSession, Model model) {
		String[] interviewIDstoDelete = (String[]) httpServletRequest.getParameterValues("interviewIDstoDelete");
		String result = adminService.DeleteInterview(interviewIDstoDelete);
		if (result.equalsIgnoreCase("Success")) {
			model.addAttribute("succmsg", "Interview scheduled deleted successfully......");
			return "Success";
		} else {
			return "Failure";
		}
	}
	
	
	@RequestMapping(value = "/authorizeaccess", method = RequestMethod.GET)
	public String authorizeaccess(HttpServletRequest httpServletRequest, HttpSession httpSession, Model model) 
	{
	return "authorizeaccess";
	}
	
	
	@RequestMapping(value = "/AuthorizeAccess", method = RequestMethod.POST)
	public @ResponseBody String AuthorizeAccess(HttpServletRequest httpServletRequest, HttpSession httpSession, Model model) 
	{
	String id=(String) httpServletRequest.getParameter("id");
	String result=adminService.aa(id);
	if(result.equalsIgnoreCase("success"))
	{
	return "<h5>Modified</h5>";
	}
	else
	{
		return "<h5>Modification Failed</h5>";
	}
	}
	
	//vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv
	@RequestMapping(value = "/addskill", method = RequestMethod.GET)
	public String addSkill(Model model,HttpServletRequest request) 
	{
		//SkillBean skillBean=new SkillBean();
		ArrayList<SkillBean> skills=adminService.viewSkills();
		if(skills!=null){
		model.addAttribute("skillbeans",skills);
		request.setAttribute("count", skills.size());
		
		}
		else{
			model.addAttribute("skillbeans",skills);
			request.setAttribute("count",0);
		}
		return "addskills";
	
	}
	
	
	@RequestMapping(value = "/addskill1", method = RequestMethod.POST)
	public @ResponseBody String addSkillPost(@RequestParam("skillName") String skillName,HttpServletRequest httpServletRequest, HttpSession httpSession) 
	{
		String result="";
		int i=0;
		String adminId=(String) httpSession.getAttribute("pId");
		SkillBean skillBean=new SkillBean();
		skillBean.setSkillName(skillName);
		skillBean.setUpdatedOn(new Date());
		skillBean.setUpdatedBy(adminService.getProfileBean(adminId).getName());
		//skillBean.setUpdatedBy("T123");
		adminService.addSkill(skillBean);
		ArrayList<SkillBean> skills=adminService.viewSkills();
		result=result+"<table class='table table-striped table-hover' id='bootstrap-table'>";
		result=result+"<tr>";
		result=result+"<th>";
		result=result+"skill id";
		result=result+"</th>";
		result=result+"<th>skillName</th>";
		
		result=result+"<th>delete</th>";
		result=result+"</tr>";
		for(SkillBean sb:skills){
			
			result=result+"<tr id='"+sb.getSkillId()+"'>";
			result=result+"<td>"+sb.getSkillId()+"</td>";
			result=result+"<td>"+sb.getSkillName()+"</td>";
			
			result=result+"<td><button type='button' id='btn"+i+"' value='"+sb.getSkillId()+"' onclick='delete1(this);'><span class='glyphicon glyphicon-trash'></span></button></td>";
			result=result+"</tr>";
			
			i++;
			
		}
		result=result+"</table>";
		return result;
	}
	
	@RequestMapping(value = "/deleteskill", method = RequestMethod.POST)
	public @ResponseBody String deleteskill1(@RequestParam("skillId") int skillId,HttpServletRequest httpServletRequest) 
	{
		
		
		adminService.deleteSkill(skillId);
		return "success";
	}
	
	/////////Manually Integrated
	
	
	@RequestMapping(value = "/searchSkill", method = RequestMethod.GET)
	public String selectSkill(Model model) {
		ArrayList<SkillBean> ssb;
		System.out.println("here in Get Method");
		SkillBean skillBean1 = new SkillBean();
		System.out.println("came here 1");
		ssb=adminService.displaySkillList();
		System.out.println("came here 2");
		//System.out.println("Name is"+ssb.get(0).getSkillName());
		model.addAttribute("ssb", ssb);
		model.addAttribute("skillBean1", skillBean1);
		System.out.println(skillBean1);
		
		return "ListDisplay";
	}

	@RequestMapping(value = "/showSkill", method = RequestMethod.GET)
	public String showSkill(Model model, @ModelAttribute("skillBean1") SkillBean skillBean1) {
		String skills=skillBean1.getSkillName();
		System.out.println(skillBean1);
		System.out.println("The skil name are:"+skillBean1.getSkillName());
		TreeMap<String, Integer> studList=adminService.getStudentList(skills);
		System.out.println(studList);
		model.addAttribute("studList", studList);
		
		return "Fail";
		
	}
	
	@RequestMapping(value = "/ScheduleInterview", method = RequestMethod.POST)
	public String scheduleInterview(HttpServletRequest httpServletRequest, HttpSession httpSession, Model model) {
		String[] stinlist = (String[]) httpServletRequest.getParameterValues("stinlist");
		httpSession.setAttribute("stinlist", stinlist);
		System.out.println(Arrays.toString(stinlist));
		return "DoScheduleWithInterviewer";
	}
	
	@RequestMapping(value = "/ScheduleInterview1", method = RequestMethod.POST)
	public String scheduleInterview1234(Model model,HttpServletRequest request) {
		try {
		String[] arr=	request.getParameterValues("stinlist");
		ArrayList<String> al=adminService.getPidList(arr);
			
			model.addAttribute("al", al);
			
		} catch (Exception e) {
			e.printStackTrace();;
		}
		return "Success";
	}

}
