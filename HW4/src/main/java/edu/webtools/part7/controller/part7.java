package edu.webtools.part7.controller;

import edu.webtools.part7.Utility.Utility;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/part7")
public class part7 {

    ClassPathXmlApplicationContext context =new ClassPathXmlApplicationContext("applicationContext.xml");
    Utility utility = context.getBean("Utility",Utility.class);
    @GetMapping("/home")
    public String showMessage(Model theModel){
        theModel.addAttribute("Utility",utility);
        return "part7/home";
    }
}
