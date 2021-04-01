# Lab 09

### Q1a: Test des formes normales
a. Listez toutes les clés candidates de R.

Voici les clés candidates que j'ai trouvé : BA,BC,BD,ABC,ABD,BCD

b. Est-ce que R est dans 3NF ? BNCF ?

R est dans BCNF mais n'est pas dans 3NF.

### Q1b: Test des formes normales

a. Listez toutes les clés candidates de R.

Voici les clés candidates que j'ai trouvé : AB,AC,BC,BD,CD

b. Est-ce que R est dans 3NF ? BNCF ?

R est dans BCNF et dans 3NF.

### Q1c: Test des formes normales

a.  Liste toutes les clés candidates de S.

Voici les clés candidates que j'ai trouvé : B, BA, BC, BD, ABC, ABD, BCD

b. Est-ce que S est dans 3NF? BCNF?

Non, S n'est pas dans 3NF ni dans BCNF.

### Q1d: Test des formes normales

a. Liste toutes les clés candidates de R.

Voici les clés candidates que j'ai trouvé : BC, ABC, BCD

b. Est-ce que R est dans 3NF? BCNF?

R est dans 3NF et BCNF.

### Q1e: Test des formes normales

a. Liste toutes les clés candidates de R.

Voici les clés candidates que j'ai trouvé : AB, ABC, ABD

b. Est-ce que R est dans 3NF? BCNF?

R est dans 3NF et BCNF.

### Q2a: Test de la dépendance fonctionnelle

### Q2b: Test de la dépendance fonctionnelle

R=(A,B,C)

F={
 AB -> C
}

Est-ce que A -> C est valide ?

Oui, A -> c est valide. Voilà comment:

A -> C

BC -> C

### Q2c: Test de la dépendance fonctionnelle

R=(A,B,C)

F={
 AB -> C
}

Est-ce que B -> C est valide ?

Oui. C'est valide. Voici comment:

BA -> C

B -> C

AC -> C

### Q2d: Test de la dépendance fonctionnelle

R=(A,B,C)

F={
 AB -> C
}

Est-ce que A -> C OR B -> C est valide ?

Oui. C'est valide. Voici comment:

A -> C

BC -> C

OU

BA -> C

B -> C

AC -> C

### Q3: Couverture canonique

La couverture canonique est:

{D->A,B->D}

### Q4: Décomposition BCNF
