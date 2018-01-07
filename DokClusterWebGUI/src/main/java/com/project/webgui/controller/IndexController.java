package com.project.webgui.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class IndexController {

   @RequestMapping("/")
   public String index() {
      return "content/index";
   }

   @RequestMapping("profile")
   public ModelAndView profile() {
      ModelAndView mvn = new ModelAndView("content/profile");
      return mvn;
   }

   @RequestMapping("/404")
   public ModelAndView error404() {
      ModelAndView mvn = new ModelAndView("content/hello");
      return mvn;
   }

}
