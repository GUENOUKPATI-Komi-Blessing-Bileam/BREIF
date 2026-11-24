Remarque 1: Lors des enregistrements des ligne de la table prescription, l'incrémentation de l'id\_consltation a été erronée, au lieu de 5 l'on a mis 7.





Scripte1:

SELECT nom, prenom, date\_naissance

FROM patient;



Scripte2:

SELECT \*

FROM patient

WHERE ville = 'Lome' AND sexe = 'F';



Scripte3:

SELECT \*

FROM medicament

WHERE prix\_unitaire > 2000;



Scripte4:

SELECT \*

FROM rendez\_vous

WHERE statut = 'Annule';



Scripte5:

SELECT \*

FROM medicament

ORDER BY prix\_unitaire ASC

LIMIT 5;



**Scripte6:**

SELECT \*

FROM patient

WHERE date\_naissance < '1990-01-01';



**Scripte7:**

SELECT COUNT(\*) AS totale

FROM patient;



**Scripte8:**

**SELECT patient.nom, patient.prenom, rendez\_vous.date\_heure, rendez\_vous.statut**

**FROM rendez\_vous**

**JOIN patient ON rendez\_vous.id\_patient = patient.id\_patient;**



**Scripte9:**

SELECT consultation.\* , patient.nom, patient.prenom, personnel\_sante.\*

FROM consultation

JOIN patient ON consultation.id\_patient = patient.id\_patient

JOIN personnel\_sante ON consultation.id\_personnel = personnel\_sante.id\_personnel;



**Scripte10:**

SELECT medicament.nom, ligne\_prescription.posologie, ligne\_prescription.quantite

FROM ligne\_prescription

JOIN medicament ON ligne\_prescription.id\_medicament = medicament.id\_medicament;



**Scripte11:**

SELECT examen.\*, resultat.interpretation

FROM resultat

JOIN examen ON examen.id\_examen = examen.id\_examen;



**Remarque:** La table examen ne référence pas la table résultat.



**Scripte12:**

SELECT hospitalisation.\*, lit.numero, patient.nom

FROM hospitalisation

JOIN patient ON hospitalisation.id\_patient = patient.id\_patient

JOIN lit ON hospitalisation.id\_lit = lit.id\_lit;



**Scripte13:**

SELECT facture.\*, patient.nom

FROM facture

JOIN patient ON facture.id\_patient = patient.id\_patient;



**Remarque:** la question 14 dans notre cas actuel n'est pas faisable car les 4 tables sollicité pour cet requête n'ont pas une relation équilibrée car dans les normes au un de ces tables doit référencée les trois autre pour fournir une enregistrement équilibrée ce qui n'est pas le cas ici. De plus dans la base entière aucun attribut ne regorge de nom des médecins.



**Remarque: la question 15 a le même problème que son précédant.**

