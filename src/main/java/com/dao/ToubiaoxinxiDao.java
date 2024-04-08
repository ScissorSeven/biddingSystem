package com.dao;

import com.entity.ToubiaoxinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.ToubiaoxinxiVO;
import com.entity.view.ToubiaoxinxiView;


/**
 * 投标信息
 * 
 * @author 
 * @email 
 * @date 2021-05-14 08:20:01
 */
public interface ToubiaoxinxiDao extends BaseMapper<ToubiaoxinxiEntity> {
	
	List<ToubiaoxinxiVO> selectListVO(@Param("ew") Wrapper<ToubiaoxinxiEntity> wrapper);
	
	ToubiaoxinxiVO selectVO(@Param("ew") Wrapper<ToubiaoxinxiEntity> wrapper);
	
	List<ToubiaoxinxiView> selectListView(@Param("ew") Wrapper<ToubiaoxinxiEntity> wrapper);

	List<ToubiaoxinxiView> selectListView(Pagination page,@Param("ew") Wrapper<ToubiaoxinxiEntity> wrapper);
	
	ToubiaoxinxiView selectView(@Param("ew") Wrapper<ToubiaoxinxiEntity> wrapper);
	
}
