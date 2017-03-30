/*Ann Jones
Assign 5
Prolog Program */

/*occupations*/
doctor(aaron).
doctor(betty).
doctor(duane).
lawyer(clara).
lawyer(flora).
lawyer(edwin).
%gender
male(aaron).
male(duane).
male(edwin).
female(betty).
female(flora).
female(clara).
%relations
related(aaron).
related(betty).
related(clara).
related1(flora).
related1(duane).
related1(edwin).

%display menu
menu :-
	write('Clue A is If the killer and the victim were related, the killer was a man.
To see pairings type "killer_male(K,V)." Keep hitting the space bar to see all the pairings

Clue B If the killer and the victim were not related, the killer was a doctor.
To see pairings type "killer_doctor(K,V)." Keep hitting the space bar to see all the pairings

Clue C is If the killer and the victim had the same occupation, the victim was a man.
To see pairings type "victim_male(K,V)." Keep hitting the space bar to see all the pairings

Clue D If the killer and the victim had different occupations, the victim was a woman.
To see pairings type "victim_female(K,V)." Keep hitting the space bar to see all the pairings

Clue E If the killer and the victim were of the same sex, the killer was a lawyer.
To see pairings type "killer_lawyer(K,V)." Keep hitting the space bar to see all the pairings

Clue F is If the killer and victim were different sexes, the victim was a doctor.
To see pairings type "victim_doctor(K,V)." Keep hitting the space bar to see all the pairings

Type "menu()." to see the clues again

OR

To guess who the killer and the victim are type "solution(Killer, Victim)." With the name of who you think the Killer is and who you think the Victim is in the correct spots i.e. solution(bill, bob))').

/* solving for victim and killer*/
solution(K,V) :-
	((related(K),related(V); related1(K),related1(V)) -> male(K); doctor(K)),
	((male(K), male(V); female(K), female(V)) -> lawyer(K); doctor(V)),
	((doctor(K), doctor(V); lawyer(K),lawyer(V)) -> male(V); female(V)).
	


/*K and V are related, the killer is male*/
killer_male(aaron, betty).
killer_male(aaron, clara).
killer_male(duane, flora).
killer_male(edwin, flora).
killer_male(duane, edwin).
killer_male(edwin, duane).

/*if K and V not reltaed, the killer is doctor*/


killer_doctor(aaron, duane).
killer_doctor(aaron, edwin).
killer_doctor(aaron, flora).
killer_doctor(betty, duane).
killer_doctor(betty, flora).
killer_doctor(betty, edwin).
killer_doctor(duane, aaron).
killer_doctor(duane, betty).
killer_doctor(duane, clara).

/*if K and V have same occuation, victim is male*/
victim_male(betty, aaron).
victim_male(duane, aaron).
victim_male(aaron, duane).
victim_male(betty, duane).
victim_male(clara, edwin).
victim_male(flora, edwin).

/*if K and V have different occupation, vicim is female*/
victim_female(aaron, clara).
victim_female(betty, clara).
victim_female(duane, clara).
victim_female(aaron, flora).
victim_female(betty, flora).
victim_female(duane, flora).
victim_female(clara, betty).
victim_female(edwin, betty).
victim_female(flora, betty).

/*if K and V were of same sex, killer is lawyer*/
killer_laywer(edwin, duane).
killer_laywer(edwin, aaron).
killer_laywer(clara, flora).
killer_laywer(clara, betty).
killer_laywer(flora, betty).
killer_laywer(flora, clara).

/*if K and V were of different sex, victim is doctor*/
victim_doctor(clara, aaron).
victim_doctor(flora, aaron).
victim_doctor(betty, aaron).
victim_doctor(aaron, betty).
victim_doctor(duane, betty).
victim_doctor(edwin, betty).
victim_doctor(clara, duane).
victim_doctor(flora, duane).
victim_doctor(betty, duane).