mother("Bill", "Lisa").
 
father("Bill", "John").
father("Pam", "Bill").
father("Jack", "Bill").
 
parent(Person, Parent) :-
    mother(Person, Parent);
    father(Person, Parent).
