package jj.j2.sh.service;

import java.util.List;
import java.util.Map;

import jj.j2.sh.model.Coin;
import jj.j2.sh.model.Pay;

public interface PayService {

	Pay item(String companyId);

	List<Pay> list(String companyId);
	
	void delete(int paySeq);

	void order(String companyId, Map<Integer, Coin> cart);

	int sum(String companyId);

}
