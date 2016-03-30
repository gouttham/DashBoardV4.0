package com.dashboard.dao;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

import javax.servlet.http.HttpSession;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.dashboard.beans.CredentialBean;
import com.dashboard.beans.InterviewBean;
import com.dashboard.beans.IntervieweeBean;
import com.dashboard.beans.InterviewerBean;
import com.dashboard.beans.ProfileBean;
import com.dashboard.beans.SkillBean;
import com.dashboard.beans.StudentSkillBean;
import com.dashboard.service.Trainer;

@Repository("adminDAO")
public class AdminDAOImpl implements AdminDAO {
	@Autowired
	SessionFactory sessionFactory;

	@Autowired
	Trainer trainerService;

	//
	@Transactional(propagation=Propagation.REQUIRED, readOnly=false)
	public String addTrainer(CredentialBean credentialbean) {
		// TODO Auto-generated method stub
		try {
			Session session = sessionFactory.getCurrentSession();
			session.save(credentialbean);
			return "SUCCESS";
		} catch (HibernateException e) {
			return "FAIL";
		}
		
	}

	
	@Transactional(propagation=Propagation.REQUIRED, readOnly=true)
	public ArrayList<ProfileBean> viewTrainer() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		/*SQLQuery sqlq = session.createSQLQuery("select * from DB.db_profile where pId in (select pId from DB.db_credential where type=?)");
		sqlq.setString(0, "t");*/
		SQLQuery sqlq = session.createSQLQuery("select * from newdb.db_profile");
		sqlq.addEntity(ProfileBean.class);

		List<ProfileBean> list = sqlq.list();
       System.out.println("here"+list.size());
		return (ArrayList<ProfileBean>) list;

		
	}

	
	@Transactional(propagation=Propagation.REQUIRED, readOnly=false)
	public boolean modifyTrainer(ProfileBean profilebean) {
		// TODO Auto-generated method stub
		System.out.println("in dao");
		Session session = sessionFactory.getCurrentSession();
		System.out.println(profilebean.getAutogen());
		session.update(profilebean);
		return true;
	}

	
	public CredentialBean getCredentialBean(String pid) {
		// TODO Auto-generated method stub
		System.out.println("id is "+pid);
		Session session = sessionFactory.getCurrentSession();
		CredentialBean credentialbean = (CredentialBean) session.get(CredentialBean.class, pid);
		return credentialbean;
	}

	
	@Transactional(propagation=Propagation.REQUIRED, readOnly=false)

	public int removeTrainer(ArrayList<Integer> trainerIdarr) {
		// TODO Auto-generated method stub
		//boolean flag = false;
		Session session = sessionFactory.getCurrentSession();
		/*for(int i=0; i<trainerIdarr.size(); i++){
			CredentialBean pid = trainerIdarr.get(i);
			Query sql = session.createQuery("select autogen from DB.db_credential where pId=?");
			sql.setEntity(0, trainerIdarr.get(i));
			int autogen = sql.executeUpdate();
			CredentialBean cr = (CredentialBean) session.get(CredentialBean.class, autogen);
			if(cr == null){
				continue;
			}
			else{
				flag = true;
				session.delete(cr);
			}
		
		}
		if(flag == false)
			return 0;
		else
			return 1;
			
*/
				boolean flag = false;
		for(int i=0; i<trainerIdarr.size(); i++){
			System.out.println("in remove doa "+trainerIdarr.get(0));
		//CredentialBean cr = (CredentialBean) session.get(ProfileBean.class, trainerIdarr.get(i));
			ProfileBean pb = (ProfileBean) session.get(ProfileBean.class, trainerIdarr.get(i));
			String pid = pb.getpId().getpId();
			CredentialBean cr = (CredentialBean) session.get(CredentialBean.class, pid);
			if(pb !=null){
				System.out.println("deleting pb...");
				session.delete(pb);
				
			}
		if(cr !=null){
			flag = true;
			session.delete(cr);
			CredentialBean cr1 = (CredentialBean) session.get(CredentialBean.class, pid);
			System.out.println(cr1);
		}
		else
			continue;
		
	
		
		}
		if(flag == true)
			return 1;
		else
			return 0;
	}

	@Transactional(propagation=Propagation.REQUIRED, readOnly=true)
	public List<ProfileBean> viewStudent() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		/*CredentialBean pid = session.getAttribute(pId);*/
		CredentialBean cr = new CredentialBean();
		/// Setting pId manually....
		ServletRequestAttributes request = (ServletRequestAttributes) RequestContextHolder
	            .currentRequestAttributes();
	HttpSession httpsession = request.getRequest().getSession();
		cr.setpId((String)httpsession.getAttribute("pId"));
		SQLQuery sqlq = session.createSQLQuery("select * from newdb.db_profile where pId = ?");
		 ((Query) sqlq).setString(0, cr.getpId());
				
		
		sqlq.addEntity(ProfileBean.class);

		List<ProfileBean> list = sqlq.list();
		System.out.println(list.get(0).getManagerId());
		return (ArrayList<ProfileBean>) list;
		//return null;
	}
	//
	
	
	
	@SuppressWarnings("unchecked")
	public Map<ProfileBean, ArrayList<StudentSkillBean>> viewAllStudents() {

		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from CredentialBean where type='s'");
		ArrayList<CredentialBean> cblist = (ArrayList<CredentialBean>) query.list();

		ArrayList<ProfileBean> pblist = new ArrayList<ProfileBean>();
		for (CredentialBean credentialBean : cblist) {
			query = session.createQuery("from ProfileBean where pId=?");
			query.setParameter(0, credentialBean);
			ProfileBean pb = new ProfileBean();
			pb = (ProfileBean) query.list().get(0);
			pblist.add(pb);
		}
		Map<ProfileBean, ArrayList<StudentSkillBean>> mapPBandSB = new HashMap<ProfileBean, ArrayList<StudentSkillBean>>();

		for (ProfileBean profileBean : pblist) {
			ArrayList<StudentSkillBean> sbList = new ArrayList<StudentSkillBean>();
			query = session.createQuery("from StudentSkillBean where pId=?");
			query.setParameter(0, profileBean.getpId());
			sbList = (ArrayList<StudentSkillBean>) query.list();
			mapPBandSB.put(profileBean, sbList);
		}
		return mapPBandSB;
	}

	@SuppressWarnings("unchecked")
	public Map<ProfileBean, ArrayList<StudentSkillBean>> viewAllTrainers() {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from CredentialBean where type='t'");
		ArrayList<CredentialBean> cblist = (ArrayList<CredentialBean>) query.list();

		ArrayList<ProfileBean> pblist = new ArrayList<ProfileBean>();
		for (CredentialBean credentialBean : cblist) {
			query = session.createQuery("from ProfileBean where pId=?");
			query.setParameter(0, credentialBean);
			ProfileBean pb = new ProfileBean();
			pb = (ProfileBean) query.list().get(0);
			pblist.add(pb);
		}
		Map<ProfileBean, ArrayList<StudentSkillBean>> mapPBandSB = new HashMap<ProfileBean, ArrayList<StudentSkillBean>>();

		for (ProfileBean profileBean : pblist) {
			ArrayList<StudentSkillBean> sbList = new ArrayList<StudentSkillBean>();
			query = session.createQuery("from StudentSkillBean where pId=?");
			query.setParameter(0, profileBean.getpId());
			sbList = (ArrayList<StudentSkillBean>) query.list();
			mapPBandSB.put(profileBean, sbList);
		}
		return mapPBandSB;
	}
	
	public String iSchedule(String[] interviewer, String[] interviewee, Date iDate) {

		try {
			SimpleDateFormat sim = new SimpleDateFormat("yyyy-MM-dd HH:mm");
			Session session = sessionFactory.getCurrentSession();
			InterviewBean ib = new InterviewBean();
			ib.setInterviewId(sim.format(iDate));
			ib.setiDate(iDate);
			session.save(ib);

			for (int i = 0; i < interviewer.length; i++) {
				InterviewerBean interviewerBean = new InterviewerBean();
				interviewerBean.setInterviewerId(sim.format(iDate) + ":-:" + interviewer[i]);
				interviewerBean.setInterviewId(ib);
				CredentialBean cd = (CredentialBean) session.get(CredentialBean.class, interviewer[i]);
				interviewerBean.setpId(cd);
				session.save(interviewerBean);
			}

			for (int i = 0; i < interviewee.length; i++) {
				IntervieweeBean intervieweeBean = new IntervieweeBean();
				intervieweeBean.setIntervieweeId(sim.format(iDate) + ":-:" + interviewee[i]);
				intervieweeBean.setInterviewId(ib);
				CredentialBean cd = (CredentialBean) session.get(CredentialBean.class, interviewee[i]);
				intervieweeBean.setpId(cd);
				session.save(intervieweeBean);
			}
		} catch (Exception e) {
			e.printStackTrace();
			return "Failure";
		}

		return "Success";
	}

	@SuppressWarnings("unchecked")
	public Map<InterviewBean, Map<Map<ProfileBean, InterviewerBean>, Map<ProfileBean, IntervieweeBean>>> ViewAllScheduledInterview() {

		Map<InterviewBean, Map<Map<ProfileBean, InterviewerBean>, Map<ProfileBean, IntervieweeBean>>> interviewMap;
		try {
			interviewMap = new HashMap<InterviewBean, Map<Map<ProfileBean, InterviewerBean>, Map<ProfileBean, IntervieweeBean>>>();

			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from InterviewBean");
			ArrayList<InterviewBean> interviewBeanList = (ArrayList<InterviewBean>) query.list();
			System.out.println("Length of array List"+interviewBeanList.size());
			for (InterviewBean interviewBean : interviewBeanList) {
				query = session.createQuery("from InterviewerBean where interviewId=?");
				System.out.println("Printing object"+interviewBean);
				query.setParameter(0, interviewBean);
				ArrayList<InterviewerBean> interviewerBeanList = (ArrayList<InterviewerBean>) query.list();
				System.out.println("Length of array List"+interviewerBeanList.size());
				Map<ProfileBean, InterviewerBean> pbInterviewerMap = new HashMap<ProfileBean, InterviewerBean>();
				for (InterviewerBean interviewerBean : interviewerBeanList) {
					query = session.createQuery("from ProfileBean where pId=?");
					System.out.println("arguments"+interviewerBean.getpId());
					query.setParameter(0, interviewerBean.getpId());
					
					ProfileBean pb = new ProfileBean();
					pb = (ProfileBean) query.list().get(0);
					pbInterviewerMap.put(pb, interviewerBean);
				}

				query = session.createQuery("from IntervieweeBean where interviewId=?");
				query.setParameter(0, interviewBean);
				ArrayList<IntervieweeBean> intervieweeBeanList = (ArrayList<IntervieweeBean>) query.list();

				Map<ProfileBean, IntervieweeBean> pbIntervieweeMap = new HashMap<ProfileBean, IntervieweeBean>();
				for (IntervieweeBean intervieweeBean : intervieweeBeanList) {
					query = session.createQuery("from ProfileBean where pId=?");
					query.setParameter(0, intervieweeBean.getpId());
					ProfileBean pb = new ProfileBean();
					pb = (ProfileBean) query.list().get(0);
					pbIntervieweeMap.put(pb, intervieweeBean);
				}

				Map<Map<ProfileBean, InterviewerBean>, Map<ProfileBean, IntervieweeBean>> interviewMapNested = new HashMap<Map<ProfileBean, InterviewerBean>, Map<ProfileBean, IntervieweeBean>>();
				interviewMapNested.put(pbInterviewerMap, pbIntervieweeMap);
				interviewMap.put(interviewBean, interviewMapNested);
			}
		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
		System.out.println(interviewMap.toString());
		return interviewMap;
	}

	public String DeleteInterview(String[] interviewIDstoDelete) {

		try {
			for (String interviewID : interviewIDstoDelete) {
				Session session = sessionFactory.getCurrentSession();
				
				InterviewBean ib = (InterviewBean) session.get(InterviewBean.class, interviewID);
				Query query = session.createQuery("delete from InterviewerBean where interviewId=?");
				query.setParameter(0,ib);
				query.executeUpdate();
				query = session.createQuery("delete from IntervieweeBean where interviewId=?");
				query.setParameter(0, ib);
				query.executeUpdate();
				query = session.createQuery("delete from InterviewBean where interviewId=?");
				query.setParameter(0,interviewID);
				query.executeUpdate();
			}
		} catch (HibernateException e) {
			e.printStackTrace();
			return "Failure";
		}

		return "Success";
	}

	public String aa(String id) 
	{
		try
		{
		Session session = sessionFactory.getCurrentSession();
		CredentialBean cb = (CredentialBean) session.get(CredentialBean.class, id);
		if(cb.getStatus()==9999)
		{
			cb.setStatus(0);
		}
		else if(cb.getStatus()==1 || cb.getStatus()==0)
		{
			cb.setStatus(9999);
		}
		session.save(cb);
		return "success";
		}
		catch(HibernateException e)
		{
			e.printStackTrace();
			return "fail";
		}
		catch (Exception e) 
		{
			e.printStackTrace();
			return "fail";
		}
	}
	
	
	//vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv
	@Transactional(propagation=Propagation.REQUIRED,readOnly=true)
	public ProfileBean getProfileBean(String id){
		if(id!=null&&!id.equals("")){
		
		ArrayList<ProfileBean> pb=new ArrayList<ProfileBean>();
		Session session = sessionFactory.getCurrentSession();
		//profileBean=(ProfileBean) session.get(ProfileBean.class,id);
		
		SQLQuery query=session.createSQLQuery("select * from db_profile where pId=?");
		query.setString(0,id);
		query.addEntity(ProfileBean.class);
		pb=(ArrayList<ProfileBean>) query.list();
		//System.out.println(profileBean);
		for(ProfileBean p:pb){
			System.out.println(p);
			return p;
		
		}
		
		}
		return null;
	}

	public String addSkill(SkillBean skillBean) {
		Session s=sessionFactory.getCurrentSession();
		int skillId=(Integer) s.save(skillBean);
		if(skillId==0){
			return "failure";
		}
		else{
		return "Success";
		}
	}

	public int deleteSkill(int skillId){
		Session s=sessionFactory.getCurrentSession();
		SQLQuery query=s.createSQLQuery("delete from db_skill where skillid=?");
		query.setInteger(0, skillId);
		int count=query.executeUpdate();
		return count;
	}
	
	
	@Transactional(propagation=Propagation.REQUIRED,readOnly=true)
	public ArrayList<SkillBean> viewSkills() {
		
		ArrayList<SkillBean> skillBeans=new ArrayList<SkillBean>();
		Session session = sessionFactory.getCurrentSession();
		Query query=session.createQuery("from SkillBean");
		skillBeans=(ArrayList<SkillBean>) query.list();
		if(skillBeans.size()>0){
		return skillBeans;
		}
		else{
			System.out.println("list size is 0");
			return null;
		}
		
	}

	///////Manual Integration
	
public TreeMap<String, Integer> getStudentList(String skills) {
		
		System.out.println("Inside Skills of Dao"+skills);
		Session session = sessionFactory.getCurrentSession();
		 
		
		TreeMap<String,ArrayList<String>> skillStudentName = new TreeMap<String, ArrayList<String>>() ;
		
		String aiseHe[]=skills.split(",");
		
		for(String s: aiseHe){
			ArrayList<String> arr = new ArrayList<String>();
			ArrayList<String> arrayOfStudId = new ArrayList<String>();
			try {
				
				String sql = "select name from newdb.db_profile where pId in (select pId from newdb.db_studskill where skillId = (select skillId from newdb.db_skill where skillName=?))";
				String sql1 ="select pId from newdb.db_studskill where skillId = (select skillId from newdb.db_skill where skillName=?)";
				
				Query q = session.createSQLQuery(sql);
				q.setString(0, s);
			//	q.addEntity(ProfileBean.class);
				
				arr=(ArrayList<String>) q.list();
				
				Query q1=session.createSQLQuery(sql1);
				q1.setString(0, s);
				//q1.addEntity(StudentSkillBean.class);
				arrayOfStudId=(ArrayList<String>) q1.list();
				
				System.out.println("The array List ofstudents"+arr);
				System.out.println("The skill set for which "+s);
				System.out.println("Array of student Id:"+arrayOfStudId);
				skillStudentName.put(s, arr);
				
				ArrayList<String> testList=skillStudentName.get(s);
				ArrayList<String> studList=new ArrayList<String>();
				
				//////////////////Loop for finding common students
				Set keySkillStudentName=skillStudentName.keySet();
				
				
			
				


			
				
				
			} catch (Exception e) {
				System.out.println(e);
				e.printStackTrace();
				System.out.println(skillStudentName);
			}
			
			
		}
		
			//////////////////Loop for finding common students
		
		ArrayList<String> testList=skillStudentName.get(aiseHe[0]);
		System.out.println(testList);
		ArrayList<String> studList=new ArrayList<String>();
		
		for(int i=0;i<testList.size();i++)
		{
			
			if(skillStudentName.get(aiseHe[1]).contains(testList.get(i))&&skillStudentName.get(aiseHe[2]).contains(testList.get(i)))
				studList.add(testList.get(i));
			
		}
		
		System.out.println("Final List is"+studList);
		
		////////Calculating Marks.
		TreeMap<String, Integer> studMarksMap=new TreeMap<String, Integer>();
		for(int i=0;i<studList.size();i++){
			
			String sql="Select skillPoints from newdb.db_profile where name=?";
			Query sql1=session.createSQLQuery(sql);
			sql1.setString(0, studList.get(i));
			studMarksMap.put(studList.get(i), (Integer) sql1.list().get(0));
			
		}
		
		System.out.println(studMarksMap);
		System.out.println("Outside DAO");
		 return studMarksMap;
	}

	public ArrayList<String> getPidList(String[] arr) {
		
		ArrayList<String> al=new ArrayList<String>();
		System.out.println("In Dao for Interview Process");
		for(int i=0;i<arr.length;i++){
			
			String sql="select pId from newdb.db_profile where name=?";
			Session session = sessionFactory.getCurrentSession();
			Query q=session.createSQLQuery(sql);
			q.setString(0, arr[i]);
			al.add(i, (String) q.list().get(0));
			
			
		
			
			/*List<Map.Entry<String, Integer>> list = 
					new LinkedList<Map.Entry<String, Integer>>;*/
		
			
		}
		
		System.out.println(al);
		return al;

	}


	public ArrayList<SkillBean> displaySkill() {
		String hql="from SkillBean";
		Session session = sessionFactory.getCurrentSession();
		Query q = session
				.createQuery(hql);
		
		ArrayList<SkillBean> ssb=(ArrayList<SkillBean>) q.list();
		
		return ssb;
		
	}
	

}
