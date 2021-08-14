package jj.j2.sh.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import jj.j2.sh.model.Customer;

@Repository
public class CustomerDaoImpl implements CustomerDao {
	
	@Autowired
	SqlSession sql;

	@Override
	public List<Customer> list(String customerId) {
		return sql.selectList("customer.list", customerId);
	}

	@Override
	public void add(Customer item) {
		sql.insert("customer.add", item);
	}

	@Override
	public Customer item(String customerId) {
		return sql.selectOne("customer.item", customerId);
	}
	
	@Override
	public void update(Customer item) {
		sql.update("customer.update", item);
	}

	@Override
	public void delete(String customerId) {
		sql.delete("customer.delete", customerId);
	}

	@Override
	public Customer login(Customer item) {
		return sql.selectOne("customer.login", item);
	}

	@Override
	public List<Customer> listAll() {
		return sql.selectList("customer.listAll");
	}

	@Override
	public List<Customer> listAdmin() {
		return sql.selectList("customer.listAdmin");
	}

}
