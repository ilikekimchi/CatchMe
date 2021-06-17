package jj.j2.sh.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import jj.j2.sh.dao.AreaDao;
import jj.j2.sh.dao.CareerDao;
import jj.j2.sh.dao.CertificateDao;
import jj.j2.sh.dao.JobDao;
import jj.j2.sh.dao.ProfileDao;
import jj.j2.sh.dao.SkillDao;
import jj.j2.sh.model.Area;
import jj.j2.sh.model.Career;
import jj.j2.sh.model.Certificate;
import jj.j2.sh.model.Customer;
import jj.j2.sh.model.Job;
import jj.j2.sh.model.Profile;
import jj.j2.sh.model.Skill;
import jj.j2.sh.model.User;
import jj.j2.sh.util.Pager;

@Service
public class ProfileServiceImpl implements ProfileService {

	@Autowired
	ProfileDao dao;
		
	@Autowired
	SkillDao daoSkill;
	
	@Autowired
	AreaDao daoArea;
	
	@Autowired
	CareerDao daoCareer;
	
	@Autowired
	CertificateDao daoCertificate;
	
	@Autowired
	JobDao daoJob;
	
	@Override
	public List<Profile> list(String customerId) {
		return dao.list(customerId);
	}
	
	@Override
	@Transactional
	public void add(String customerId, String customerName, String customerAddress, String customerGender,
			String customerPhone, Date customerBirthday, String skillContent, String careerCompany, String careerDate,
			String careerWork, String certificateName, Date certificateDate, String certificateWriting, Job job,
			Area area, Profile item) {
		
		//이력서 추가
		item.setCustomerId(customerId);
		item.setJobSeq(job.getJobSeq());
		item.setAreaSeq(area.getAreaSeq());
		
		dao.add(item);
		
		//기술 추가
		Skill skill = new Skill();
		
		skill.setProfileSeq(item.getProfileSeq());
		skill.setSkillContent(skillContent);
						
		daoSkill.add(skill);
		
		//경력 추가
		Career career = new Career();
		
		career.setProfileSeq(item.getProfileSeq());
		career.setCareerCompany(careerCompany);
		career.setCareerDate(careerDate);
		career.setCareerWork(careerWork);
		
		daoCareer.add(career);
		
		//자격/면허 추가
		Certificate certificate = new Certificate();
		
		certificate.setProfileSeq(item.getProfileSeq());
		certificate.setCertificateName(certificateName);
		certificate.setCertificateDate(certificateDate);
		certificate.setCertificateWriting(certificateWriting);
		
		daoCertificate.add(certificate);
		
		
	}
	
	@Override
	public Profile item(int profileSeq) {
		return dao.item(profileSeq);
	}
	
	@Override
	@Transactional
	public void update(Skill skill, Area area, Career career, Certificate certificate, 
			Job job, Profile item) {
		//지역 수정		
		daoArea.update(area);
		
		//직업 수정
		daoJob.update(job);
		
		//이력서 수정
		dao.update(item);
		
		//기술 수정
		daoSkill.update(skill);
		
		//경력 수정
		daoCareer.update(career);
		
		//자격/면허 수정
		daoCertificate.update(certificate);
		
	}

	@Override
	public void delete(String customerId) {
		dao.delete(customerId);
	}
	
	@Override
	public List<Profile> listAll(Pager pager) {
		int total = dao.total(pager);
		
		pager.setTotal(total);
		
		return dao.listAll(pager);
	}
	
	@Override
	public void profileCheck(Profile item) {
		dao.profileCheck(item);
	}

	@Override
	@Transactional
	public void dummy(Customer customer,Skill skill, Area area, Career career, Certificate certificate, 
			Job job, Profile item) {
		for(int index=1; index < 100; index++) {
			//직업 추가
			job.setJobSeq(index + 100000);
			job.setJobCode(index + 100000);
			job.setJobLarge("대직업" + index);
			job.setJobSmall("소직업" + index);
			
			daoJob.add(job);
			
			//지역 추가
			area.setAreaSeq(index + 100000);
			area.setAreaCode(index + 100000);
			area.setArea1("희망지역" + index);
			area.setArea2("희망시군구" + index);
			
			daoArea.add(area);
			
			//이력서 추가
			item.setCustomerId(customer.getCustomerId());
			item.setJobSeq(job.getJobSeq());
			item.setAreaSeq(area.getAreaSeq());
			item.setProfileImg("이미지" + index);
			item.setProfileMoney(index);
			item.setProfileState(1);
			item.setProfileSchool("학교" + index);
			item.setProfileSchoolSkill("전공" + index);
			item.setProfileSchoolState("학력" + index);
			item.setProfileArmy("군필" + index);
			item.setProfileArmyWriting("면제사유" + index);
			item.setProfileWriting("한줄소개" + index);
			item.setProfileTime("연락가능시간" + index);
			item.setProfileCheck(0);
			item.setProfileDate(null);
			
			dao.add(item);
			
			//기술 추가
			skill.setProfileSeq(item.getProfileSeq());
			skill.setSkillContent("기술/능력" + index);
			
			daoSkill.add(skill);
			
			//경력 추가
			career.setProfileSeq(item.getProfileSeq());
			career.setCareerCompany("회사명" + index);
			career.setCareerDate("경력" + index);
			career.setCareerWork("담당업무" + index);
			
			daoCareer.add(career);
			
			//자격/면허 추가
			certificate.setProfileSeq(item.getProfileSeq());
			certificate.setCertificateName("자격증" + index);
			certificate.setCertificateDate(null);
			certificate.setCertificateWriting("시행처" + index);
			
			daoCertificate.add(certificate);
			
		}
	}

	@Override
	public void init() {
		Pager pager = new Pager();
		pager.setPage(1);
		
		while(dao.total(pager) > 0) {
			List<Profile> list = dao.listAll(pager);
			
			for(Profile item : list)
				dao.delete2(item.getProfileSeq());
	}

}

	@Override
	public void delete2(int profileSeq) {
		dao.delete2(profileSeq);
	}

	@Override
	public void rsPw(String id, String pwd) {
		User user = new User();
		user.setId(id);
		user.setPwd(pwd);
		if(id != null) {
	
			}else{
	
			}

	}

}
