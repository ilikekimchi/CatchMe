package jj.j2.sh.service;

import java.util.List;

import jj.j2.sh.model.Company;

public interface CompanyService {

	List<Company> list(String companyId);

	void add(Company item);

	Company item(String companyId);

	void update(Company item);

	void delete(String companyId);

	boolean login0(Company item);

}
