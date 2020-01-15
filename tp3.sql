#Req1

SELECT  personne.personne_nom, parcelle.personne_prenom

FROM personne JOIN parcelle on parcelle.personne_id=personne.personne_id
GROUP BY personne.personne_nom, personne.personne_prenom


#Req2

SELECT personne.personne_nom, personne.personne_prenom, culture.culture_libelle, COUNT(*)
FROM personne  
JOIN parcelle ON parcelle.personne_id = personne.personne_id 
JOIN Culture  ON culture.culture_id = arcelle.culture_id
GROUP BY personne.personne_nom, personne._personne_prenom, culture.culture_libelle


#Req3

SELECT DISTINCT culture.culture_libelle, COUNT(*)
FROM culture JOIN parcelle ON culture.culture_id=parcelle.culture_id 
GROUP BY culture.culture_libelle

#Req4

SELECT culture.culture_libelle, SUM(parcelle.ST_AREA(parcelle_geometry)) 
FROM culture JOIN parcelle ON culture.culture_id = parcelle.culture_id 
WHERE parcelle.parcelle_geometry IS NOT NULL
GROUP BY culture.culture_libelle

#Req5	

SELECT personne.personne_nom, personne.personne_prenom, SUM(parcelle.ST_AREA(parcelle_geometry)) 
FROM personne JOIN parcelle ON personne.personne_id=parcelle.personne_id 
JOIN culture ON culture.culture_id=parcelle.culture_id
WHERE parcelle.parcelle_geometry IS NOT NULL
GROUP BY personne.personne_id
ORDER BY DESC SUM(parcelle.ST_AREA(parcelle_geometry))
FETCH FIRST 5 ROWS ONLY #For oracle
#For Postgresql we can use limit 5
