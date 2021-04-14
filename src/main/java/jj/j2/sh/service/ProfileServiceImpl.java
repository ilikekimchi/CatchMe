package jj.j2.sh.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import jj.j2.sh.dao.ProfileDao;
import jj.j2.sh.dao.SkillDao;
import jj.j2.sh.model.Profile;
import jj.j2.sh.model.Skill;

@Service
public class ProfileServiceImpl implements ProfileService {

	@Autowired
	ProfileDao dao;
	
	@Autowired
	SkillDao daoSkill;
	
	@Override
	public List<Profile> list(String customerId) {		
		return dao.list(customerId);
	}

	@Override
	@Transactional
	public void add(String customerId, String customerNnm, String skillContent, Profile item) {
		item.setCustomerId(customerId);
		item.setCustomerNnm(customerNnm);
		
		dao.add(item);
		
		Skill skill = new Skill();
		
		skill.setCustomerId(item.getCustomerId());
		skill.setProfileSeq(item.getProfileSeq());
		skill.setSkillContent(skillContent);
		
		daoSkill.add(skill);
	}

	@Override
	public Profile item(String customerId) {
		return dao.item(customerId);
	}

	@Override
	@Transactional
	public void update(Skill skill, Profile item) {
		dao.update(item);
		
		skill.setProfileSeq(item.getProfileSeq());
		skill.setSkillContent(item.getSkillContent());
		
		daoSkill.update(skill);
	}

	@Override
	public void delete(int profileSeq) {
		dao.delete(profileSeq);
	}

	@Override
	public void profileCheck(Profile item) {
		dao.profileCheck(item);
	}

	@Override
	public List<Profile> listAll() {
		return dao.listAll();
	}

	@Override
	public Profile item(int profileSeq) {
		return dao.item(profileSeq);
	}
}
