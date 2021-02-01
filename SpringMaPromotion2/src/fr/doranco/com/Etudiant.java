package fr.doranco.com;

import java.util.List;
import java.util.UUID;

public class Etudiant {

	private UUID uuid;
	private String nom;
	private String prenom;
	private int age;
	private GenreEnum genre;
	private List<CompetenceEnum> competences;
	private String description;
	
	public Etudiant() {}

	public void generateUUID() {
		this.setUuid(UUID.randomUUID());
	}
	
	public UUID getUuid() {
		return uuid;
	}

	public void setUuid(UUID uuid) {
		this.uuid = uuid;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public GenreEnum getGenre() {
		return genre;
	}

	public void setGenre(GenreEnum genre) {
		this.genre = genre;
	}

	public List<CompetenceEnum> getCompetences() {
		return competences;
	}

	public void setCompetences(List<CompetenceEnum> competences) {
		this.competences = competences;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public boolean isEnregistre() {
		return this.uuid != null;
	}
	
	/*public void reset() {
		this.nom = "";
		this.prenom = "";
		this.age = -1;
		this.description = "";
		this.genre = null;
		this.competences = new ArrayList<CompetenceEnum>();
	}*/
}
