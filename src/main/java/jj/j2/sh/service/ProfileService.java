package jj.j2.sh.service;

import java.util.List;

import jj.j2.sh.model.Profile;

public interface ProfileService {

	List<Profile> list(String customerId);

	void add(Profile item);

	Profile item(String customerId);

	void update(Profile item);

	void delete(String customerId);

}
