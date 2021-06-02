package jj.j2.sh.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jj.j2.sh.dao.CompanyDao;
import jj.j2.sh.model.Company;

@Service
public class CompanyServiceImpl implements CompanyService {

	@Autowired
	CompanyDao dao;
	
	@Override
	public List<Company> list(String companyId) {
		return dao.list(companyId);
	}

	@Override
	public void add(Company item) {
		dao.add(item);
	}

	@Override
	public Company item(String companyId) {
		return dao.item(companyId);
	}

	@Override
	public void update(Company item) {
		dao.update(item);
	}

	@Override
	public void delete(String companyId) {
		dao.delete(companyId);
	}

	@Override
	public boolean login0(Company item) {
		Company company = dao.login0(item);
		if(company != null) {
			item.setCompanyPw(null);
			item.setCompanyName(company.getCompanyName() );
			item.setCompanyImg(company.getCompanyImg() );
			item.setCompanyRole(company.getCompanyRole());
			
			return true;
		}
		
		return false;
		
	}

}
