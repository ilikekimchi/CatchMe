package jj.j2.sh.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import jj.j2.sh.model.Certificate;

@Repository
public class CertificateDaoImpl implements CertificateDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public void add(Certificate certificate) {
		sql.insert("certificate.add", certificate);
	}

	@Override
	public void update(Certificate certificate) {
		sql.update("certificate.update", certificate);
	}

}
