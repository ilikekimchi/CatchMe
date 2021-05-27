package jj.j2.sh.dao;

import java.util.List;

import jj.j2.sh.model.Profile;
import jj.j2.sh.util.Pager;

public interface ProfileDao {

	List<Profile> list(String customerId);

	void add(Profile item);

	Profile item(int profileSeq);

	void update(Profile item);

	void delete(String customerId);

	//List<Profile> listAll(Pager pager);

	void profileCheck(Profile item);

	//int total(Pager pager);

	List<Profile> listAll();

	
}
