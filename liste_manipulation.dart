void main() {
  //* Message de bienvenue
  print("=== MANIPULATION DE LISTES ET STRUCTURES DE CONTRÔLE ===");
  print(
    "Ce programme démontre les structures de contrôle et la manipulation de listes.\n",
  );

  //* 1. Déclarer une liste de noms d'étudiants
  List<String> nomsEtudiants = ["Alice", "Bob", "Charlie", "David", "Eve"];
  print("Liste initiale des étudiants : $nomsEtudiants\n");

  //* 2. Utiliser une boucle for pour afficher tous les noms en majuscules
  print("=== AFFICHAGE EN MAJUSCULES (boucle for) ===");
  for (int i = 0; i < nomsEtudiants.length; i++) {
    print("${i + 1}. ${nomsEtudiants[i].toUpperCase()}");
  }
  print("");

  //* 3. Utiliser une boucle while pour afficher tous les noms en minuscules
  print("=== AFFICHAGE EN MINUSCULES (boucle while) ===");
  int index = 0;
  while (index < nomsEtudiants.length) {
    print("${index + 1}. ${nomsEtudiants[index].toLowerCase()}");
    index++;
  }
  print("");

  //* 4. Vérifier si Alice est présente dans la liste
  print("=== VÉRIFICATION DE PRÉSENCE ===");
  String nomRecherche = "Alice";
  if (nomsEtudiants.contains(nomRecherche)) {
    print("$nomRecherche : Présente");
  } else {
    print("$nomRecherche : Absente");
  }

  //* Vérifier la présence d'un nom qui n'existe pas
  String nomInexistant = "François";
  if (nomsEtudiants.contains(nomInexistant)) {
    print("$nomInexistant : Présente");
  } else {
    print("$nomInexistant : Absente");
  }
  print("");

  //* 5. Vérifier si la liste est vide
  print("=== VÉRIFICATION DE LA LISTE ===");
  if (nomsEtudiants.isEmpty) {
    print("Liste vide");
  } else {
    print("Liste non vide");
    print("Nombre d'éléments dans la liste : ${nomsEtudiants.length}");
  }
  print("");

  //* Démonstration supplémentaire : créer une liste vide pour tester
  List<String> listeVide = [];
  print("=== TEST AVEC UNE LISTE VIDE ===");
  if (listeVide.isEmpty) {
    print("Liste vide");
  } else {
    print("Liste non vide");
  }

  //* Affichage final
  print("\n=== FIN DU PROGRAMME ===");
  print(
    "Toutes les opérations de manipulation de listes ont été effectuées avec succès !",
  );
}
