<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Promotion Etudiant</title>
</head>
<body>
<f:view>
	<h:form>
		<h:commandButton action="#{promotionBean.resetEtudiant()}" value="Ajouter un étudiant" />
		<h:panelGroup rendered="#{promotionBean.vide}">
			<h4>Il n'y a pas d'étudiant enregistré dans cette promotion.</h4>
		</h:panelGroup>
		<h:dataTable binding="#{table}" value="#{promotionBean.etudiants}" var="eleve" rendered="#{not promotionBean.vide}">
			<h:column>
				<f:facet name="header"><h:outputText value="Prénom" /></f:facet>
				<h:outputText value="#{eleve.prenom}" />
			</h:column>
			<h:column>
				<f:facet name="header"><h:outputText value="Nom" /></f:facet>
				<h:outputText value="#{eleve.nom}" />
			</h:column>
			<h:column>
				<f:facet name="header"><h:outputText value="Age" /></f:facet>
				<h:outputText value="#{eleve.age}" />
			</h:column>
			<h:column>
				<f:facet name="header"><h:outputText value="Genre" /></f:facet>
				<h:outputText value="#{eleve.genre}" />
			</h:column>
			<h:column>
				<f:facet name="header"><h:outputText value="Compétences" /></f:facet>
				<h:outputText value="#{eleve.competences}" />
			</h:column>
			<h:column>
				<f:facet name="header"><h:outputText value="Observations" /></f:facet>
				<h:outputText value="#{eleve.description}" />
			</h:column>
			<h:column>
				<f:facet name="header"><h:outputText value="" /></f:facet>
				<h:commandLink action="#{promotionBean.modifier(eleve)}" value="Modifier" />
			</h:column>
			<h:column>
				<f:facet name="header"><h:outputText value="" /></f:facet>
				<h:commandLink action="#{promotionBean.supprimer(eleve)}" value="Supprimer" />
			</h:column>
		</h:dataTable>
	</h:form>
</f:view>
</body>
</html>