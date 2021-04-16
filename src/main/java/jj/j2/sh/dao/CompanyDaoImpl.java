package jj.j2.sh.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import jj.j2.sh.model.Company;

@Repository
public class CompanyDaoImpl implements CompanyDao {
	
	@Autowired
	SqlSession sql;

	@Override
	public List<Company> list(String companyId) {
		return sql.selectList("company.list", companyId);
	}

	@Override
	public void add(Company item) {
		sql.insert("company.add", item);
	}

	@Override
	public Company item(String companyId) {
		return sql.selectOne("company.item", companyId);
	}

	@Override
	public void update(Company item) {
		sql.update("company.update", item);
	}

	@Override
	public void delete(String companyId) {
		sql.delete("company.delete", companyId);
	}

	@Override
	public Company login0(Company item) {
		return sql.selectOne("company.login", item);
	}

}
