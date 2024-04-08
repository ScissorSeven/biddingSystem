package com.dao;

import com.entity.ZhongbiaoxinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.ZhongbiaoxinxiVO;
import com.entity.view.ZhongbiaoxinxiView;


/**
 * 中标信息
 * 
 * @author 
 * @email 
 * @date 2021-05-14 08:20:01
 */
public interface ZhongbiaoxinxiDao extends BaseMapper<ZhongbiaoxinxiEntity> {
	
	List<ZhongbiaoxinxiVO> selectListVO(@Param("ew") Wrapper<ZhongbiaoxinxiEntity> wrapper);
	
	ZhongbiaoxinxiVO selectVO(@Param("ew") Wrapper<ZhongbiaoxinxiEntity> wrapper);
	
	List<ZhongbiaoxinxiView> selectListView(@Param("ew") Wrapper<ZhongbiaoxinxiEntity> wrapper);

	List<ZhongbiaoxinxiView> selectListView(Pagination page,@Param("ew") Wrapper<ZhongbiaoxinxiEntity> wrapper);
	
	ZhongbiaoxinxiView selectView(@Param("ew") Wrapper<ZhongbiaoxinxiEntity> wrapper);
	
}
