package net.itinajero.app.service;


import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.LinkedList;
import java.util.List;

import org.springframework.stereotype.Service;

import net.itinajero.app.model.Banner;

@Service
public class BannersServiceImpl implements IBannersService{

	
	List<Banner> banners = new LinkedList<>();
	
	public BannersServiceImpl() {
		
		SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy");
		
		try {
			
			Banner banner1 = new Banner();
			banner1.setNombre("Spiderman");
			banner1.setFecha(formatter.parse("25-11-2018"));
			banner1.setEstatus("Activo");
			banner1.setImagen("slide1.jpg");
			
			Banner banner2 = new Banner();
			banner2.setNombre("La bella y la bestia");
			banner2.setFecha(formatter.parse("02-02-2018"));
			banner2.setEstatus("Activo");
			banner2.setImagen("slide2.jpg");
			
			banners.add(banner1);
			banners.add(banner2);
			
		}
		catch (ParseException e) {
			e.printStackTrace();
		}
	}
	
	@Override
	public List<Banner> buscarTodos() {
		// TODO Auto-generated method stub
		return banners;
	}

	@Override
	public void insertarBanner(Banner banner) {
		banners.add(banner);
	}

}
