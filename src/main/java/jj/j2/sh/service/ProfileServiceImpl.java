package jj.j2.sh.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import jj.j2.sh.dao.AreaDao;
import jj.j2.sh.dao.CareerDao;
import jj.j2.sh.dao.CertificateDao;
import jj.j2.sh.dao.ProfileDao;
import jj.j2.sh.dao.SkillDao;
import jj.j2.sh.model.Area;
import jj.j2.sh.model.Career;
import jj.j2.sh.model.Certificate;
import jj.j2.sh.model.Customer;
import jj.j2.sh.model.Profile;
import jj.j2.sh.model.Skill;
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
	
	@Override
	public List<Profile> list(String customerId) {
		return dao.list(customerId);
	}
	
	@Override
	@Transactional
	public void add(String customerId, String customerName, String customerAddress, String customerGender,
			String customerPhone, Date customerBirthday, String skillContent, String area1, String area2,
			String careerCompany, String careerDate, String careerWork, String careerCategory, String certificateName,
			Date certificateDate, String certificateWriting, Profile item) {
		
		item.setCustomerId(customerId);	
		
		dao.add(item);
		
		//기술 추가
		Skill skill = new Skill();
		
		skill.setProfileSeq(item.getProfileSeq());
		skill.setSkillContent(skillContent);
		
		daoSkill.add(skill);
		
		//지역 추가
		Area area = new Area();
		
		area.setProfileSeq(item.getProfileSeq());
		area.setArea1(area1);
		area.setArea2(area2);
		
		daoArea.add(area);
		
		//경력 추가
		Career career = new Career();
		
		career.setProfileSeq(item.getProfileSeq());
		career.setCareerCompany(careerCompany);
		career.setCareerDate(careerDate);
		career.setCareerWork(careerWork);
		career.setCareerCategory(careerCategory);
		
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
	public void update(Skill skill, Area area, Career career, Certificate certificate, Profile item) {
		dao.update(item);
		
		//기술 수정
		daoSkill.update(skill);
		
		//지역 수정		
		daoArea.update(area);
		
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
	public void dummy(Customer customer,Skill skill, Area area, Career career, Certificate certificate, Profile item) {
		for(int index=1; index < 100; index++) {
			item.setCustomerId(customer.getCustomerId());
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
			
			//지역 추가
			area.setProfileSeq(item.getProfileSeq());
			area.setArea1("희망지역" + index);
			area.setArea2("희망시군구" + index);
			
			daoArea.add(area);
			
			//경력 추가
			career.setProfileSeq(item.getProfileSeq());
			career.setCareerCompany("회사명" + index);
			career.setCareerDate("경력" + index);
			career.setCareerWork("담당업무" + index);
			career.setCareerCategory("직급/직책" + index);
			
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
}
