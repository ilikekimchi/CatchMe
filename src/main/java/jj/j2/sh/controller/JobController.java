package jj.j2.sh.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import jj.j2.sh.model.Job;
import jj.j2.sh.service.JobService;

@RestController
@RequestMapping("/job")
public class JobController {
   
   @Autowired
   JobService jobService;
   
   @GetMapping
   List<Job> list() {
      
      return jobService.list();
   }
   
   @PostMapping
   List<Job> jobList(@RequestBody int jobCode) {
      
      return jobService.jobList(jobCode);
   }
   
   
}