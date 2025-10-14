# Calculateur d'IMC

Une application Dart simple pour calculer l'Indice de Masse Corporelle (IMC) et obtenir un diagnostic.

## Contexte

Cette application a été développée dans le cadre de la **seconde activité de la formation en développement mobile niveau intermédiaire de D-clic (OIF)**.

## Description

Ce programme permet de :
- Calculer l'IMC d'une personne à partir de son poids et de sa taille
- Fournir un diagnostic basé sur les valeurs d'IMC standard
- Saisir la taille en centimètres pour plus de facilité

## Installation et utilisation

1. Assurez-vous d'avoir Dart installé sur votre système
2. Clonez ou téléchargez le fichier `imc_calculator.dart`
3. Exécutez le programme :
   ```bash
   dart run imc_calculator.dart
   ```

## Utilisation

1. Le programme vous demandera votre poids en kilogrammes
2. Ensuite, votre taille en centimètres (ex: 170 pour 1m70)
3. L'IMC sera calculé automatiquement
4. Un diagnostic sera affiché selon les critères suivants :
   - **< 18.5** : Sous-poids
   - **18.5 - 24.9** : Poids normal
   - **25 - 29.9** : Surpoids
   - **≥ 30** : Obésité

## Exemple

```
Bienvenue dans l'application de calcul d'IMC !
Veuillez entrer votre poids en kilogrammes :
70
Veuillez entrer votre taille en centimètres (ex: 170 pour 1m70) :
170

=== RÉSULTAT ===
Votre IMC est : 24.22
Diagnostic : poids normal
```

## Formule

IMC = poids (kg) / taille (m)²

## Technologies utilisées

- Dart
- Bibliothèque dart:io pour les entrées/sorties
