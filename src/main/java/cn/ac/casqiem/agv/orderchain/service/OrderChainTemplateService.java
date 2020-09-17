package cn.ac.casqiem.agv.orderchain.service;

import cn.ac.casqiem.agv.orderchain.entity.OrderChainTemplate;

public interface OrderChainTemplateService {

    OrderChainTemplate getOneByName(String name);

    OrderChainTemplate getById(Integer orderChainId);
}
