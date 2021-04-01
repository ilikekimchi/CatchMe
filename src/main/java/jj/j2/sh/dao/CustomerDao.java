package jj.j2.sh.dao;

import java.util.List;

import jj.j2.sh.model.Customer;

public interface CustomerDao {

	List<Customer> list(String customerId);

	void add(Customer item);

	Customer item(String customerId);

	void update(Customer item);

	void delete(String customerId);

	Customer login(Customer item);

	
}
