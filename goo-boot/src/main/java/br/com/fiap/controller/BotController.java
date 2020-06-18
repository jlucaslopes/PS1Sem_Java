package br.com.fiap.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.fiap.model.BotModel;
import br.com.fiap.repository.BotRepository;
import br.com.fiap.repository.SegmentsRepository;

@Controller
@RequestMapping("/bot")
public class BotController {

	private static final String BOT_FOLDER = "bot/";
	
	@Autowired
	public BotRepository repository;
	
	@Autowired
	public SegmentsRepository segmentsRepository;
	
	@GetMapping("/form")
	public String open(@RequestParam String page,
			@RequestParam(required = false) Long id,
			@ModelAttribute("botModel") BotModel botModel, Model model) {

		if ("bot-editar".equals(page)) {
			model.addAttribute("botModel", repository.findById(id).get());
		}

		model.addAttribute("segments", segmentsRepository.findAll());

		return BOT_FOLDER + page;
	}
	
	@GetMapping()
	public String findAll(Model model) {

		model.addAttribute("bots", repository.findAll());
		return BOT_FOLDER + "bots";
	}
	
	@GetMapping("/{id}")
	public String findById(@PathVariable("id") long id, Model model) {

		model.addAttribute("bot", repository.findById(id).get());
		return BOT_FOLDER + "bot-detalhe";
	}
	
	@PostMapping()
	public String save(@Valid BotModel botModel, BindingResult bindingResult, RedirectAttributes redirectAttributes, Model model) {
		
		if(bindingResult.hasErrors()) {
			model.addAttribute("segments", segmentsRepository.findAll());
			return BOT_FOLDER + "bot-novo";
		}
		
		repository.save(botModel);
		redirectAttributes.addFlashAttribute("messages", "BOT cadastrado com sucesso!");
		
		return "redirect:/bot";
	}
	
	@PutMapping("/{id}")
	public String update(@PathVariable("id") long id, @Valid BotModel botModel, BindingResult bindingResult, RedirectAttributes redirectAttributes, Model model) {
		
		if(bindingResult.hasErrors()) {
			model.addAttribute("segments", segmentsRepository.findAll());
			return BOT_FOLDER + "bot-editar";
		}
		
		botModel.setId_bot(id);
		repository.save(botModel);
		redirectAttributes.addFlashAttribute("messages", "BOT alterado com sucesso!");
		
		return "redirect:/produto";
	}
	
	@DeleteMapping("/{id}")
	public String deleteById(@PathVariable("id") long id, RedirectAttributes redirectAttributes) {
		
		repository.deleteById(id);
		redirectAttributes.addFlashAttribute("messages", "BOT excluído com sucesso!");

		return "redirect:/bot";
	}
	
}
