package com.green.languages.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.green.languages.models.Language;
import com.green.languages.services.LanguageService;


@Controller
public class LanguagesController {
	
	private final LanguageService languageService;
	
	public LanguagesController(LanguageService languageService) {
		this.languageService = languageService;
	}
	
	@RequestMapping("/")
	public String index(Model model, @ModelAttribute("language") Language language) {
		List<Language> languages = languageService.allLanguages();
		model.addAttribute("languages", languages);
		return "index.jsp";
	}
	
	@PostMapping("/create")
	public String create(Model model, @Valid @ModelAttribute("language") Language language, BindingResult result) {
		if (result.hasErrors()) {
			List<Language> allLanguages = this.languageService.allLanguages();
			model.addAttribute("allLanguages", allLanguages);
			return "index.jsp";
		}
		else {
			this.languageService.createLanguage(language);
			return "redirect:/";
		}
	}
	
	@GetMapping("/{id}/info")
	public String getOneLanguage(@PathVariable("id") Long id, Model model) {
		Language language = this.languageService.getOneLanguage(id);
		model.addAttribute("language", language);
		return "info.jsp";
	}
	
	@GetMapping("/{id}/edit")
	public String edit(@PathVariable("id") Long id, Model model) {
		Language language = this.languageService.getOneLanguage(id);
		model.addAttribute("language", language);
		return "edit.jsp";
	}
	
	@PostMapping("/{id}/update")
	public String update(@Valid @ModelAttribute("language") Language language, BindingResult result) {
		if (result.hasErrors()) {
			return "edit.jsp";
		}
		else {
			this.languageService.updateLanguage(language);
			return "redirect:/";
		}
	}
	
	@GetMapping("/{id}/delete")
	public String delete(@PathVariable("id") Long id) {
		this.languageService.deleteLanguage(id);
		return "redirect:/";
	}
}
