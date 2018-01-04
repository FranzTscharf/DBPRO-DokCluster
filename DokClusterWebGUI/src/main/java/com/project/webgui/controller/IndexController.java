package com.project.webgui.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class IndexController {

   @RequestMapping("/")
   public String index() {
      return "index";
   }

   @RequestMapping("/profile")
   public ModelAndView profil() {
      ModelAndView mvn = new ModelAndView("profile");
      return mvn;
   }

}
