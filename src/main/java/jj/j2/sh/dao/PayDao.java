package jj.j2.sh.dao;

import java.util.List;

import jj.j2.sh.model.Pay;

public interface PayDao {

	Pay item(String companyId);

	List<Pay> list(String companyId);

	void add(Pay item);

	void delete(int paySeq);

	int sum(String companyId);

}
