package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.ZhaobiaorenEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.ZhaobiaorenVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.ZhaobiaorenView;


/**
 * 招标人
 *
 * @author 
 * @email 
 * @date 2021-05-14 08:20:01
 */
public interface ZhaobiaorenService extends IService<ZhaobiaorenEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<ZhaobiaorenVO> selectListVO(Wrapper<ZhaobiaorenEntity> wrapper);
   	
   	ZhaobiaorenVO selectVO(@Param("ew") Wrapper<ZhaobiaorenEntity> wrapper);
   	
   	List<ZhaobiaorenView> selectListView(Wrapper<ZhaobiaorenEntity> wrapper);
   	
   	ZhaobiaorenView selectView(@Param("ew") Wrapper<ZhaobiaorenEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<ZhaobiaorenEntity> wrapper);
   	
}

