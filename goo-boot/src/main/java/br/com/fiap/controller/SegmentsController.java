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
import br.com.fiap.repository.BotRepository;
import br.com.fiap.repository.SegmentsRepository;


@Controller
@RequestMapping("/segments")
public class SegmentsController {
	
	private static final String BOOT_FOLDER = "segmentos/";
	
	@Autowired
	public BotRepository BotRepository;
	
	@Autowired
	public SegmentsRepository SegmentsRepository;
	
	@GetMapping("/form")
	public String open(@RequestParam String page, 
					   @RequestParam(required = false) Long id,
					   @ModelAttribute("segmentsModel") SegmentsModel segmentsModel, 
					   Model model) {
		
		if("segmento-editar".equals(page)) {
			model.addAttribute("segmentsModel", SegmentsRepository.findById(id).get());
		}
		
		model.addAttribute("segments", SegmentsRepository.findAll());
		
		return BOOT_FOLDER + page;
	}
	
	@GetMapping()
	public String findAll(Model model) {
		model.addAttribute("segments", SegmentsRepository.findAll());
		return BOOT_FOLDER +  "segmenpage";
	}
	
	@GetMapping("/{id}")
	public String findById(@PathVariable("id") long id, Model model) {
		
		model.addAttribute("segments", SegmentsRepository.findById(id).get());
		return BOOT_FOLDER +  "segmento-detalhe";
	}
	
	@PostMapping()
	public String save(@Valid SegmentsModel segmentsModel, BindingResult bindingResult, RedirectAttributes redirectAttributes, Model model) {
		
		if(bindingResult.hasErrors()) {
			model.addAttribute("segments", SegmentsRepository.findAll());
			return BOOT_FOLDER + "segmen-novo";
		}
		
		SegmentsRepository.save(segmentsModel);
		redirectAttributes.addFlashAttribute("messages", "Produto cadastrado com sucesso!");
		
		return "redirect:/segments";
	}
	
	@PutMapping("/{id}")
	public String update(@PathVariable("id") long id, @Valid SegmentsModel segmentsModel, BindingResult bindingResult, RedirectAttributes redirectAttributes, Model model) {
		
		if(bindingResult.hasErrors()) {	
			return BOOT_FOLDER + "segmen-editar";
		}
		
		segmentsModel.setId_segments(id);
		SegmentsRepository.save(segmentsModel);
		
		
		redirectAttributes.addFlashAttribute("messages", "Produto alterado com sucesso!");
		
		return "redirect:/segments";
	}
	
	@DeleteMapping("/{id}")
	public String deleteById(@PathVariable("id") long id, RedirectAttributes redirectAttributes) {
		
		SegmentsRepository.deleteById(id);
		redirectAttributes.addFlashAttribute("messages", "Produto excluído com sucesso!");

		return "redirect:/segments";
	}
	
	
}