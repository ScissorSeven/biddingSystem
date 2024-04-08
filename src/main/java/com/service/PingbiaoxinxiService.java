package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.PingbiaoxinxiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.PingbiaoxinxiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.PingbiaoxinxiView;


/**
 * 评标信息
 *
 * @author 
 * @email 
 * @date 2021-05-14 08:20:01
 */
public interface PingbiaoxinxiService extends IService<PingbiaoxinxiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<PingbiaoxinxiVO> selectListVO(Wrapper<PingbiaoxinxiEntity> wrapper);
   	
   	PingbiaoxinxiVO selectVO(@Param("ew") Wrapper<PingbiaoxinxiEntity> wrapper);
   	
   	List<PingbiaoxinxiView> selectListView(Wrapper<PingbiaoxinxiEntity> wrapper);
   	
   	PingbiaoxinxiView selectView(@Param("ew") Wrapper<PingbiaoxinxiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<PingbiaoxinxiEntity> wrapper);
   	
}

