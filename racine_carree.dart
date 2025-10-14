import 'dart:math';
import 'dart:io';

void main() {
  //* Message de bienvenue
  print("=== CALCULATEUR DE RACINE CARRÉE ===");
  print("Ce programme calcule la racine carrée d'un nombre de votre choix.\n");

  //* Demander à l'utilisateur de saisir un nombre
  print("Veuillez entrer un nombre positif :");
  String? input = stdin.readLineSync();

  //* Convertir l'entrée en double
  double nombre = double.parse(input!);

  //* Vérifier que le nombre est positif
  if (nombre < 0) {
    print(
      "Erreur : La racine carrée d'un nombre négatif n'est pas définie dans les nombres réels.",
    );
    return;
  }

  //* Calculer la racine carrée en utilisant la fonction sqrt() de dart:math
  double racineCarree = sqrt(nombre);

  //* Afficher le résultat
  print("\n=== RÉSULTAT ===");
  print("Nombre saisi : $nombre");
  print("Racine carrée : ${racineCarree.toStringAsFixed(4)}");

  //* Vérification : afficher le carré de la racine pour confirmer
  double verification = racineCarree * racineCarree;
  print("Vérification (racine²) : ${verification.toStringAsFixed(4)}");
}
