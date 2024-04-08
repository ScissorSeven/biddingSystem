package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.ZhongbiaoxinxiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.ZhongbiaoxinxiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.ZhongbiaoxinxiView;


/**
 * 中标信息
 *
 * @author 
 * @email 
 * @date 2021-05-14 08:20:01
 */
public interface ZhongbiaoxinxiService extends IService<ZhongbiaoxinxiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<ZhongbiaoxinxiVO> selectListVO(Wrapper<ZhongbiaoxinxiEntity> wrapper);
   	
   	ZhongbiaoxinxiVO selectVO(@Param("ew") Wrapper<ZhongbiaoxinxiEntity> wrapper);
   	
   	List<ZhongbiaoxinxiView> selectListView(Wrapper<ZhongbiaoxinxiEntity> wrapper);
   	
   	ZhongbiaoxinxiView selectView(@Param("ew") Wrapper<ZhongbiaoxinxiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<ZhongbiaoxinxiEntity> wrapper);
   	
}

