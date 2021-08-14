package jj.j2.sh.dao;

import java.util.List;

import jj.j2.sh.model.Company;

public interface CompanyDao {

	List<Company> list(String companyId);

	void add(Company item);

	Company item(String companyId);

	void update(Company item);

	void delete(String companyId);

	Company login0(Company item);

}
