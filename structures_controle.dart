void main() {
  //* Message de bienvenue
  print("=== UTILISATION DE STRUCTURES DE CONTRÔLE COMPLEXES ===");
  print(
    "Ce programme parcourt une liste d'entiers, teste les multiples de 3,\n"
    "utilise switch pour catégoriser les nombres et calcule une somme spécifique.\n",
  );

  //* 1. Déclarer une liste de nombres [3, 9, 12, 15, 18, 21, 24, 27, 30]
  List<int> nombres = [3, 9, 12, 15, 18, 21, 24, 27, 30];

  print("Liste de nombres : $nombres");
  print("Nombre d'éléments : ${nombres.length}\n");

  //* Variable pour calculer la somme des nombres multiples de 3 et supérieurs à 15
  int sommeMultiplesSup15 = 0;

  //* 2. Utiliser une boucle for pour parcourir la liste
  print("=== ANALYSE DE CHAQUE NOMBRE ===");
  for (int nombre in nombres) {
    print("Nombre : $nombre");

    //* 3. Structure conditionnelle pour tester si le nombre est multiple de 3
    if (nombre % 3 == 0) {
      print("  → Multiple de 3 : OUI");
    } else {
      print("  → Multiple de 3 : NON");
    }

    //* 4. Structure switch pour catégoriser le nombre
    String categorie;
    if (nombre < 15) {
      categorie = "Faible";
    } else if (nombre >= 15 && nombre <= 25) {
      categorie = "Moyen";
    } else {
      categorie = "Élevé";
    }

    print("  → Catégorie : $categorie");

    //* 5. Calculer la somme des nombres multiples de 3 et supérieurs à 15
    if (nombre % 3 == 0 && nombre > 15) {
      sommeMultiplesSup15 += nombre;
      print("  → Ajouté à la somme (multiple de 3 et > 15)");
    }

    print(""); // Ligne vide pour la lisibilité
  }

  //* Afficher la somme finale
  print("=== RÉSULTAT FINAL ===");
  print(
    "Somme des nombres multiples de 3 et supérieurs à 15 : $sommeMultiplesSup15",
  );

  //* Vérification manuelle pour confirmer le résultat
  print("\n=== VÉRIFICATION ===");
  List<int> nombresVerification = [];
  for (int nombre in nombres) {
    if (nombre % 3 == 0 && nombre > 15) {
      nombresVerification.add(nombre);
    }
  }

  print("Nombres multiples de 3 et supérieurs à 15 : $nombresVerification");
  int sommeVerification = nombresVerification.fold(
    0,
    (sum, element) => sum + element,
  );
  print("Somme calculée manuellement : $sommeVerification");
  print(
    "Résultat correct : ${sommeMultiplesSup15 == sommeVerification ? 'OUI' : 'NON'}",
  );
}
