import 'dart:io';

void main() {
  //* Message de bienvenue
  print("=== UTILISATION DE LA FONCTION REDUCE ===");
  print(
    "Ce programme utilise la fonction reduce pour calculer la somme et trouver le maximum.\n",
  );

  //* 1. Déclarer et initialiser une liste de nombres entiers
  List<int> nombres = [5, 10, 15, 20, 25];

  print("Liste de nombres : $nombres");
  print("Nombre d'éléments : ${nombres.length}\n");

  //* 2. Utiliser reduce pour calculer la somme de tous les nombres
  int somme = nombres.reduce(
    (valeurPrecedente, element) => valeurPrecedente + element,
  );

  //* 3. Utiliser reduce pour trouver le nombre maximum
  int maximum = nombres.reduce(
    (valeurPrecedente, element) =>
        valeurPrecedente > element ? valeurPrecedente : element,
  );

  //* Afficher les résultats
  print("=== RÉSULTATS ===");
  print("Somme de tous les nombres : $somme");
  print("Nombre maximum : $maximum");

  //* Vérification manuelle pour confirmer les résultats
  print("\n=== VÉRIFICATION ===");
  int sommeManuelle = 0;
  int maxManuel = nombres[0];

  for (int nombre in nombres) {
    sommeManuelle += nombre;
    if (nombre > maxManuel) {
      maxManuel = nombre;
    }
  }

  print("Somme calculée manuellement : $sommeManuelle");
  print("Maximum trouvé manuellement : $maxManuel");

  //* Vérifier que les résultats sont identiques
  print("\n=== CONFIRMATION ===");
  print("Somme correcte : ${somme == sommeManuelle ? 'OUI' : 'NON'}");
  print("Maximum correct : ${maximum == maxManuel ? 'OUI' : 'NON'}");
}
