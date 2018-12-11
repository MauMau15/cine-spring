package net.itinajero.app.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.LinkedList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import net.itinajero.app.model.Pelicula;

@Controller
public class HomeController {
	
	@RequestMapping(value="/home", method=RequestMethod.GET)
	public String getHome() {
		return "/home";
	}
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String mostrarPrincipal(Model model) {
		/*List<String> peliculas = new LinkedList<>();
		peliculas.add("Rápidos y furiosos");
		peliculas.add("El aro 2");
		peliculas.add("Aliens");
		
		model.addAttribute("peliculas", peliculas);*/
		
		SimpleDateFormat format = new SimpleDateFormat("dd-MM-yyyy");
		List<Pelicula> peliculas = null;
		Pelicula peli1 = null, peli2 = null;
		try {
			peliculas = new LinkedList<>();
			
			peli1 = new Pelicula();
			peli1.setId(1);
			peli1.setTitulo("El aro 2");
			peli1.setFechaEstreno(format.parse("28-05-2018"));
			peli1.setDuracion(152);
			peli1.setGenero("terror");
			peli1.setClasificacion("C");
			
			peli2 = new Pelicula();
			peli2.setId(1);
			peli2.setTitulo("Aliens");
			peli2.setFechaEstreno(format.parse("18-06-2008"));
			peli2.setDuracion(102);
			peli2.setGenero("infantil");
			peli2.setClasificacion("A");
			
			peliculas.add(peli1);
			peliculas.add(peli2);
			
			model.addAttribute("peliculas",peliculas);
		}catch(ParseException e) {
			System.out.println(e);
		}
		
		return "/home";
	}
	
	@RequestMapping(value="/detail")
	public String mostrarDetalle(Model model) {
		String tituloPelicula = "Rápidos y furiosos";
		int duracion = 136;
		double precio = 50;
		
		model.addAttribute("titulo", tituloPelicula);
		model.addAttribute("duracion", duracion);
		model.addAttribute("precio", precio);
		
		return "/detalle";
	}
}
