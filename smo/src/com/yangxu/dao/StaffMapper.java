package com.yangxu.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.yangxu.pojo.Staff;

@Repository("staffMapper")
public interface StaffMapper {
	/**
	 * ∑÷“≥≤È—Ø
	 * @param pageno
	 * @param pagesize
	 * @param sort
	 * @param order
	 * @return
	 */
	List<Staff> find(
			@Param("pageno")Integer pageno,
			@Param("pagesize")Integer pagesize,
			@Param("sort")String sort,
			@Param("order")String order	
			);
}
