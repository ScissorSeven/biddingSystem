package com.dao;

import com.entity.ZhaobiaorenEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.ZhaobiaorenVO;
import com.entity.view.ZhaobiaorenView;


/**
 * 招标人
 * 
 * @author 
 * @email 
 * @date 2021-05-14 08:20:01
 */
public interface ZhaobiaorenDao extends BaseMapper<ZhaobiaorenEntity> {
	
	List<ZhaobiaorenVO> selectListVO(@Param("ew") Wrapper<ZhaobiaorenEntity> wrapper);
	
	ZhaobiaorenVO selectVO(@Param("ew") Wrapper<ZhaobiaorenEntity> wrapper);
	
	List<ZhaobiaorenView> selectListView(@Param("ew") Wrapper<ZhaobiaorenEntity> wrapper);

	List<ZhaobiaorenView> selectListView(Pagination page,@Param("ew") Wrapper<ZhaobiaorenEntity> wrapper);
	
	ZhaobiaorenView selectView(@Param("ew") Wrapper<ZhaobiaorenEntity> wrapper);
	
}
