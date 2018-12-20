package net.itinajero.app.utileries;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

public class Utileria {
	
	
	public static List<String> getNextDays(int count) {
		SimpleDateFormat format = new SimpleDateFormat("dd-MM-yyyy");
		
		Date start = new Date();//get today's date
		Calendar cal = Calendar.getInstance();//define new calendar
		cal.add(Calendar.DAY_OF_MONTH, count);//set the date of the calendar after n days
		Date endDate = cal.getTime();//set the end date
		
		GregorianCalendar gcal = new GregorianCalendar();//define the format of our calendar
		gcal.setTime(start);//set the start date in the format of our calendar
		List<String> nextDays = new ArrayList<String>();//define the array where we save the next days
		while(!gcal.getTime().after(endDate)) {//while the date of our calendar is not the end date
			Date d = gcal.getTime();//define the date we are going to save on our list
			gcal.add(Calendar.DATE,1);//add 1 day in the current date of our calendar
			nextDays.add(format.format(d));//add the date we have just saved
		}
		
		return nextDays;
	}
	
	public static String guardarImagen(MultipartFile multipart, HttpServletRequest request) {
		
		String nombreOriginal = multipart.getOriginalFilename();
		
		String rutaFinal = request.getServletContext().getRealPath("/resources/img/");
		
		try {
			File imageFile = new File(rutaFinal +  nombreOriginal);
			multipart.transferTo(imageFile);
			return nombreOriginal;
		}catch(IOException e) {
			System.out.println("Error "+ e.getMessage());
			return null;
		}
		
	}
}
