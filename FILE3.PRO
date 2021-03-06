/*person("Bill", "male").
person("John", "male").
person("Pam", "female").
person(Name, Gender)*/
/*
father("Bill","John").
father("Pam"."Bill").

father(person("Bill","male"),person("John","male")).
father(person("Pam","female"),person("Bill","male")).*/

parent(person("Bill","male"),person("John","male")).
parent(person("Pam","female"),person("Bill","male")).
parent(person("Pam","female"),person("Jane","female")).
parent(person("Jane","female"),person("Joe","male")).

/*grandFather(Person,GrandFather):-
    father(Father,GrandFather),
    father(Person,Father).*/
grandFather(Person,TheGrandFather):-
    parent(Person,ParentOfPerson),
    father(ParentOfPerson,TheGrandFather).

/*1st version
father(P,F):-
    parent(P,F),
    F=person(_,"male").  %Line2*/
/*2nd version*/
father(P,person(Name,"male")):-
    parent(P,person(Name,"male")).

ancestor(Person, Ancestor) :- parent(Person, Ancestor).
ancestor(Person, Ancestor) :- parent(Person, P1), ancestor(P1, Ancestor).