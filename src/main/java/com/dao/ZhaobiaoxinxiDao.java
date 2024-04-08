package com.dao;

import com.entity.ZhaobiaoxinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.ZhaobiaoxinxiVO;
import com.entity.view.ZhaobiaoxinxiView;


/**
 * 招标信息
 * 
 * @author 
 * @email 
 * @date 2021-05-14 08:20:01
 */
public interface ZhaobiaoxinxiDao extends BaseMapper<ZhaobiaoxinxiEntity> {
	
	List<ZhaobiaoxinxiVO> selectListVO(@Param("ew") Wrapper<ZhaobiaoxinxiEntity> wrapper);
	
	ZhaobiaoxinxiVO selectVO(@Param("ew") Wrapper<ZhaobiaoxinxiEntity> wrapper);
	
	List<ZhaobiaoxinxiView> selectListView(@Param("ew") Wrapper<ZhaobiaoxinxiEntity> wrapper);

	List<ZhaobiaoxinxiView> selectListView(Pagination page,@Param("ew") Wrapper<ZhaobiaoxinxiEntity> wrapper);
	
	ZhaobiaoxinxiView selectView(@Param("ew") Wrapper<ZhaobiaoxinxiEntity> wrapper);
	
}
