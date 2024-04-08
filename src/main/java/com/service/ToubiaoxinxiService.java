package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.ToubiaoxinxiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.ToubiaoxinxiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.ToubiaoxinxiView;


/**
 * 投标信息
 *
 * @author 
 * @email 
 * @date 2021-05-14 08:20:01
 */
public interface ToubiaoxinxiService extends IService<ToubiaoxinxiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<ToubiaoxinxiVO> selectListVO(Wrapper<ToubiaoxinxiEntity> wrapper);
   	
   	ToubiaoxinxiVO selectVO(@Param("ew") Wrapper<ToubiaoxinxiEntity> wrapper);
   	
   	List<ToubiaoxinxiView> selectListView(Wrapper<ToubiaoxinxiEntity> wrapper);
   	
   	ToubiaoxinxiView selectView(@Param("ew") Wrapper<ToubiaoxinxiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<ToubiaoxinxiEntity> wrapper);
   	
}

