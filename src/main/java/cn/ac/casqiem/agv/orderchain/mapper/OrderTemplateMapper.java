package cn.ac.casqiem.agv.orderchain.mapper;

import cn.ac.casqiem.agv.orderchain.entity.OrderTemplate;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;


@Mapper
public interface OrderTemplateMapper {

    @Select("SELECT * FROM order_template WHERE ORDER_CHAIN_TEMPLATE_ID = #{id}")
    List<OrderTemplate> getOrderListByTemplateID(@Param("id") Integer id);
}
