#include <stdio.h>
#include <stdlib.h>


void remplir_Tab(int T[], int n);
void afficher_Tab(int T[], int n);
int existe(int x, int T[], int n);
void intersection(int T1[],int n1, int T2[],int n2,int T3[],int* pn3);
void unionn(int T1[],int n1, int T2[],int n2,int T3[],int* pn3);
void fusion(int T1[],int n1, int T2[],int n2,int T3[],int* pn3);



int main()
{
    int n1, n2, n3 = 0, E1[20], E2[20], E3[50];

    do
    {
        printf("donner le nombre d'elements de E1 : ");
        scanf("%d", &n1);
    }while((n1<0)||(n1>20));

    remplir_Tab(E1,n1);
    afficher_Tab(E1,n1);

    do
    {
        printf("donner le nombre d'elements de E2 : ");
        scanf("%d", &n2);
    }while((n2<0)||(n2>20));

    remplir_Tab(E2,n2);
    afficher_Tab(E2,n2);
/*
    unionn(E1,n1,E2,n2,E3,&n3);
    printf("union (E1, E2) : \n");
    afficher_Tab(E3,n3);

    intersection(E1,n1,E2,n2,E3,&n3);
    printf("inter(E1, E2) : \n");
    afficher_Tab(E3,n3);
*/
    fusion(E1,n1,E2,n2,E3,&n3);
    printf("fusion (E1,E2) : \n");
    afficher_Tab(E3,n3);

    return 0;
}


void remplir_Tab(int T[], int n)
{
    int i;

    for(i = 0; i<n; i++)
    {
        printf("element %d :",i+1);
        scanf("%d",&T[i]);
    }
}


void afficher_Tab(int T[], int n)
{
    int i;

    for(i = 0; i<n; i++)
        printf("%d\t", T[i]);
    printf("\n");
}


int existe(int x, int T[], int n)
{
    int i = 0;
    while((i<n)&&(T[i]!=x))
        i++;
    if(i<n)
        return 1;
    else
        return 0;
}


void unionn(int T1[],int n1, int T2[],int n2,int T3[],int* pn3)
{
    int i = 0, j = 0;

    while(i<n1)
    {
        if(!existe(T1[i], T3, *pn3))//transferer depuis T1 vers T3 tous les éléments avec elimination des doublons
        {
            T3[j] = T1[i];
            j++;
            (*pn3)++;

        }
        i++;
    }
    i = 0;

    while(i<n2)
    {
        if(!existe(T2[i], T1, n1)) // transferer depuis T2 vers T3 les éléments qui non inclus dans T1
        {
            T3[j] = T2[i];
            j++;
            (*pn3)++;
        }
        i++;
    }
}


void intersection(int T1[],int n1, int T2[],int n2,int T3[],int* pn3)
{
    int i = 0, j = 0;

    while(i<n1)
    {
        if(existe(T1[i], T2, n2)&&!existe(T1[i], T3, *pn3)) //transfere depuis T1 vers T3 seulement les elements en commun avec T2 et qui n'ont pas déjà été copiés dans T3
        {
            T3[j] = T1[i];
            j++;
            (*pn3)++;
        }
        i++;
    }

}


void fusion(int T1[],int n1, int T2[],int n2,int T3[],int* pn3)
{
    int i;

    *pn3 = n1+n2;

    for(i=0; i<n1; i++)
        T3[i] = T1[i];

    while(i<*pn3)
    {
        T3[i] = T2[i-n1];
        i++;
    }

}
