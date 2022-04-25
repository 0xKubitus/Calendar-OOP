PROJET THP DU LUNDI 25 AVRIL 2022: "Un calendrier très très PÔÔ" (https://www.thehackingproject.org/fr/dashboard/courses/1/projects/96)

* * * * * * * * * * * * * * * * * * * * * * * * * * 
 
RESTE A FAIRE =>

2.4. Fonctionnalités BONUS
Le programme est fini (pfiou !). J'espère que tu n'as pas été trop perdu dans cette première journée de POO mais si tu es arrivé jusque-là, c'est top !

Voici d'autres exemples de classes que l'on aurait pu ajouter à ton programme pour le rendre plus cool. Si tu as déjà fini le projet, prends le temps de les coder (attention c'est chaud !).

2.4.1. EventCreator
Nous pourrions faire une classe EventCreator qui, à son exécution, lance un menu permettant de créer un évènement de façon un peu plus user-friendly :

Salut, tu veux créer un événement ? Cool ! 
Commençons. Quel est le nom de l'événement ?
> RDV

Super. Quand aura-t-il lieu ?
> 2019-01-13 09:00

Au top. Combien de temps va-t-il durer (en minutes) ?
> 30

Génial. Qui va participer ? Balance leurs e-mails
> julie@julie.com ; jean@jean.jean

Super, c'est noté, ton évènement a été créé !
Nos conseils : tu devrais t'en sortir avec des puts, des gets.chomp qu'on stocke dans des variables puis un Event.new(...) (dans lequel tu injectes les variables) pour finir. Tu peux aussi rajouter un petit affichage de l'évènement créé (avec to_s) en fin de programme.

2.4.2. CalendarDisplayer
Une jolie classe CalendarDisplayer qui prend tous les événements, et qui fait un calendrier en ASCII un peu comme ça :

-----------------------------------------------------------------------
|1        |2        |3        |4        |5        |6        |7        |
|         |         |         |2 events |         |9:00am   |         |
|         |         |         |scheduled|         |Sandbox  |         |
|         |         |         |         |         |calendar |         |
|         |         |         |         |         |challenge|         |
-----------------------------------------------------------------------
|8        |9        |10       |11       |12       |13       |14       |
|         |         |9:00am   |10:00am  |         |         |         |
|         |         |Post     |Profit   |         |         |         |
|         |         |challenge|         |         |         |         |
|         |         |to main  |         |         |         |         |
-----------------------------------------------------------------------
|15       |16       |17       |18       |19       |20       |21       |
|         |         |         |         |         |         |         |
|         |         |         |         |         |         |         |
|         |         |         |         |         |         |         |
|         |         |         |         |         |         |         |
-----------------------------------------------------------------------
|22       |23       |24       |25       |26       |27       |28       |
|         |3 events |         |         |         |2 events |         |
|         |scheduled|         |         |         |scheduled|         |
|         |         |         |         |         |         |         |
|         |         |         |         |         |         |         |
-----------------------------------------------------------------------
|29       |30       |31       |         |         |         |         |
|         |         |7:30pm   |         |         |         |         |
|         |         |Halloween|         |         |         |         |
|         |         |party    |         |         |         |         |
|         |         |         |         |         |         |         |
-----------------------------------------------------------------------
Nos conseils : c'est potentiellement un gros boulot de faire ça bien. Pour te simplifier la vie, commence par le faire fonctionner sur un cas simple :

Sur un mois précis (comme ça pas besoin d'adapter le nombre de jour de ton calendrier)
Avec un seul évènement affiché par jour
etc.
2.4.3. DateParser
Pour la classe EventCreator, ce n'est pas pratique de demander à l'utilisateur une date au format AAAA-MM-JJ HH:MM. Ce serait bien d'avoir une classe qui prend un string en entrée, et qui te sort une jolie en retour. Genre :

DateParser("lundi prochain à 9 h")
#=> 2010-10-31 09:00:00 +0100

DateParser("le 14 octobre à 15 h")
#=> 2010-09-14 15:00:00 +0100
Nos conseils : à nouveau c'est potentiellement une fonctionnalité super compliquée ! Si tu veux t'y atteler commence par faire un cas simple : l'utilisateur doit saisir un truc du genre "le [numéro du jour] [nom du mois] à [numéro de l'heure] h [numéro de la minute]". Ensuite tu essayeras de faire marcher des trucs du genre "lundi prochain à telle heure".

2.4.4. Et plein d'autres
On pourra t'en sortir plein des fonctionnalités qui mettraient Outlook à genou. L'objectif est que tu comprennes l'intérêt de la décomposition par classes, qui permet une grande liberté dans ton programme.

3. Rendu attendu
Le repo avec les classes remplies.
