% HECHOS DE LA BASE DE DATOS

perro(lilo).
perro(sandy).
perro(dandy).
perro(manchas).
perro(nino).

colorPerro(lilo, negro).
colorPerro(sandy, cafe).
colorPerro(dandy, negro).
colorPerro(manchas, blanco).
colorPerro(nino, blanco).

% REGLAS DE LA BASE DE DATOS

animal(A) :- perro(A). %Var A animal(A) <=> perro(A)
perroNegro(VAR) :- perro(VAR), colorPerro(VAR, negro).



