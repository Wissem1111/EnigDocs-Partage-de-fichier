#include <stdio.h>
#include <stdlib.h>
#include <string.h>

struct etudiant
{
    int num;
    char nompren [100];
    int age;
    char classe [20];
};
typedef struct etudiant Etudiant;

void saisir_etudiant(Etudiant* E);
void remplir_tabEt(Etudiant T[], int n);
void afficher(Etudiant E);
void afficher_tabEt(Etudiant T[], int n);
void get_imin_imax(Etudiant T[], int n, int* pImin, int* pImax);
void permuterChaines(char ch1[],char ch2[]);
void permuter_et1(Etudiant* pA, Etudiant* pB);
void permuter_et2(Etudiant* pA, Etudiant* pB);

int main()
{
    char ch1[100] = "aaaa", ch2[100] = "bbbbbb";
    Etudiant Et1, Et2, TabEt[20];
    int n, Imin, Imax;

 /*   printf("ch1 = %s\t ch2 = %s\n",ch1, ch2);
    permuterChaines(ch1,ch2);
    printf("ch1 = %s\t ch2 = %s\n",ch1, ch2);

    saisir_etudiant(&Et1);
    saisir_etudiant(&Et2);
    printf("Etudiant 1 : ");
    afficher(Et1);
    printf("Etudiant 2 : ");
    afficher(Et2);

    permuter_et1(&Et1, &Et2);
    printf("Etudiant 1 : ");
    afficher(Et1);
    printf("Etudiant 2 : ");
    afficher(Et2);
*/
    do
    {
        printf("donner le nombre d'etudiants :");
        scanf("%d", &n);
    }
    while(n<=0);

    remplir_tabEt(TabEt, n);
    afficher_tabEt(TabEt, n);

    printf("\n\n");
    //permuter_et1(&TabEt[0], &TabEt[n-1]);
    //ou bien
    permuter_et1(TabEt, TabEt+n-1);
    afficher_tabEt(TabEt, n);

    printf("\n\n");
    get_imin_imax(TabEt, n, &Imin, &Imax);
    printf("etudiant le moins age à la position %d \n", Imin+1);
    //afficher(TabEt[Imin]);
    //ou bien
    afficher(*(TabEt+Imin));
    printf("etudiant le plus age à la position %d \n", Imax+1);
    //afficher(TabEt[Imax]);
    //ou bien
    afficher(*(TabEt+Imax));

    return 0;
}

void saisir_etudiant(Etudiant* pE)
{
    printf("num : ");
    //scanf("%d",&(*pE).num);
    //ou bien
    scanf("%d", &pE->num);
    printf("nom et prenom : ");
    fflush(stdin);
    gets((*pE).nompren);
    printf("age : ");
    scanf("%d", &(*pE).age);
    printf("classe : ");
    fflush(stdin);
    gets((*pE).classe);

}


void remplir_tabEt(Etudiant T[], int n)
{
    int i;

    for(i = 0; i<n; i++)
    {
        printf("etudiant %d :\n",i+1);
        //saisir_etudiant(&T[i]);
        //ou bien : saisir_etudiant(&*(T+i)) qui revient à :
        saisir_etudiant(T+i);
    }

}

void afficher(Etudiant E)
{
    printf("%d\t %s\t %d\t %s\n", E.num, E.nompren, E.age, E.classe);
}


void afficher_tabEt(Etudiant T[], int n)
{
    int i;

    for(i = 0; i<n; i++)
        afficher(T[i]);
}

void get_imin_imax(Etudiant T[], int n, int* pImin, int* pImax)
{
    int i;
    *pImin = *pImax = 0;
    for(i = 0; i<n; i++)
    {
        //if(T[i].age > T[*pImax].age)
        // ou bien
        if((*(T+i)).age > (*(T + *pImax)).age)
            *pImax = i;
        if(T[i].age < T[*pImin].age)
            *pImin = i;
    }
}

void permuterChaines(char ch1[],char ch2[])
{
    char temp[20];
    strcpy(temp, ch1);
    strcpy(ch1, ch2);
    strcpy(ch2, temp);
}


void permuter_et2(Etudiant* pA, Etudiant* pB)
{
    permuterChaines((*pA).classe,(*pB).classe);
}

void permuter_et1(Etudiant* pA, Etudiant* pB)
{
    char temp[20];
/*
    strcpy(temp, (*pA).classe);
    strcpy((*pA).classe, (*pB).classe);
    strcpy((*pB).classe, temp);
*/
    // ou bien

    strcpy(temp, pA->classe);
    strcpy(pA->classe, pB->classe);
    strcpy(pB->classe, temp);

}



