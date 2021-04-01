package jj.j2.sh.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jj.j2.sh.dao.ProfileDao;
import jj.j2.sh.model.Profile;

@Service
public class ProfileServiceImpl implements ProfileService {

	@Autowired
	ProfileDao dao;
	
	@Override
	public List<Profile> list(String customerId) {		
		return dao.list(customerId);
	}

	@Override
	public void add(Profile item) {
		dao.add(item);
	}

	@Override
	public Profile item(String customerId) {
		return dao.item(customerId);
	}

	@Override
	public void update(Profile item) {
		dao.update(item);
	}

	@Override
	public void delete(String customerId) {
		dao.delete(customerId);
	}

}
