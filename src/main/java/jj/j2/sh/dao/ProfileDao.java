package jj.j2.sh.dao;

import java.util.List;

import jj.j2.sh.model.Profile;

public interface ProfileDao {

	List<Profile> list(String customerId);

	void add(Profile item);

	Profile item(String customerId);

	void update(Profile item);

	void delete(int profileSeq);

	List<Profile> listAll();

	void profileCheck(Profile item);

	Profile item(int profileSeq);
	
}
