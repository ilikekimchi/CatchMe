package jj.j2.sh.service;

import java.util.Date;

import java.util.List;

import jj.j2.sh.model.Area;
import jj.j2.sh.model.Career;
import jj.j2.sh.model.Certificate;
import jj.j2.sh.model.Profile;
import jj.j2.sh.model.Skill;

public interface ProfileService {

	List<Profile> list(String customerId);
	
	void add(String customerId, String customerName, String customerAddress, String customerGender,
			String customerPhone, Date customerBirthday, String skillContent, String area1, String area2,
			String careerCompany, String careerDate, String careerWork, String careerCategory, String certificateName,
			Date certificateDate, String certificateWriting, Profile item);

	Profile item(int profileSeq);

	void update(Career career, Certificate certificate, Skill skill, Area area, Profile item);

	void delete(String customerId);

	List<Profile> listAll();

	void profileCheck(Profile item);


}
