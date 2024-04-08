package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.ToubiaorenEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.ToubiaorenVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.ToubiaorenView;


/**
 * 投标人
 *
 * @author 
 * @email 
 * @date 2021-05-14 08:20:01
 */
public interface ToubiaorenService extends IService<ToubiaorenEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<ToubiaorenVO> selectListVO(Wrapper<ToubiaorenEntity> wrapper);
   	
   	ToubiaorenVO selectVO(@Param("ew") Wrapper<ToubiaorenEntity> wrapper);
   	
   	List<ToubiaorenView> selectListView(Wrapper<ToubiaorenEntity> wrapper);
   	
   	ToubiaorenView selectView(@Param("ew") Wrapper<ToubiaorenEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<ToubiaorenEntity> wrapper);
   	
}

