### Réponses aux questions du lab

1. Lister les name et birthplace de tous les artists
```sql
SELECT name,birthplace
FROM artists;
```
Résultat obtenu:
![Question 1](Images/question_01.png)


2. Lister le title et le price de toutes les artworks après 1600
```sql
SELECT title,price
FROM artworks
WHERE year > 1600;
```
Résultat obtenu:
![Question 2](Images/question_02.png)

3. Lister le title et le type de toutes les artworks qui ont été peintes en 2000 ou peintes par Picasso
```sql
SELECT title,type
FROM artworks
WHERE year=2000 OR artist_name='Picasso';
```
Résultat obtenu:
![Question 3](Images/question_03.png)

4. Lister les name et birthplace de tous les artists nés entre 1880 et 1930. (ASTUCE: EXTRACT(YEAR FROM dateofbirth) vous donne l'année à partir d'un attribut DATE)
```sql
SELECT name,birthplace
FROM artists
WHERE EXTRACT(year from dateofbirth) BETWEEN 1880 and 1930;
```
Résultat obtnu:
![Question 4](Images/question_04.png)

5. Lister les name et le country de naissance de tous les artists dont le style de peinture est Modern, Baroque or Renaissance. (ASTUCE: utilisez le mot-clé IN)
```sql
SELECT name,country
FROM artists
WHERE style IN('Modern','Baroque','Renaissance');
```
Résultat obtenu:
![Question 5](Images/question_05.png)

6. Lister tous les détails des artworks dans la base de données, triés par title
```sql
SELECT *
FROM artworks
ORDER BY title;
```
Résultat obtenu:
![question 6](Images/question_06.png)

7. Lister les name et les customer ids de tous les customers qui aiment Picasso
```sql
SELECT name,id
FROM customers
WHERE customers.id IN
(SELECT customer_id
FROM likeartists
WHERE artist_name='Picasso');
```
Résultat obtenu:
![Question 7](Images/question_07.png)

8. Lister les name de tous les customers qui aiment les artistes de style Renaissance et dont le price est supérieur à 30000
```sql
SELECT name
FROM customers
WHERE customers.id IN 
(SELECT customer_id
 FROM likeartists
 WHERE artist_name IN
 (SELECT artists.name
 FROM artists,artworks
 WHERE artists.style='Renaissance' AND artworks.price>30000));
```
Résultat obtenu:
![Question 8](Images/question_08.png)
