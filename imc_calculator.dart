import 'dart:io';

void main() {
  //* 1. Message de bienvenue
  print("Bienvenue dans l'application de calcul d'IMC !");

  //* 2. Demander le poids
  print("Veuillez entrer votre poids en kilogrammes :");
  String? poidsInput = stdin.readLineSync();
  double poids = double.parse(poidsInput!);

  //* 4. Demander la taille
  print("Veuillez entrer votre taille en centimètres (ex: 170 pour 1m70) :");
  String? tailleInput = stdin.readLineSync();
  double tailleEnCm = double.parse(tailleInput!);
  double taille = tailleEnCm / 100; // Conversion cm -> m

  //* 6. Calculer l'IMC
  double imc = poids / (taille * taille);

  //* 7. Déterminer le diagnostic
  String diagnostic;
  if (imc < 18.5) {
    diagnostic = "sous-poids";
  } else if (imc >= 18.5 && imc < 25) {
    diagnostic = "poids normal";
  } else if (imc >= 25 && imc < 30) {
    diagnostic = "surpoids";
  } else {
    diagnostic = "obésité";
  }

  //* 8. Afficher le résultat
  print("\n=== RÉSULTAT ===");
  print("Votre IMC est : ${imc.toStringAsFixed(2)}");
  print("Diagnostic : $diagnostic");
}
