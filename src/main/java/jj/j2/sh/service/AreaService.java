package jj.j2.sh.service;

import java.util.List;

import jj.j2.sh.model.Area;

public interface AreaService {

	List<Area> list();

	List<Area> area2List(int areaCode);

}