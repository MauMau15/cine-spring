package net.itinajero.app.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import net.itinajero.app.model.Pelicula;
import net.itinajero.app.utileries.Utileria;

@Controller
public class HomeController {
	
	@RequestMapping(value="/home", method=RequestMethod.GET)
	public String getHome() {
		return "/home";
	}
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String mostrarPrincipal(Model model) {
		Utileria util = new Utileria();
		List<String> nextDays = util.getNextDays(7);
		
		SimpleDateFormat format = new SimpleDateFormat("dd-MM-yyyy");
		List<Pelicula> peliculas = getPeliculas();
		
		model.addAttribute("peliculas", peliculas);
		model.addAttribute("fechaBusqueda", format.format(new Date()));
		model.addAttribute("dias", nextDays);
		
		return "/home";
	}
	
	@RequestMapping(value="/search", method=RequestMethod.POST)
	public String buscar(Model model, @RequestParam("fecha") String fecha) {
		Utileria util = new Utileria();
		List<String> nextDays = util.getNextDays(7);
		
		SimpleDateFormat format = new SimpleDateFormat("dd-MM-yyyy");
		List<Pelicula> peliculas = getPeliculas();
		
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
		
		
		return "detalle";
	}
	
	private List<Pelicula> getPeliculas(){
		List<Pelicula> peliculas = null;
		Pelicula peli1 = null, peli2 = null, peli3=null, peli4=null;
		SimpleDateFormat format = new SimpleDateFormat("dd-MM-yyyy");
		try {
			
			peliculas = new LinkedList<>();
			
			peli1 = new Pelicula();
			peli1.setId(1);
			peli1.setTitulo("El aro 2");
			peli1.setFechaEstreno(format.parse("2018-05-28"));
			peli1.setDuracion(152);
			peli1.setGenero("terror");
			peli1.setClasificacion("C");
			peli1.setImagen("estreno1.png");
			
			
			peli2 = new Pelicula();
			peli2.setId(2);
			peli2.setTitulo("Aliens");
			peli2.setFechaEstreno(format.parse("2018-05-28"));
			peli2.setDuracion(102);
			peli2.setGenero("infantil");
			peli2.setClasificacion("A");
			peli2.setStatus("Inactiva");
			peli2.setImagen("estreno2.png");
			
			peli3 = new Pelicula();
			peli3.setId(3);
			peli3.setTitulo("Life");
			peli3.setFechaEstreno(format.parse("2018-05-28"));
			peli3.setDuracion(122);
			peli3.setGenero("thriller");
			peli3.setClasificacion("B");
			peli3.setStatus("Activa");
			peli3.setImagen("estreno3.png");
			
			peli4 = new Pelicula();
			peli4.setId(4);
			peli4.setTitulo("Power Rangers");
			peli4.setFechaEstreno(format.parse("2018-05-28"));
			peli4.setDuracion(125);
			peli4.setGenero("terror");
			peli4.setClasificacion("A");
			peli4.setStatus("Inactiva");
			peli4.setImagen("estreno4.png");
			
			peliculas.add(peli1);
			peliculas.add(peli2);
			peliculas.add(peli3);
			peliculas.add(peli4);
			
			
			
		}catch(ParseException e) {
			System.out.println(e);
		}
		
		return peliculas;
	}
	
}
