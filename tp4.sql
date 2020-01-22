CREATE DATABASE billetterie; 

CREATE TABLE personne  ( Personne_id integer,Personne_nom varchar(50),Personne_prenom varchar(50),
	PRIMARY KEY (Personne_id ); 

CREATE TABLE tourneur  ( tourneur_entreprise varchar(50),
	PRIMARY KEY (entreprise_id ) ; 

CREATE TABLE artiste_groupe (artiste_nom_de_scene varchar(50),artiste_Nombre_de_securite integer, tourneur_entreprise varchar(50), 
	PRIMARY KEY (artiste_nom_de_scene),  
	FOREIGN KEY (tourneur_entreprise) REFERENCES tourneur (tourneur_entreprise) );

CREATE TABLE type_de_salles (type_de_salles_id varchar(50), [PRIMARY KEY (Personne_id ) ); 

CREATE TABLE salles  (salles_id integer,Salles_capacite_min integer, Salles_capacite_max integer,Salles_nombre_de_securite integer, type_de_salles_id varchar(50), 
	PRIMARY KEY (salles_id), 
	FOREIGN KEY (type_de_salles_id) REFERENCES type_de_salles (type_de_salles_id) ); 

CREATE TABLE concert  (concert_id integer,Concert_date date,Concert_cachet integer,concert_nombre_de_personnes_reserve_artiste integer, concert_nombre_de_personnes_reserve_sponsors integer,
	concert_nombre_de_securite_supplementaire integer, artiste_nom_de_scene varchar(50), salles_id integer,
	PRIMARY KEY (concert_id),
	FOREIGN KEY (artiste_nom_de_scene) REFERENCES artiste_group(artiste_nom_de_scene),
	FOREIGN KEY (salles_id) REFERENCES salles (salles_id) );
	
CREATE TABLE billet
(billet_id integer,billet_prix integer,concert_id integer,
	PRIMARY KEY (billet_id),  
	FOREIGN KEY (Concert_id) REFERENCES concert (Concert_id) ); 

CREATE TABLE achete  (achete_id integer,Personne_id integer,billet_id integer, 
	PRIMARY KEY (achete_id), 
	FOREIGN KEY (Personne_id) REFERENCES concert (Personne_id ), 
	FOREIGN KEY (Concert_id) REFERENCES concert(Concert_id) );
