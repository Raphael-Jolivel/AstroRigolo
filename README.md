# 🔮 AstroLOL – Site d’horoscopes décalés

AstroLOL est un site web humoristique et interactif qui revisite le concept des horoscopes en jouant avec les clichés associés aux signes du zodiaque. 
L’objectif est de proposer une expérience ludique, moderne et accessible, même pour ceux qui ne s’intéressent pas à l’astrologie. 

## ✨ Fonctionnalités principales

- Accueil avec **roue interactive** regroupant tous les signes astrologiques, chaque logo menant à la page dédiée. 
- Pages personnalisées pour chaque signe : description comique, traits de caractère stéréotypés et résumé humoristique. 
- Générateur de phrases comiques aléatoires via un bouton “Voir ma prédiction”, avec des phrases stockées en base de données. 
- Création de compte utilisateur avec détection automatique du signe à partir de la date de naissance. 
- Affichage personnalisé du profil : accès direct à la page de son signe après connexion. 
- Navigation fluide et design responsive, adapté aux différents écrans. 

## 🗄️ Architecture de la base de données

Le projet s’appuie sur une base de données MySQL composée de quatre tables principales. 

- **categorie**  
  - ID_cat (int, PK)  
  - Intitule (varchar)  

- **signe**  
  - ID_signes (int, PK)  
  - Intitule (varchar)  
  - Description (text)  
  - Traits_Typiques (text)  
  - Date_Debut (date)  
  - Date_Fin (date)  
  - ID_Categorie (int, FK → categorie)  
  - Titre (varchar)  
  - Titre2 (varchar)  
  - Resume (text)  

- **phrases**  
  - ID_phrases (int, PK, auto-incrément)  
  - Contenu (text)  
  - ID_Signe (int, FK → signe)  
  - nom_phrases (varchar)  

- **utilisateur**  
  - ID_utilisateur (int, PK, auto-incrément)  
  - Nom (varchar)  
  - Prenom (varchar)  
  - Mail (varchar, unique)  
  - DDN (date)  
  - Newsletter (tinyint)  
  - ID_Signe (int, FK → signe)  
  - mdp (varchar)  


## 🛠️ Stack technique & aspects notables

- Base de données relationnelle MySQL avec intégrité référentielle (tables passées de MyISAM à InnoDB pour gérer correctement les clés étrangères). 
- Récupération des contenus (descriptions, traits, prédictions) via des requêtes SELECT pour alimenter dynamiquement les pages. 
- Génération de phrases aléatoires depuis la base pour chaque signe. 
- Formulaire d’inscription avec traitement et sécurisation des données utilisateur, calcul automatique du signe selon la date de naissance. 

## 😅 Difficultés rencontrées

- Problèmes de clés étrangères non prises en compte à cause du moteur MyISAM, corrigés en migrant les tables vers InnoDB. 
- Quelques erreurs lors des INSERT dans les tables, principalement liées au contenu, corrigées au fur et à mesure.

## 👥 Équipe & répartition des tâches

- **Raphaël FRIN**  
  - Création de la roue d’accueil représentant les signes.  
  - Intégration des contenus via SELECT pour toutes les pages de signes.  
  - Adaptation du CSS et gestion de la connexion utilisateur et de l’affichage personnalisé.  
  - Refonte de la fonction de sélection aléatoire des phrases.  
  

- **Raphaël JOLIVEL-SAVAGE**  
  - Conception de la base de données : création des tables et insertion des données.  
  - Mise en place de la création de compte et traitement sécurisé des formulaires.  
  - Calcul automatique du signe en fonction de la date de naissance de l’utilisateur.  
  - Animation des phrases côté JavaScript.  
  

## ✅ Bilan du projet

Le projet a permis d’améliorer un site existant pour en faire une application plus complète et concrète, tout en conservant son originalité.
Le travail en binôme s’est déroulé dans de bonnes conditions, avec une répartition claire des tâches et une bonne entraide, ce qui a favorisé l’apprentissage et la montée en compétences techniques. 
