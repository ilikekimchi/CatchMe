package jj.j2.sh.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jj.j2.sh.dao.AreaDao;
import jj.j2.sh.model.Area;

@Service
public class AreaServiceImpl implements AreaService {
	
	@Autowired
	AreaDao dao;
	
	@Override
	public List<Area> list() {
		
		return dao.list();
	}

	@Override
	public List<Area> area2List(int areaCode) {
		
		return dao.area2List(areaCode);
	}

}
