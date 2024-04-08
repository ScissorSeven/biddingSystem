package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.ZhongbiaoxinxiDao;
import com.entity.ZhongbiaoxinxiEntity;
import com.service.ZhongbiaoxinxiService;
import com.entity.vo.ZhongbiaoxinxiVO;
import com.entity.view.ZhongbiaoxinxiView;

@Service("zhongbiaoxinxiService")
public class ZhongbiaoxinxiServiceImpl extends ServiceImpl<ZhongbiaoxinxiDao, ZhongbiaoxinxiEntity> implements ZhongbiaoxinxiService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<ZhongbiaoxinxiEntity> page = this.selectPage(
                new Query<ZhongbiaoxinxiEntity>(params).getPage(),
                new EntityWrapper<ZhongbiaoxinxiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<ZhongbiaoxinxiEntity> wrapper) {
		  Page<ZhongbiaoxinxiView> page =new Query<ZhongbiaoxinxiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<ZhongbiaoxinxiVO> selectListVO(Wrapper<ZhongbiaoxinxiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public ZhongbiaoxinxiVO selectVO(Wrapper<ZhongbiaoxinxiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<ZhongbiaoxinxiView> selectListView(Wrapper<ZhongbiaoxinxiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public ZhongbiaoxinxiView selectView(Wrapper<ZhongbiaoxinxiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
