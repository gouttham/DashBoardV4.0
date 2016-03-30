package com.dashboard.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.dashboard.beans.CredentialBean;
import com.dashboard.beans.InterviewBean;
import com.dashboard.beans.IntervieweeBean;
import com.dashboard.beans.InterviewerBean;
import com.dashboard.beans.ProfileBean;
import com.dashboard.beans.SkillBean;
import com.dashboard.beans.StudentSkillBean;
import com.dashboard.dao.AdminDAO;

@Service("adminService")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class AdministratorImp implements Administrator {
	@Autowired
	SessionFactory sessionFactory;
	@Autowired
	AdminDAO adminDAO;
	@Autowired
	Trainer trainerService;

@Transactional(propagation=Propagation.REQUIRED,readOnly=false)
	
	public String addTrainer(CredentialBean credentialbean) {
		if(credentialbean == null)
			return "ERROR";
		else
			return(adminDAO.addTrainer(credentialbean));
	}
	
	
	
	public List<ProfileBean> viewTrainer() {
		// TODO Auto-generated method stub
		ArrayList<ProfileBean> arrlist = adminDAO.viewTrainer();
		if(arrlist == null)
			return null;
		else if
		(arrlist.isEmpty()){
			return null;
		}
		else
		return arrlist;
	}



	public boolean modifyTrainer(ProfileBean profilebean) {
		// TODO Auto-generated method stub
		return adminDAO.modifyTrainer(profilebean);
		//return false;
	}



	public CredentialBean getCredentialBean(String pid) {
		// TODO Auto-generated method stub
	
		return adminDAO.getCredentialBean(pid);
		
	}


	
	public int removeTrainer(ArrayList<Integer> trainerIdarr) {
		// TODO Auto-generated method stub
		return adminDAO.removeTrainer(trainerIdarr);
		//return 0;
	}
	
	public List<ProfileBean> viewStudent(){
		return adminDAO.viewStudent();
	}

	
	public Map<ProfileBean, ArrayList<StudentSkillBean>> viewAllStudents() {

		return adminDAO.viewAllStudents();

	}
	
	@Transactional(propagation = Propagation.SUPPORTS, readOnly = false)
	public String iSchedule(String[] interviewer, String[] interviwee, Date iDate) {
		
		return adminDAO.iSchedule(interviewer, interviwee, iDate);
	}

	public Map<InterviewBean, Map<Map<ProfileBean, InterviewerBean>, Map<ProfileBean, IntervieweeBean>>> ViewAllScheduledInterview() {
		return adminDAO.ViewAllScheduledInterview();
	}

	public String DeleteInterview(String[] interviewIDstoDelete) {
		return adminDAO.DeleteInterview(interviewIDstoDelete);
	}

	public Map<ProfileBean, ArrayList<StudentSkillBean>> viewAllTrainers() {
		return adminDAO.viewAllTrainers();
	}

	@Transactional(propagation = Propagation.SUPPORTS, readOnly = false)
	public String aa(String id) 
	{
		String result=adminDAO.aa(id);
		return result;
	}

	//vvvvvvvvvvvvvvv
	public ProfileBean getProfileBean(String id) {
		// TODO Auto-generated method stub
		return adminDAO.getProfileBean(id);
	}

	@Transactional(propagation = Propagation.SUPPORTS, readOnly = false)
	public String addSkill(SkillBean skillBean) {
		// TODO Auto-generated method stub
		return adminDAO.addSkill(skillBean);
	}

	@Transactional(propagation = Propagation.SUPPORTS, readOnly = false)
	public int deleteSkill(int skillId) {
		// TODO Auto-generated method stub
		return adminDAO.deleteSkill(skillId);
	}

	@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
	public ArrayList<SkillBean> viewSkills() {
		// TODO Auto-generated method stub
		return adminDAO.viewSkills();
	}
	
	////////Manual Integration
	
	@Transactional(propagation=Propagation.SUPPORTS,readOnly=false)
	public ArrayList<SkillBean> displaySkillList(){
		
		ArrayList<SkillBean> ssb=adminDAO.displaySkill();
		
		if(ssb.equals(null)||ssb.isEmpty())
			return null;
		else
		 return ssb;
		
		
	}
	@Transactional(propagation=Propagation.SUPPORTS,readOnly=true)
	public TreeMap<String, Integer> getStudentList(String skills) {
		TreeMap<String, Integer> studList=adminDAO.getStudentList(skills);
		
		if(studList.size()!=0)
		return studList;
		else
		{
			studList.put("Empty", 0);
			return studList;
		}
	}

	public ArrayList<String> getPidList(String[] arr) {
		ArrayList<String> al=adminDAO.getPidList(arr);
		return al;
	}
	
	

}
