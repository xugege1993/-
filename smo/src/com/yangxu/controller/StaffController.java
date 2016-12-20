package com.yangxu.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.yangxu.pojo.Staff;
import com.yangxu.service.StaffService;


import net.sf.json.JSON;
import net.sf.json.JSONSerializer;
import net.sf.json.JsonConfig;

@Controller
public class StaffController {
	@Resource(name = "staffService")
	private StaffService staffService;
	
	@RequestMapping("StaffList")
	public void StaffList(
			@RequestParam(value = "page", required = true) Integer page,
			@RequestParam(value = "rows", required = true) Integer rows,
		    @RequestParam(value = "sort", required = true) String sort,
		    @RequestParam(value = "order", required = true) String order,
		      HttpServletResponse response
			){
		  Integer pageno = (page - 1) * rows;
		  Integer pagesize = page * rows;
		  
		  List<Staff> pager = staffService.find(pageno, pagesize, sort, order);
		  JSON json = JSONSerializer.toJSON(pager);
		  try {
		      PrintWriter out = response.getWriter();
		      out.println(json.toString());
		      out.flush();
		      out.close();
		    } catch (IOException e) {
		      e.printStackTrace();
		    }
	} 
}
