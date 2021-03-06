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

import br.com.fiap.model.SegmentsModel;
import br.com.fiap.model.BotModel;
import br.com.fiap.repository.BotRepository;
import br.com.fiap.repository.SegmentsRepository;


@Controller
@RequestMapping("/boot")
public class GooBootController {
	
	private static final String BOOT_FOLDER = "boot/";
	
	@Autowired
	public BotRepository BotRepository;
	
	@Autowired
	public SegmentsRepository SegmentsRepository;
	
	@GetMapping("/form")
	public String open(@RequestParam String page, 
					   @RequestParam(required = false) Long id,
					   @ModelAttribute("botModel") BotModel botModel, 
					   Model model) {
		
		if("boot-editar".equals(page)) {
			model.addAttribute("botModel", BotRepository.findById(id).get());
		}
		
		model.addAttribute("segments", SegmentsRepository.findAll());
		
		return BOOT_FOLDER + page;
	}
	
	@GetMapping()
	public String findAll(Model model) {
		model.addAttribute("boot", BotRepository.findAll());
		return BOOT_FOLDER +  "bootpage";
	}
	
	@GetMapping("/{id}")
	public String findById(@PathVariable("id") long id, Model model) {
		
		model.addAttribute("boot", BotRepository.findById(id).get());
		return BOOT_FOLDER +  "boot-detalhe";
	}
	
	@PostMapping()
	public String save(@Valid BotModel botModel, BindingResult bindingResult, RedirectAttributes redirectAttributes, Model model) {
		
		if(bindingResult.hasErrors()) {
			model.addAttribute("segments", SegmentsRepository.findAll());
			return BOOT_FOLDER + "boot-novo";
		}
		
		BotModel botSalvo = BotRepository.save(botModel);
		for (SegmentsModel segmen : botSalvo.getSegments()) {
			segmen.setBot(botSalvo);
			SegmentsRepository.save(segmen);
		}
		redirectAttributes.addFlashAttribute("messages", "Produto cadastrado com sucesso!");
		
		return "redirect:/boot";
	}
	
	@PutMapping("/{id}")
	public String update(@PathVariable("id") long id, @Valid BotModel botModel, BindingResult bindingResult, RedirectAttributes redirectAttributes, Model model) {
		
		if(bindingResult.hasErrors()) {
			model.addAttribute("segments", SegmentsRepository.findAll());
			
			return BOOT_FOLDER + "boot-editar";
		}
		
		botModel.setId_bot(id);
		BotModel bot = BotRepository.save(botModel);
		
		for (SegmentsModel segmen : botModel.getSegments()) {
			segmen.setBot(bot);;
			SegmentsRepository.save(segmen);
		}
		
		redirectAttributes.addFlashAttribute("messages", "Produto alterado com sucesso!");
		
		return "redirect:/boot";
	}
	
	@DeleteMapping("/{id}")
	public String deleteById(@PathVariable("id") long id, RedirectAttributes redirectAttributes) {
		
		BotRepository.deleteById(id);
		redirectAttributes.addFlashAttribute("messages", "Produto excluído com sucesso!");

		return "redirect:/boot";
	}
	
	
}
 