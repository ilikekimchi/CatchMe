package jj.j2.sh.service;

import java.util.List;

import jj.j2.sh.model.Profile;
import jj.j2.sh.model.Skill;

public interface ProfileService {

	List<Profile> list(String customerId);

	void add(String customerId, String customerNnm, String skillContent, Profile item);
	
	Profile item(String customerId);

	void update(Skill skill, Profile item);

	void delete(int profileSeq);

	void profileCheck(Profile item);

	List<Profile> listAll();

	Profile item(int profileSeq);

}
