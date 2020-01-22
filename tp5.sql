#Q1
INSERT INTO type_de_Salles (type_de_Salles_id)
VALUES('stade') ;
INSERT INTO Type_de_Salles (type_de_Salles_id)
VALUES('halle');
INSERT INTO type_de_Salles (type_de_Salles_id) 
VALUES('cite des congres');
INSERT INTO salles (salles_id,salles_nom,salles_capacite_max,salles_cout,salles_nombre_de_securite ,type_de_salles_id )
VALUES(0001,'la beaujoire',50000,50000,125,'stade');

#Q2
INSERT INTO salles (salles_id,salles_nom,salles_capacite_max,salles_cout,salles_nombre_de_securite,type_de_salles_id)
VALUES(0002,'la trocadiere',10000,12000,24,'halle');

#Q3
INSERT INTO salles (salles_id,salles_nom,salles_capacite_max,salles_cout,salles_nombre_de_securite,type_de_salles_id)
VALUES(0003,'nantes',2000,10000,24,'cite des congres');

#Q4
INSERT INTO tourneur (tourneur_entreprise)
VALUES ('213 Productions');
INSERT INTO tourneur (tourneur_entreprise)
VALUES ('jive/epic');
INSERT INTO tourneur (tourneur_entreprise)
VALUES ('vertigo');
INSERT INTO artiste_groupe (artiste_nom_de_scene, artiste_Nombre_de_securite,tourneur_entreprise)
VALUES ('patrick bruel' , 50 ,'213 Productions');
INSERT INTO artiste_groupe (artiste_nom_de_scene)
VALUES ('reflets d''acide' );
INSERT INTO artiste_groupe (artiste_nom_de_scene, artiste_Nombre_de_securite,tourneur_entreprise)
VALUES ('aldebert' , 2 ,'jive/epic');
INSERT INTO artiste_groupe (artiste_nom_de_scene, artiste_Nombre_de_securite,tourneur_entreprise)
VALUES ('dire straits' , 70 ,'vertigo');
INSERT INTO concert (concert_id , Concert_date , Concert_cachet , artiste_nom_de_scene , salles_id )
VALUES (1111,'2019-09-17',90000,'patrick bruel',0001);
INSERT INTO concert (concert_id , Concert_date , Concert_cachet , artiste_nom_de_scene , salles_id )
VALUES (1112,'2019-09-19',90000,'patrick bruel',0001);
INSERT INTO concert (concert_id , Concert_date , Concert_cachet , artiste_nom_de_scene , salles_id )
VALUES (1113,'2019-09-20',90000,'patrick bruel',0001);
INSERT INTO concert (concert_id , Concert_date , Concert_cachet , artiste_nom_de_scene , salles_id )
VALUES (1114,'2019-09-26',90000,'patrick bruel',0001);
INSERT INTO concert (concert_id , Concert_date , Concert_cachet , artiste_nom_de_scene , salles_id )
VALUES (1115,'2019-12-20',20000,'aldebert',0003);
INSERT INTO concert (concert_id , Concert_date , Concert_cachet,concert_nombre_de_personnes_reserve, artiste_nom_de_scene , salles_id )
VALUES (1116,'2019-07-03',10000,1230,'reflets d''acide',0002);
INSERT INTO concert (concert_id , Concert_date , Concert_cachet,concert_nombre_de_personnes_reserve, artiste_nom_de_scene , salles_id )
VALUES (1117,'2019-07-05',10000,1760,'reflets d''acide',0002);
INSERT INTO concert (concert_id , Concert_date , Concert_cachet , artiste_nom_de_scene , salles_id )
VALUES (1118,'2019-09-26',100000,'dire straits',0001);

#Q5 
UPDATE concert set concert_time = '14:00:00' where concert_id = 1115 ;
INSERT INTO concert (concert_id , Concert_date ,concert_time, Concert_cachet ,artiste_nom_de_scene , salles_id )
VALUES (1119,'2019-12-20','21:00:00',20000,'aldebert',0003);
#Q6
INSERT INTO type_de_Salles (type_de_Salles_id)
VALUES('theatre');
INSERT INTO salles (salles_id,salles_nom,type_de_salles_id )
VALUES(0004,'l''onyx','theatre');
INSERT INTO concert (concert_id , Concert_date , Concert_cachet , artiste_nom_de_scene , salles_id )
VALUES (1121,'2019-12-21',90000,'patrick bruel',0002);
INSERT INTO concert (concert_id , Concert_date , Concert_cachet , artiste_nom_de_scene , salles_id )
VALUES (1122,'2019-12-26',90000,'patrick bruel',0004);

#Q7



