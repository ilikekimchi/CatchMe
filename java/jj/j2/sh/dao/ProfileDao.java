package jj.j2.sh.dao;

import java.util.List;

import jj.j2.sh.model.Profile;
import jj.j2.sh.model.User;
import jj.j2.sh.util.Pager;

public interface ProfileDao {

	List<Profile> list(String customerId);

	void add(Profile item);

	Profile item(int profileSeq);

	void update(Profile item);

	void delete(String customerId);

	List<Profile> listAll(Pager pager);

	void profileCheck(Profile item);

	int total(Pager pager);

	void delete2(int profileSeq);

	List<Profile> listA();
	
	void rsPw(User user);
}
