package com.dao;

import com.entity.PingbiaoxinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.PingbiaoxinxiVO;
import com.entity.view.PingbiaoxinxiView;


/**
 * 评标信息
 * 
 * @author 
 * @email 
 * @date 2021-05-14 08:20:01
 */
public interface PingbiaoxinxiDao extends BaseMapper<PingbiaoxinxiEntity> {
	
	List<PingbiaoxinxiVO> selectListVO(@Param("ew") Wrapper<PingbiaoxinxiEntity> wrapper);
	
	PingbiaoxinxiVO selectVO(@Param("ew") Wrapper<PingbiaoxinxiEntity> wrapper);
	
	List<PingbiaoxinxiView> selectListView(@Param("ew") Wrapper<PingbiaoxinxiEntity> wrapper);

	List<PingbiaoxinxiView> selectListView(Pagination page,@Param("ew") Wrapper<PingbiaoxinxiEntity> wrapper);
	
	PingbiaoxinxiView selectView(@Param("ew") Wrapper<PingbiaoxinxiEntity> wrapper);
	
}
