package com.dashboard.service;

import java.util.Map;

import com.dashboard.beans.ProfileBean;
import com.dashboard.beans.StudentSkillBean;

public interface Administrator {
//	String addDoctor(DoctorBean doctoerBean);
//	Boolean modifyDoctor(DoctorBean doctorBean);
//	ArrayList<DoctorBean> viewAllDoctors();
//	int removeDoctor(String doctorID);
//	ArrayList<DoctorBean> suggestDoctors(String patientId, Date date);
//	Map <PatientBean, AppointmentBean> viewPatientsByDate(Date appointmentDate);
	
	Map<ProfileBean, StudentSkillBean> viewAllStudents();
}
