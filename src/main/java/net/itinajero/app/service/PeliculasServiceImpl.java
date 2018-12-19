package net.itinajero.app.service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.LinkedList;
import java.util.List;

import org.springframework.stereotype.Service;

import net.itinajero.app.model.Pelicula;

@Service
public class PeliculasServiceImpl implements IPeliculasService{

	private List<Pelicula> peliculas = null;
	
	public PeliculasServiceImpl() {
		
		Pelicula peli1 = null, peli2 = null, peli3=null, peli4=null;
		SimpleDateFormat format = new SimpleDateFormat("dd-MM-yyyy");
		try {
			peliculas = new LinkedList<>();
			
			peli1 = new Pelicula();
			peli1.setId(1);
			peli1.setTitulo("El aro 2");
			peli1.setFechaEstreno(format.parse("28-05-2018"));
			peli1.setDuracion(152);
			peli1.setGenero("terror");
			peli1.setClasificacion("C");
			peli1.setImagen("estreno1.png");
			
			
			peli2 = new Pelicula();
			peli2.setId(2);
			peli2.setTitulo("Aliens");
			peli2.setFechaEstreno(format.parse("12-01-2018"));
			peli2.setDuracion(102);
			peli2.setGenero("infantil");
			peli2.setClasificacion("A");
			peli2.setStatus("Inactiva");
			peli2.setImagen("estreno2.png");
			
			peli3 = new Pelicula();
			peli3.setId(3);
			peli3.setTitulo("Life");
			peli3.setFechaEstreno(format.parse("05-07-2018"));
			peli3.setDuracion(122);
			peli3.setGenero("thriller");
			peli3.setClasificacion("B");
			peli3.setStatus("Activa");
			peli3.setImagen("estreno3.png");
			
			peli4 = new Pelicula();
			peli4.setId(4);
			peli4.setTitulo("Power Rangers");
			peli4.setFechaEstreno(format.parse("10-10-2018"));
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
	}
	
	@Override
	public List<Pelicula> buscarTodas() {
		// TODO Auto-generated method stub
		return peliculas;
	}

	@Override
	public Pelicula buscarPorId(int idPelicula) {
		// TODO Auto-generated method stub
		for(Pelicula pelicula : peliculas) {
			if(pelicula.getId() == idPelicula) {
				return pelicula;
			}
		}
		return null;
	}

	@Override
	public void crearPelicula(Pelicula pelicula) {
		// TODO Auto-generated method stub
		peliculas.add(pelicula);
	}
	
}
