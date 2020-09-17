package cn.ac.casqiem.agv.orderchain.mapper;

import cn.ac.casqiem.agv.orderchain.entity.OrderChainTemplate;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface OrderChainTemplateMapper  {

    @Select("SELECT * FROM order_chain_template WHERE NAME = #{name}")
    OrderChainTemplate findOneByName(@Param("name")String name);

    @Select("SELECT * FROM order_chain_template WHERE ID = #{id}")
    OrderChainTemplate getById(Integer orderChainId);
}
