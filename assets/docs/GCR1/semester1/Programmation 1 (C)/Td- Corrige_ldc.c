#include "corrige_ldc.h"

int menu()
{
    int choix;
    do
    {
        printf("\n\nVeuillez introduire un choix compris entre 0 et 7 :");
        printf("\n1: Inserer un element en tete");
        printf("\n2: Inserer un element en queu");
        printf("\n3: Inserer un element au milieu");
        printf("\n4: Afficher la liste du premier au dernier element");
        printf("\n5: Afficher la liste du dernier au premier element");
        printf("\n6: Supprimer un element en tete");
        printf("\n7: Supprimer un element en queu");
        printf("\n8: Supprimer un element au milieu");
        printf("\n9: Supprimer tous les elements");
        printf("\n0: Quitter\n");

        scanf("%d", &choix);
    }
    while((choix < 0)&&(choix > 9));
    return choix;
}

LDC init_LDC (LDC L)
{
    L.tete = NULL;
    L.queu = NULL;
    return L;
}


int listeDC_vide (LDC L)
{
    return (L.tete == NULL && L.queu == NULL);
}



LDC Inserer_tete_LDC (LDC L, int x)
{
    cellule* nouv;

    nouv = (cellule*)malloc(sizeof(cellule));
    if(!nouv)
        printf("Espace memoire insuffisant\n");
    else
    {
        nouv->val = x;
        nouv->pred = NULL;
        nouv->suiv = L.tete;
        if(!listeDC_vide(L))
            L.tete -> pred = nouv;
        else // liste vide
            L.queu = nouv;
        L.tete = nouv;
    }
    return(L);
}


LDC Inserer_queue_LDC (LDC L, int x)
{
    cellule* nouv;

    nouv = (cellule*)malloc(sizeof(cellule));
    if(!nouv)
        printf("Espace memoire insuffisant\n");
    else
    {
        nouv->val = x;
        nouv->suiv = NULL;
        nouv->pred = L.queu;
        if(!listeDC_vide(L))
            L.queu -> suiv = nouv;
        else // liste vide
            L.tete = nouv;
        L.queu = nouv;
    }
    return L;
}


void Afficher(LDC L)
{
    cellule* p;

    if(listeDC_vide(L))
        printf("\tListe vide");
    else
    {
        p = L.tete;
        while(p)
        {
            printf("%d\t",p->val);
            p = p->suiv;
        }
    }
}


void Afficher_inverse(LDC L)
{
    cellule* p;

    if(listeDC_vide(L))
        printf("\nListe vide");
    else
    {
        p = L.queu;
        while(p)
        {
            printf("%d\t",p->val);
            p = p->pred;
        }
    }
}


LDC Inserer_milieu_avant_cond_LDC (LDC L, int x, int elem)
{
    cellule* p;
    cellule* nouv;

    // la liste est supposée non vide, le controle doit etre realisé dans la fonction main()
    p = L.tete;
    while(p && ((*p).val != elem))
        p = p->suiv;
    if(p) // elem existe dans la liste
    {
        if(p == L.tete)
            L = Inserer_tete_LDC (L, x);
        else
        {
            nouv = (cellule*)malloc(sizeof(cellule));
            nouv->val = x;
            nouv->suiv = p;
            nouv->pred = p->pred;
            (p->pred)->suiv = nouv;
            p->pred = nouv;
        }
    }
    else
        printf("\nErreur : %d introuvable dans la liste, impossible d'inserer %d avant !", elem, x);

    return L;
}


LDC Supprimer_tete_LDC (LDC L)
{
    // la liste est supposée non vide, le controle doit etre realisé dans la fonction main()
    cellule* p = L.tete;

    if(L.tete == L.queu) // liste contient 1 seul element
        L = init_LDC(L);
    else
    {
        L.tete = L.tete -> suiv;
        L.tete -> pred = NULL;
    }
    free(p);

    return L;
}


LDC Supprimer_queu_LDC (LDC L)
{
    // la liste est supposée non vide, le controle doit etre realisé dans la fonction main()
    cellule* p = L.queu;

    if(L.tete == L.queu) // liste contient 1 seul element
        L = init_LDC(L);
    else
    {
        L.queu = L.queu -> pred;
        L.queu -> suiv = NULL;
    }
    free(p);

    return L;
}


LDC Supprimer_1ere_occ_LDC (LDC L, int elem)
{
    // la liste est est supposée non vide, le controle doit etre realisé dans la fonction main()
    cellule* p = L.tete;

    while(p && (p->val != elem))
        p = p->suiv;

    if(p)// elem existe dans la liste
    {
        if(p == L.tete)
            L = Supprimer_tete_LDC(L);
        else
        {
            if(p == L.queu)
                L = Supprimer_queu_LDC(L);
            else
            {
                (p->pred)->suiv = p->suiv;
                (p->suiv)->pred = p->pred;
                free(p);
            }
        }
    }
    else
        printf("\nErreur : %d à supprimer introuvable dans la liste", elem);

    return L;
}


LDC Liberer_LDC(LDC L)
{
    while(!listeDC_vide(L))
        L = Supprimer_queu_LDC(L); //ou bien L = Supprimer_tete_LDC(L);
    return L;
}
