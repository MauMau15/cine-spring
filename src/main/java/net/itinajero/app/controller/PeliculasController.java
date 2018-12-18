package net.itinajero.app.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import net.itinajero.app.model.Pelicula;
import net.itinajero.app.service.IPeliculasService;

@Controller
@RequestMapping("/peliculas")
public class PeliculasController {
	
	@Autowired
	IPeliculasService peliculasService;
	
	@GetMapping("/index")
	public String mostrarIndex(Model model) {
		
		model.addAttribute("peliculas",peliculasService.buscarTodas());
		
		return "peliculas/index";
	}
	
	@GetMapping(value="/create")
	public String crear() {
		return "peliculas/formPelicula";
	}
	
	@PostMapping(value="/save")
	public String save(Pelicula pelicula, BindingResult result, RedirectAttributes attribute) {
		
		if(result.hasErrors()) {
			System.out.println("existieron errores");
			for(ObjectError error: result.getAllErrors()) {
				System.out.println(error.getDefaultMessage());
			}
			return "peliculas/formPelicula";
		}
		
		System.out.println(pelicula);
		attribute.addFlashAttribute("mensaje","El registro fue realizado con éxito");
		return "redirect:/peliculas/index";
	}
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(formatter,false));
	}
}
