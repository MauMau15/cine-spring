package net.itinajero.app.controller;

import java.sql.Date;
import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import net.itinajero.app.model.Banner;
import net.itinajero.app.service.IBannersService;
import net.itinajero.app.utileries.Utileria;

@Controller
@RequestMapping("/banners")
public class BannersController {
	
	@Autowired
	private IBannersService bannersService;
	
	@GetMapping("/index")
	public String mostrarIndex(Model model) {
		model.addAttribute("banners",bannersService.buscarTodos());
		return "banners/index";
	}
	
	@GetMapping("/create")
	public String createBanner() {
		return "banners/formBanner";
	}
	
	@PostMapping("/save")
	public String saveBanner(Banner banner, BindingResult result, @RequestParam("archivoImagen") MultipartFile multipart, HttpServletRequest request, RedirectAttributes attributes) {
		System.out.println(banner);
		if(result.hasErrors()) {
			return "banners/formBanner";
		}
		
		if(!multipart.isEmpty()) {
			String nombreImagen = Utileria.guardarImagen(multipart, request);
			banner.setImagen(nombreImagen);
		}
		
		attributes.addFlashAttribute("mensaje", "El banner ha sido insertado correctamente");
		return "redirect:/banners/index";
		
	}
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		binder.registerCustomEditor(Date.class,"fecha", new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd"),false));
	}

}
