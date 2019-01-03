package model.DAO.implement;

import model.DAO.AnnuncioDao;
import model.DAO.PreferezaDao;
import model.PJO.Annuncio;
import model.PJO.Preferenza;

public class ManagerPreferenza {
	
	public static boolean inserisciPreferenza(Preferenza a) {
		
		PreferezaDao dao = new PreferezaDao();
		if(dao.add(a)) {
			dao.close();
			return true;
		}
		else 
			return false;
	
}
	public static boolean rimuoviPreferenzaPersistente(Preferenza a) {
	
		PreferezaDao dao = new PreferezaDao();
		if(dao.remove(a.getID())) {
			dao.close();
			return true;
		}
		else 
			return false;
	
}

	public static boolean modificaAnnuncio(Preferenza a) {
	
	PreferezaDao dao = new PreferezaDao();
		if(dao.update(a)) {
			dao.close();
			return true;
		}
		else 
			return false;
	
	
}
}