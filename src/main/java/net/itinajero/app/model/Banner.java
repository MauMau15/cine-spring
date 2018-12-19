package net.itinajero.app.model;

import java.util.Date;

public class Banner {
	private int id;
	private String nombre;
	private Date fecha;
	private String imagen;
	private String estatus;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public Date getFecha() {
		return fecha;
	}

	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}

	public String getImagen() {
		return imagen;
	}

	public void setImagen(String imagen) {
		this.imagen = imagen;
	}

	public String getEstatus() {
		return estatus;
	}

	public void setEstatus(String estatus) {
		this.estatus = estatus;
	}

	@Override
	public String toString() {
		return "Banner [id=" + id + ", nombre=" + nombre + ", fecha=" + fecha + ", imagen=" + imagen + ", estatus="
				+ estatus + "]";
	}
}
