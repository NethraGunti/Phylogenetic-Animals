species_name('african wild dog', 'lycaon pictus').
species_name('common fox', 'vulpes vulpes').
species_name('arctic fox', 'vulpes lagopus').
species_name('fennec fox', 'vulpes zerda').
species_name('red wolf', 'canis rufus').
species_name('coyote', 'canis latrans').
species_name('gray wolf', 'canis lupus').
species_name('dog', 'canis lupus familiaris').

subspecies('canis lupus', 'canis lupus').
subspecies('canis lupus familiaris', 'canis lupus').

species_genus('lycaon pictus', 'lycaon').
species_genus('vulpes vulpes', 'vulpes').
species_genus('vulpes lagopus', 'vulpes').
species_genus('vulpes zerda', 'vulpes').
species_genus('canis rufus', 'canis').
species_genus('canis latrans', 'canis').
species_genus('canis lupus', 'canis').
species_genus('canis lupus familiaris', 'canis').

genus_family('lycaon', 'canidae').
genus_family('vulpes', 'canidae').
genus_family('canis', 'canidae').


name_genus(X,Y):- species_name(X, Z), species_genus(Z,Y).
common_genus(X,Y):- name_genus(X,Z), name_genus(Y,Z).

getsub(X,Y):- (subspecies(X,Z)-> Y=Z;
                Y=X).
common_species(X,Y):- species_name(X,Zspecie), getsub(Zspecie,Zsub), species_name(Y,Yspecie), getsub(Yspecie,Zsub).


relation_path(A,B,X):- ( A==B -> X=[A];
                        species_name(A,Aspecies), species_name(B, Bspecies), getsub(Aspecies, Asub), getsub(Bspecies, Bsub), (Asub==Bsub -> X=[A,Asub,B];
                          species_genus(Aspecies,Agenus), species_genus(Bspecies, Bgenus), (Agenus==Bgenus -> X=[A,Asub,Agenus,Bsub,B];
                          genus_family(Agenus, Afamily), genus_family(Bgenus, Bfamily), (Afamily==Bfamily -> X=[A, Asub, Agenus, Afamily, Bgenus, Bsub, B])))).
