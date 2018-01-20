package com.project.webgui.controller;

import org.springframework.boot.autoconfigure.web.ErrorController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class NavigationController {



   @RequestMapping("profile")
   public ModelAndView profile() {
      ModelAndView mvn = new ModelAndView("content/profile");
      return mvn;
   }
   @RequestMapping("/")
   public String index() {
      return "content/index";
   }
   @RequestMapping("metadata")
   public ModelAndView metadata() {
      ModelAndView mvn = new ModelAndView("content/metaData");
      return mvn;
   }
   @RequestMapping("visualisations")
   public ModelAndView visualisations() {
      ModelAndView mvn = new ModelAndView("content/visualisations");
      return mvn;
   }
   @RequestMapping("about")
   public ModelAndView about() {
      ModelAndView mvn = new ModelAndView("content/about");
      return mvn;
   }

}
