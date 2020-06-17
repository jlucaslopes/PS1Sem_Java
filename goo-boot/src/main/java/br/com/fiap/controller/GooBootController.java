package br.com.fiap.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/boot")
public class GooBootController {
	
	private static final String BOOT_FOLDER = "boot/";
	
	@GetMapping()
	public String findAll(Model model) {
		return BOOT_FOLDER +  "bootpage";
	}
}
 