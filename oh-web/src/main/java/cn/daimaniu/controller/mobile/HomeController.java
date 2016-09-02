package cn.daimaniu.controller.mobile;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Author :chenqisheng
 * Date   :2016-09-01 18:32.
 */

@Controller
public class HomeController {
    @RequestMapping("/")
    public String welcome() {
        return "home";
    }
}
