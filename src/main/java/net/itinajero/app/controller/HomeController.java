package net.itinajero.app.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
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
		Pelicula peli1 = null, peli2 = null, peli3=null, peli4=null;
		try {
			System.out.println(format.format(new Date()));
			System.out.println(format.parse("25-05-2018"));
			
			peliculas = new LinkedList<>();
			
			peli1 = new Pelicula();
			peli1.setId(1);
			peli1.setTitulo("El aro 2");
			//peli1.setFechaEstreno(format.parse("2018-05-28"));
			peli1.setDuracion(152);
			peli1.setGenero("terror");
			peli1.setClasificacion("C");
			peli1.setImagen("estreno1.png");
			
			//System.out.println(format.parse("2018-05-28"));
			
			peli2 = new Pelicula();
			peli2.setId(2);
			peli2.setTitulo("Aliens");
			//peli2.setFechaEstreno(format.parse("2018-05-28"));
			peli2.setDuracion(102);
			peli2.setGenero("infantil");
			peli2.setClasificacion("A");
			peli2.setStatus("Inactiva");
			peli2.setImagen("estreno2.png");
			
			peli3 = new Pelicula();
			peli3.setId(3);
			peli3.setTitulo("Life");
			//peli3.setFechaEstreno(format.parse("2018-05-28"));
			peli3.setDuracion(122);
			peli3.setGenero("thriller");
			peli3.setClasificacion("B");
			peli3.setStatus("Activa");
			peli3.setImagen("estreno3.png");
			
			peli4 = new Pelicula();
			peli4.setId(4);
			peli4.setTitulo("Power Rangers");
			//peli4.setFechaEstreno(format.parse("2018-05-28"));
			peli4.setDuracion(125);
			peli4.setGenero("terror");
			peli4.setClasificacion("A");
			peli4.setStatus("Inactiva");
			peli4.setImagen("estreno4.png");
			
			peliculas.add(peli1);
			peliculas.add(peli2);
			peliculas.add(peli3);
			peliculas.add(peli4);
			
			model.addAttribute("peliculas",peliculas);
			model.addAttribute("fechaBusqueda", format.format(new Date()));
			
		}catch(ParseException e) {
			System.out.println(e);
		}
		
		return "/home";
	}
	
	@RequestMapping(value="/detail/{id}/{fecha}", method=RequestMethod.GET)
	public String mostrarDetalle(Model model, @PathVariable("id") int idPelicula, @PathVariable("fecha") String fecha) {
		System.out.println("Buscar "+ idPelicula);
		System.out.println("Fecha " + fecha);
		return "/detalle";
	}
	
	/*@RequestMapping(value="/detail")
	public String mostrarDetalle(Model model) {
		String tituloPelicula = "Rápidos y furiosos";
		int duracion = 136;
		double precio = 50;
		
		model.addAttribute("titulo", tituloPelicula);
		model.addAttribute("duracion", duracion);
		model.addAttribute("precio", precio);
		
		return "/detalle";
	}*/
}
