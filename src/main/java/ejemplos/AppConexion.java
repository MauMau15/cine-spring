package ejemplos;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import net.itinajero.app.model.Noticia;
import net.itinajero.app.repository.NoticiasRepository;

public class AppConexion {
	public static void main(String a[]) {
		
		Noticia noticia = new Noticia();
		noticia.setTitulo("Bob el constructor");
		noticia.setContenido("Se estrena prointo");
		ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("root-context.xml");
		NoticiasRepository repo = context.getBean("noticiasRepository",NoticiasRepository.class);
		
		repo.save(noticia);
		
		context.close();
	}
}
