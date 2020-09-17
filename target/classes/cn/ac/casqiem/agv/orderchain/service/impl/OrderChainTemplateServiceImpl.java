package cn.ac.casqiem.agv.orderchain.service.impl;

import cn.ac.casqiem.agv.orderchain.entity.OrderChainTemplate;
import cn.ac.casqiem.agv.orderchain.mapper.OrderChainTemplateMapper;
import cn.ac.casqiem.agv.orderchain.service.OrderChainTemplateService;
import org.springframework.stereotype.Service;


import javax.annotation.Resource;

@Service
public class OrderChainTemplateServiceImpl  implements OrderChainTemplateService {
    @Resource
    private OrderChainTemplateMapper orderChainTemplateMapper;


    @Override
    public OrderChainTemplate getOneByName(String name) {
        return orderChainTemplateMapper.findOneByName(name);
    }

    @Override
    public OrderChainTemplate getById(Integer orderChainId) {
        return orderChainTemplateMapper.getById(orderChainId);
    }
}
