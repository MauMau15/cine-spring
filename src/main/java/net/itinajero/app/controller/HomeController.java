package net.itinajero.app.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import net.itinajero.app.model.Pelicula;
import net.itinajero.app.service.IPeliculasService;
import net.itinajero.app.utileries.Utileria;

@Controller
public class HomeController {
	
	@Autowired
	private IPeliculasService servicePeliculas;
	
	@RequestMapping(value="/home", method=RequestMethod.GET)
	public String getHome() {
		return "/home";
	}
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String mostrarPrincipal(Model model) {
		Utileria util = new Utileria();
		List<String> nextDays = util.getNextDays(7);
		
		SimpleDateFormat format = new SimpleDateFormat("dd-MM-yyyy");
		List<Pelicula> peliculas = servicePeliculas.buscarTodas();
		
		model.addAttribute("peliculas", peliculas);
		model.addAttribute("fechaBusqueda", format.format(new Date()));
		model.addAttribute("dias", nextDays);
		
		return "/home";
	}
	
	@RequestMapping(value="/search", method=RequestMethod.POST)
	public String buscar(Model model, @RequestParam("fecha") String fecha) {
		Utileria util = new Utileria();
		List<String> nextDays = util.getNextDays(4);
		
		SimpleDateFormat format = new SimpleDateFormat("dd-MM-yyyy");
		List<Pelicula> peliculas = servicePeliculas.buscarTodas();
		
		model.addAttribute("peliculas", peliculas);
		model.addAttribute("fechaBusqueda", fecha);
		model.addAttribute("dias", nextDays);
		return "home";
	}
	
	/*
	 * With path variable
	 * @RequestMapping(value="/detail/{id}/{fecha}", method=RequestMethod.GET)
	public String mostrarDetalle(Model model, @PathVariable("id") int idPelicula, @PathVariable("fecha") String fecha) {
		System.out.println("Buscar "+ idPelicula);
		System.out.println("Fecha " + fecha);
		return "/detalle";
	}*/
	
	/*with request param*/
	@RequestMapping(value="/detail", method=RequestMethod.GET)
	public String mostrarDetalle(Model model, @RequestParam("id") int idPelicula, @RequestParam("fecha") String fecha) {
		System.out.println("Buscar "+ idPelicula);
		System.out.println("Fecha " + fecha);
		
		model.addAttribute("pelicula", servicePeliculas.buscarPorId(idPelicula));
		
		
		return "detalle";
	}
	
}
