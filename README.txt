---------------------INTRODUCTION----------------------

This is a prolog program to identify Phylogenetic relation between a certain family of animals


---------------------STEPS TO INSTALL----------------------

In the terminal type the following commands:
:~$ sudo apt-get build-dep swi-prolog
:~$ sudo add-apt-repository ppa:swi-prolog/stable
:~$ sudo apt-get update
:~$ sudo apt-get install swi-prolog


-------------STEPS TO RUN THE FILE AND QUERIES-------------

For running the program, go to the project folder location and type the following command:
:~$ swipl -s Phylogenetic.pl

For queries:

1. Common Genus:
  ?- common_genus('animal symbol 1', 'animal symbol 2').
  ?- common_genus('animal symbol', X).
    X returns the all animal symbols belogining to the same genus as 'animal symbol'.

2. Common Species:
  ?- common_genus('animal symbol 1', 'animal symbol 2').
  ?- common_genus('animal symbol', X).
    X returns the all animal symbols belogining to the same specie as 'animal symbol'.

3. Relation Path:
  ?- common_genus('animal symbol 1', 'animal symbol 2', X).
    X returns the path from 'animal symbol 1' to 'animal symbol 2' in list format.


-------------------------THANK YOU-------------------------
