package jj.j2.sh.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jj.j2.sh.dao.CustomerDao;
import jj.j2.sh.model.Customer;

@Service
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	CustomerDao dao;
	
	@Override
	public List<Customer> list(String customerId) {
		return dao.list(customerId);
	}

	@Override
	public void add(Customer item) {
		dao.add(item);
	}

	@Override
	public Customer item(String customerId) {
		return dao.item(customerId);
	}

	@Override
	public void update(Customer item) {
		dao.update(item);
	}

	@Override
	public void delete(String customerId) {
		dao.delete(customerId);
	}

	@Override
	public boolean login(Customer item) {
		Customer customer = dao.login(item);
		if(customer != null) {
			
			item.setCustomerPw(null);
			item.setCustomerName(customer.getCustomerName() );
			item.setCustomerNnm(customer.getCustomerNnm() );
			item.setCustomerRole(customer.getCustomerRole());
			
			return true;
		}
		
		return false;
	}

	
}
