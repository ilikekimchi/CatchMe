package jj.j2.sh.service;

import java.util.List;

import jj.j2.sh.model.Customer;

public interface CustomerService {

	List<Customer> list(String customerId);

	void add(Customer item);

	Customer item(String customerId);

	void update(Customer item);

	void delete(String customerId);

	boolean login(Customer item);

	
}
