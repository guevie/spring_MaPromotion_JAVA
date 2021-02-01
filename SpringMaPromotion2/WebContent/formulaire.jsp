<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Formulaire</title>
</head>
<body>
<f:view>
	<h:form>
		<h:panelGroup rendered="#{not etudiantBean.enregistre}">
			<h2>Ajouter un étudiant</h2>
		</h:panelGroup>
		<h:panelGroup rendered="#{etudiantBean.enregistre}">
			<h2>Modifier un étudiant</h2>
		</h:panelGroup>
		<table>
			<tr>
				<td>Nom:</td>
				<td>
					<h:inputText value="#{etudiantBean.nom}">
					</h:inputText>
				</td>
			</tr>
			<tr>
				<td>Prénom:</td>
				<td>
					<h:inputText value="#{etudiantBean.prenom}">
					</h:inputText>
				</td>
			</tr>
			<tr>
				<td>Age:</td>
				<td>
					<h:inputText value="#{etudiantBean.age}">
					</h:inputText>
				</td>
			</tr>
			<tr>
				<td>Genre:</td>
				<td>
					<h:selectOneRadio value="#{etudiantBean.genre}" >
	                  <f:selectItems value="#{promotionBean.genres}" />
	                </h:selectOneRadio>
				</td>
			</tr>
			<tr>
				<td>Liste de compétences:</td>
				<td>
					<h:selectManyListbox value="#{etudiantBean.competences}" >
	                  <f:selectItems value="#{promotionBean.competencesPossibles}" />
	                </h:selectManyListbox>
				</td>
			</tr>
			<tr>
				<td>Description:</td>
				<td>
					<h:inputTextarea value="#{etudiantBean.description}" />
				</td>
			</tr>
		</table>
		<h:commandButton action="#{promotionBean.ajouterEtudiant(etudiantBean)}" rendered="#{not etudiantBean.enregistre}" value="Enregistrer" />
		<h:commandButton action="#{promotionBean.modifierEtudiantDansPromotion(etudiantBean)}" rendered="#{etudiantBean.enregistre}" value="Enregistrer" />
	</h:form>
</f:view>
</body>
</html>