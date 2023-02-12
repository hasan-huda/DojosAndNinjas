package com.hasan.dojo.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.hasan.dojo.models.Dojo;
import com.hasan.dojo.services.DojoService;

@Controller
public class DojoController {
	@Autowired
	DojoService dojoService;
	@GetMapping("/")
	public String index() {
		return "index.jsp";
	}
	@GetMapping("/dojos/new")
	public String newDojo(
			@ModelAttribute("dojo") Dojo dojo
			) {
		return "new_dojo.jsp";
	}
	
	@PostMapping("/dojos/add")
	public String insertDojo(
			Model model,
			@Valid @ModelAttribute("dojo") Dojo dojo,
			BindingResult result
			){
		if(result.hasErrors()) {
			return "new_dojo.jsp";
		}
		dojoService.saveDojo(dojo);
		return "redirect:/";
	}
	@GetMapping("/dojos")
	public String showDojos(Model model) {
		List<Dojo> dojos=dojoService.fetchAllDojos();
		model.addAttribute("dojos", dojos);
		return "show_dojo.jsp";
	}
	@GetMapping("/dojos/{dojoId}")
	public String showOneDojo(
			Model model,
			@PathVariable("dojoId") Long id
			) {
		Dojo dojo = dojoService.fetchOneDojo(id);
		model.addAttribute("dojo", dojo);
		return "show_ninjas.jsp";
	}
}
