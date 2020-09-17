package cn.ac.casqiem.agv.orderchain;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("cn.ac.casqiem.agv.orderchain.mapper")
public class OrderChainApplication {

    public static void main(String[] args) {
        SpringApplication.run(OrderChainApplication.class, args);
    }

}
