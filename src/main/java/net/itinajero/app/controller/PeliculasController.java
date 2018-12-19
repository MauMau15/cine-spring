package net.itinajero.app.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


import net.itinajero.app.model.Pelicula;
import net.itinajero.app.service.IPeliculasService;
import net.itinajero.app.utileries.Utileria;

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
	public String save(Pelicula pelicula, BindingResult result, RedirectAttributes attribute, @RequestParam("archivoImagen") MultipartFile multipart, HttpServletRequest request) {
		
		if(result.hasErrors()) {
			System.out.println("existieron errores");
			for(ObjectError error: result.getAllErrors()) {
				System.out.println(error.getDefaultMessage());
			}
			return "peliculas/formPelicula";
		}
		
		if(!multipart.isEmpty()) {
			String nombreImagen = Utileria.guardarImagen(multipart, request);
			pelicula.setImagen(nombreImagen);
		}
		
		attribute.addFlashAttribute("mensaje","El registro fue realizado con éxito");
		return "redirect:/peliculas/index";
	}

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(formatter,false));
	}
}
