# 📊 General Social Survey (GSS) Data Analysis

## 📌 Description
Ce projet analyse la relation entre le niveau d'éducation et le revenu en utilisant les données du **General Social Survey (GSS) 2021**. 
L'objectif est d'examiner l'impact de l'éducation sur le revenu, en tenant compte d'autres variables comme l'âge et les heures travaillées.

---

## 📂 Contenu du projet

- **`GSS_Analysis.Rmd`** : Script RMarkdown contenant l'analyse complète (import, nettoyage, analyse statistique, visualisation).
- **`GSS_Analysis.html`** : Résultat exporté du fichier RMarkdown (facilement lisible).
- **`data/`** : Dossier contenant le fichier de données GSS 2021 (`gss2021.sas7bdat`).
- **`README.md`** : Ce fichier expliquant le projet.

---

## 📊 Analyses réalisées

✅ **Corrélation entre éducation et revenu**

✅ **Régression linéaire simple** : Prédiction du revenu en fonction du niveau d'éducation.

✅ **Régression multiple** : Intégration des variables âge et heures travaillées.

✅ **Visualisation des résultats** : Graphiques pour mieux comprendre les tendances.

---

## 🔧 Installation et utilisation

### 1️⃣ Prérequis
Assurez-vous d'avoir **R** et **RStudio** installés, ainsi que les bibliothèques suivantes :
```r
install.packages(c("haven", "tidyverse", "corrplot", "ggplot2"))
```

### 3️⃣ Exécuter le script RMarkdown
Ouvrez `GSS_Analysis.Rmd` dans **RStudio** et exécutez les cellules pour reproduire l'analyse.

---

## 📌 Résultats clés
- Une année supplémentaire d'éducation augmente le revenu annuel moyen de **4 547 unités monétaires**.
- L'ajout de l'âge et des heures travaillées améliore légèrement la prédiction du revenu.
- L'éducation reste le facteur principal influençant le revenu.

---

## 🚀 Améliorations possibles
🔹 Ajouter d'autres variables : **sexe, type d'emploi, prestige professionnel, zone géographique**.

🔹 Étudier les tendances sur plusieurs années pour observer des évolutions.

🔹 Tester des modèles plus avancés (forêts aléatoires, régressions non linéaires, etc.).

---

## 📜 Licence
Ce projet est sous licence MIT. Vous êtes libre de l'utiliser, de le modifier et de le partager.

---

## ✉️ Contact
📧 **Email** : [ditomaakounda@gmail.com](mailto:ditomaakounda@gmail.com)

🌍 **GitHub** : [github.com/ditoma18](https://github.com/ditoma18)
