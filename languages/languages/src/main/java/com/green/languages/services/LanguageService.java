package com.green.languages.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.green.languages.models.Language;
import com.green.languages.repositories.LanguageRepository;

@Service
public class LanguageService {
	private final LanguageRepository languageRepo;
	
	public LanguageService(LanguageRepository languageRepo) {
		this.languageRepo = languageRepo;
	}
	
	public List<Language> allLanguages() {
		return languageRepo.findAll();
	}
	
	public Language createLanguage(Language language) {
		return languageRepo.save(language);
	}
	
	public Language getOneLanguage(Long id) {
		return this.languageRepo.findById(id).orElse(null);
 	}
	
	public Language updateLanguage(Language language) {
		return this.languageRepo.save(language);
	}
	
	public void deleteLanguage(Long id) {
		this.languageRepo.deleteById(id);
	}
}
