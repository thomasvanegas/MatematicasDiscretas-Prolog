% HECHOS DE LA BASE DE DATOS (BASE DE CONOCIMIENTOS) - (INCLUYE LOS HECHOS DEL TALLER N3).

% Estructura de la Cláusula actorPelicula -> actorPelicula(a, p), a actua en p

actorPelicula('tom hanks', 'forrest gump').
actorPelicula('tom hanks', naufrago).
actorPelicula('tom hanks', 'el codigo da vinci').
actorPelicula('audrey tautou', 'el codigo da vinci').
actorPelicula('audrey tautou', 'coco antes de chanel').
actorPelicula('will smith', focus).
actorPelicula('will smith', 'soy leyenda').
actorPelicula('will smith', 'en busca de la felicidad').
actorPelicula('jaden smith', 'en busca de la felicidad').
actorPelicula('james karen', 'en busca de la felicidad').

% Estructura de la Cláusula directorDePelicula -> directorDePelicula(d, p), d es el director de p

directorDePelicula('robert zemeckis', 'forrest gump').
directorDePelicula('robert zemeckis', 'naufrago').
directorDePelicula('ron howard', 'el codigo da vinci').
directorDePelicula('anne fontaine', 'coco antes de chanel').
directorDePelicula('glenn ficarra', focus).
directorDePelicula('francis lawrence', 'soy leyenda').
directorDePelicula('grabriele muccino', 'en busca de la felicidad').


% REGLAS DE LA BASE DE DATOS - RECORDAR: REGLAS == IMPLICACIONES LÓGICAS.

% Estructura de la Regla dirigeActor -> dirigeActor(d, a), retorna true <=> d ha dirigido a 'a' en alguna película.

dirigeActor(DIRECTOR, ACTOR) :- directorDePelicula(DIRECTOR, PELICULA), actorPelicula(ACTOR, PELICULA), PELICULA==PELICULA.

% Estructura de la Regla actuanJuntos -> actuanJuntos(a1, a2, p), retorna true <=> a1 y a2 actuan en p.

actuanJuntos(ACTOR1, ACTOR2, PELICULA) :- actorPelicula(ACTOR1, PELICULA), actorPelicula(ACTOR2, PELICULA), ACTOR1\=ACTOR2, PELICULA==PELICULA.







