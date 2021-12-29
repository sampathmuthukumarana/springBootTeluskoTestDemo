package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.ResJsonOut;
import com.example.demo.dao.AlienRepo;
import com.example.demo.model.Alien;
import com.example.service.AlienService;

@Controller
public class AlienController {
	@Autowired
	AlienService alienService;

	@RequestMapping("/")
	public ModelAndView getHome() {
		ModelAndView mv = new ModelAndView("home.jsp");
		List<Alien> aliens = alienService.loadData();
		mv.getModelMap().addAttribute("aliens", aliens);
		return mv;
	}

	@RequestMapping("/addAlien")
	public ModelAndView saveData(Alien alien) {
		ModelAndView mv = new ModelAndView("home.jsp");
		alienService.save(alien);
		List<Alien> aliens = alienService.loadData();
		mv.getModelMap().addAttribute("aliens", aliens);
		return mv;
	}

	@PostMapping(value = "/deleteAlien/{rowNumber}", produces = "application/json")
	public @ResponseBody ResJsonOut deleteAlien(@PathVariable("rowNumber") Integer rowNumber) {
		alienService.delete(rowNumber);
		/*
		 * ModelAndView mv = new ModelAndView("home.jsp"); List<Alien> aliens =
		 * alienService.loadData() ; mv.getModelMap().addAttribute("aliens",aliens);
		 */
		// String msg = "success"
		ResJsonOut obj = new ResJsonOut();
		obj.setStatus(true);
		return obj;

		/*
		 * String msg = "success"; return ResponseEntity.ok(msg);
		 */
	}

}
