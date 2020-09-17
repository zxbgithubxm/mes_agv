package cn.ac.casqiem.agv.orderchain.controller;

import cn.ac.casqiem.agv.orderchain.exception.ControllerExceptionResponse;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/dispatch/")
public class OrderChainController {

    @PostMapping("/orderChain")
    public String update()
    {
        return "hello";

    }



}
