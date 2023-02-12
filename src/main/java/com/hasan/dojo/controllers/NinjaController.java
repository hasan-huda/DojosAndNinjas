package com.hasan.dojo.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.hasan.dojo.models.Dojo;
import com.hasan.dojo.models.Ninja;
import com.hasan.dojo.services.DojoService;
import com.hasan.dojo.services.NinjaService;

@Controller
public class NinjaController {
	@Autowired
	NinjaService ninjaService;
	@Autowired
	DojoService dojoService;
	@GetMapping("/ninjas/new")
	public String newNinja(Model model, @ModelAttribute("ninja")Ninja ninja) {
		List<Dojo> dojos = dojoService.fetchAllDojos();
		model.addAttribute("dojos", dojos);
		return "new_ninja.jsp";
	}
	@PostMapping("/ninjas/add")
	public String insertDojo(
			Model model,
			@Valid @ModelAttribute("ninja") Ninja ninja,
			BindingResult result
			){
		if(result.hasErrors()) {
			System.out.println("Didn't work");
			return "new_ninja.jsp";
		}
		ninjaService.saveNinja(ninja);
		return "redirect:/";
	}
}
