package com.dao;

import com.entity.ToubiaorenEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.ToubiaorenVO;
import com.entity.view.ToubiaorenView;


/**
 * 投标人
 * 
 * @author 
 * @email 
 * @date 2021-05-14 08:20:01
 */
public interface ToubiaorenDao extends BaseMapper<ToubiaorenEntity> {
	
	List<ToubiaorenVO> selectListVO(@Param("ew") Wrapper<ToubiaorenEntity> wrapper);
	
	ToubiaorenVO selectVO(@Param("ew") Wrapper<ToubiaorenEntity> wrapper);
	
	List<ToubiaorenView> selectListView(@Param("ew") Wrapper<ToubiaorenEntity> wrapper);

	List<ToubiaorenView> selectListView(Pagination page,@Param("ew") Wrapper<ToubiaorenEntity> wrapper);
	
	ToubiaorenView selectView(@Param("ew") Wrapper<ToubiaorenEntity> wrapper);
	
}
