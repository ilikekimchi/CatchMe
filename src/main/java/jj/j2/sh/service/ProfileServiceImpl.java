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
import jj.j2.sh.model.Profile;
import jj.j2.sh.model.Skill;

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
	public void update(Career career, Certificate certificate, Skill skill, Area area, Profile item) {
		dao.update(item);
		
		//기술 수정		
		skill.setProfileSeq(item.getProfileSeq());
		skill.setSkillContent(item.getSkillContent());
		
		daoSkill.update(skill);
		
		//지역 수정		
		area.setProfileSeq(item.getProfileSeq());
		area.setArea1(item.getArea1());
		area.setArea2(item.getArea2());
		
		daoArea.update(area);
		
		//경력 수정		
		career.setProfileSeq(item.getProfileSeq());
		career.setCareerCompany(item.getCareerCompany());
		career.setCareerDate(item.getCareerDate());
		career.setCareerWork(item.getCareerWork());
		career.setCareerCategory(item.getCareerCategory());
		
		daoCareer.update(career);
		
		//자격/면허 수정
		certificate.setProfileSeq(item.getProfileSeq());
		certificate.setCertificateName(item.getCertificateName());
		certificate.setCertificateDate(item.getCertificateDate());
		certificate.setCertificateWriting(item.getCertificateWriting());
		
		daoCertificate.update(certificate);
	}

	@Override
	public void delete(String customerId) {
		dao.delete(customerId);
	}

	@Override
	public List<Profile> listAll() {
		return dao.listAll();
	}

	@Override
	public void profileCheck(Profile item) {
		dao.profileCheck(item);
	}


}
