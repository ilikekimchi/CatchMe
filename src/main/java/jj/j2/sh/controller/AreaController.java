package jj.j2.sh.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import jj.j2.sh.model.Area;
import jj.j2.sh.model.Job;
import jj.j2.sh.service.AreaService;
import jj.j2.sh.service.JobService;

@RestController
@RequestMapping("/area")
public class AreaController {
   
	@Autowired
	AreaService areaService;
	
	@GetMapping
	List<Area> list() {
		
		return areaService.list();
	}
	
	@PostMapping
	List<Area> area2List(@RequestBody int areaCode) {
		
		return areaService.area2List(areaCode);
	}
	
	
}