1.SELECT DISTINCT gare_nom
FROM gare
2.SELECT DISTINCT gare_nom, personne_nom, personne_prenom FROM gare, personne
WHERE persone.persone_ID=gare.persone_ID
3.SELECT DISTINCT personne_nom , personne_prenom FROM personne,conducteur,trajet,train
WHERE personne.personne_ID=conducteur.personne_ID AND conducteur.personne_ID =trajet.personne_ID
AND trajet.train_ID=train.train_ID
5.(SELECT 'Conducteur'
FROM Conducteur, Personne
WHERE personne_nom ='MANAC''H' AND UPPER(personne_prenom)='YVON' AND Personne.personne_ID=Conducteur.personne_ID)
UNION
(SELECT 'Mécanicien' FROM Mecanicien,Personne
WHERE personne_nom ='MANAC''H' AND UPPER(personne_prenom)='YVON'
AND Personne.personne_ID=Mecanicien.personne_ID)
UNION
(SELECT 'Agent' FROM Agent,Personne
WHERE personne_nom ='MANAC''H' AND UPPER(personne_prenom)='YVON' AND Personne.personne_ID=Agent.personne_ID)
UNION
(SELECT 'Chef de gare' FROM ChefDeGare, Personne
WHERE personne_nom ='MANAC''H' AND UPPER(personne_prenom)='YVON' AND Personne.personne_ID=ChefDeGare.personne_ID)
AND train.typetrain_libelle LIKE '%TER%'
6.SELECT DISTINCT personne_nom, personne_prenom FROM Personne, Revision, Train
WHERE Train.train_nom='85250'
AND Revision.train_ID=Train.train_ID
AND Personne.personne_id = Revision.personne_id
7.SELECT train.train_nom
FROM train, arret, trajet, grare
WHERE gare.gare_nom=’Gare de Cholet’
AND gare.gare_abrege = arret.gare_abrege
AND arret.arret_HorairePrevu > ‘2017-01-02 06:00:00’
AND arret.arret_HorairePrevu < ‘2017-01-02 08:00:00’ AND arret.trajet_id = trajet.trajet_id
AND trajet.train_id=train.train_id
//SELECT DISTINCT arret_horaireprevu
FROM arret , gare , trajet
WHERE arret.gare_abrege=gare.gare_abrege AND gare.gare_nom='Gare de Nantes'
AND trajet.trajet_id = arret.trajet_id
AND arret.arret_horaireprevu BETWEEN '2017-12-05 00:00:00' AND '2017-12-05 23:59:59' AND trajet.trajet_id IN (
//SELECT DISTINCT trajet.trajet_id
FROM gare , arret , trajet
WHERE arret.gare_abrege=gare.gare_abrege
AND trajet.trajet_id = arret.trajet_id
AND gare.gare_abrege='NANTES'
AND arret.arret_horaireprevu BETWEEN '2017-12-05 00:00:00' AND '2017-12-05 23:59:59'
INTERSECT
//SELECT DISTINCT trajet.trajet_id
FROM gare , arret , trajet
WHERE arret.gare_abrege=gare.gare_abrege
AND trajet.trajet_id = arret.trajet_id
AND gare.gare_abrege='LYON-PART-DIEU'
AND arret.arret_horaireprevu BETWEEN '2017-12-05 00:00:00' AND '2017-12-05 23:59:59' )
//SELECT count (DISTINCT Personne_id) FROM conducteur
//SELECT count (DISTINCT personne.Personne_id)
FROM personne
INNER JOIN conducteur ON (conducteur.personne_id=personne.personne_id)

SELECT chefdegare.personne_id , count (*) FROM chefdegare group by personne_id
SELECT MAX(Arret_Horairerealise - Arret_Horaireprevu ) FROM arret
WHERE DATE(arret.arret_horairerealise)= '2017-11-15' AND DATE(arret.arret_horaireprevu)= '2017-11-15'
SELECT avg (arret_horairerealise - arret_horairePrevu) FROM arret
WHERE DATE(arret_horairerealise)='2017-11-15'
AND DATE(arret_horaireprevu)='2017-11-15'
AND (arret_horairerealise > arret_horairePrevu

SELECT trajet.trajet_id , MAX(arret.arret_horairerealise) - MIN(arret.arret_horairerealise) , conducteur.personne_id , personne.personne_nom , personne.personne_prenom
FROM trajet , arret , conducteur , personne
WHERE trajet.trajet_id = arret.trajet_id
AND trajet.personne_id=conducteur.personne_id
AND conducteur.personne_id=personne.personne_id
AND DATE(arret.arret_horairerealise) BETWEEN '2017-11-01' AND '2017-11-30' GROUP BY trajet.trajet_id , conducteur.personne_id , personne.personne_id
