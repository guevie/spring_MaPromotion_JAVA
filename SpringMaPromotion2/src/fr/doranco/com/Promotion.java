package fr.doranco.com;

import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;

import javax.faces.application.Application;
import javax.faces.context.FacesContext;
import javax.faces.el.ValueBinding;

import org.apache.commons.beanutils.BeanUtils;



import java.util.Arrays;

@SuppressWarnings("deprecation")
public class Promotion {

	private String nom;
	private List<Etudiant> etudiants = new ArrayList<Etudiant>();
	private List<CompetenceEnum> competencesPossibles = Arrays.asList(CompetenceEnum.values());
	private List<GenreEnum> genres = Arrays.asList(GenreEnum.values());
	
	public Promotion() {}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public List<Etudiant> getEtudiants() {
		return etudiants;
	}

	public void setEtudiants(List<Etudiant> etudiants) {
		this.etudiants = etudiants;
	}

	public List<GenreEnum> getGenres() {
		return this.genres;
	}

	public List<CompetenceEnum> getCompetencesPossibles() {
		return this.competencesPossibles;
	}
	
	public boolean isVide() {
		return this.etudiants.isEmpty();
	}
	
	public boolean isNotVide() {
		return this.etudiants.isEmpty();
	}
	
	public String modifierEtudiantDansPromotion(Etudiant etudiant) {
		for (int i=0; i<this.etudiants.size(); i++) {
			final Etudiant ec = this.etudiants.get(i);
			if (ec.getUuid() == etudiant.getUuid()) {
				this.etudiants.remove(i);
				this.etudiants.add(i, etudiant);
			}
		}
		return "accueil";
	}
	
	public String ajouterEtudiant(Etudiant etudiant) {
		final Etudiant newObject = new Etudiant(); 
		try {
			BeanUtils.copyProperties(newObject, etudiant);
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			e.printStackTrace();
		}
		newObject.generateUUID();
		this.etudiants.add(newObject);

		return "accueil";
	}

	public String resetEtudiant() {

        final FacesContext context = FacesContext.getCurrentInstance();
        final Application application = context.getApplication();
        final ValueBinding binding = application.createValueBinding("#{etudiantBean}");
        binding.setValue(context, (new Etudiant()));

		return "ajouter_etudiant";
	}
	
	public String supprimer(Etudiant e) {
		for (int i=0; i<this.etudiants.size(); i++) {
			final Etudiant ec = this.etudiants.get(i);
			if (ec.getUuid() == e.getUuid()) {
				this.etudiants.remove(i);
			}
		}
		return "";
	}
	
	public String modifier(Etudiant e) {
		
		final FacesContext context = FacesContext.getCurrentInstance();
        final Application application = context.getApplication();
        final ValueBinding binding = application.createValueBinding("#{etudiantBean}");
        binding.setValue(context, e);
        
		return "ajouter_etudiant";
	}

}
