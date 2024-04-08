package com.dao;

import com.entity.PingbiaorenEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.PingbiaorenVO;
import com.entity.view.PingbiaorenView;


/**
 * 评标人
 * 
 * @author 
 * @email 
 * @date 2021-05-14 08:20:01
 */
public interface PingbiaorenDao extends BaseMapper<PingbiaorenEntity> {
	
	List<PingbiaorenVO> selectListVO(@Param("ew") Wrapper<PingbiaorenEntity> wrapper);
	
	PingbiaorenVO selectVO(@Param("ew") Wrapper<PingbiaorenEntity> wrapper);
	
	List<PingbiaorenView> selectListView(@Param("ew") Wrapper<PingbiaorenEntity> wrapper);

	List<PingbiaorenView> selectListView(Pagination page,@Param("ew") Wrapper<PingbiaorenEntity> wrapper);
	
	PingbiaorenView selectView(@Param("ew") Wrapper<PingbiaorenEntity> wrapper);
	
}
