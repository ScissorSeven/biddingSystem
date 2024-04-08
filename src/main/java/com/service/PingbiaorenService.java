package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.PingbiaorenEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.PingbiaorenVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.PingbiaorenView;


/**
 * 评标人
 *
 * @author 
 * @email 
 * @date 2021-05-14 08:20:01
 */
public interface PingbiaorenService extends IService<PingbiaorenEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<PingbiaorenVO> selectListVO(Wrapper<PingbiaorenEntity> wrapper);
   	
   	PingbiaorenVO selectVO(@Param("ew") Wrapper<PingbiaorenEntity> wrapper);
   	
   	List<PingbiaorenView> selectListView(Wrapper<PingbiaorenEntity> wrapper);
   	
   	PingbiaorenView selectView(@Param("ew") Wrapper<PingbiaorenEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<PingbiaorenEntity> wrapper);
   	
}

