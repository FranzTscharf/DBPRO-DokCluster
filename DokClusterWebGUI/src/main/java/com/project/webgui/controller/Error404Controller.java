package com.project.webgui.controller;

import org.springframework.boot.autoconfigure.web.ErrorController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Error404Controller implements ErrorController{


   private static final String PATH = "/error";
   @RequestMapping(value = PATH)
   public ModelAndView error() {
      ModelAndView mvn = new ModelAndView("content/error");
      return mvn;
   }

   @Override
   public String getErrorPath() {
      return PATH;
   }

}
