#include <stdio.h>
#include <stdlib.h>
#include <string.h>
struct User{
	char name[25];
	char pass[25];
	char mail[25];
	struct User *next;
};
struct User* H = NULL;
void addToList(char *name, char *pass, char *mail){
	struct User* item = NULL;
	item = (struct User*)malloc(sizeof(struct User));
	strcpy(item->name, name);
	strcpy(item->pass, pass);
	strcpy(item->mail, mail);
	if(H != NULL)
		item->next = H;
	else item->next = NULL;
	H = item;
}
void showList(){
	struct User* current = NULL;
	
	if(H == NULL){
		printf("Nu sunt elemente in lista.\n");
		return;
	}else{
		current = H;
		while(current != NULL){
			printf("User: %s\n", current->name);
			printf("Password: %s\n", current->pass);
			printf("Email: %s\n\n", current->mail);
			current = current->next;
		}
	}
}
void removeSt(){
	struct User* current = NULL;
	if(H == NULL){
		printf("Nu sunt elemente.\n");
		return;
	}else{
		current = H;
		H = H->next;
		free(current);
	}
}
void removeCo(){
	struct User* current = NULL;
	struct User* tmp = NULL;
	if(H == NULL){
		printf("Nu sunt elemente.\n");
		return;
	}else{
		current = H;
		if(H->next == NULL) {
			H = NULL;
			free(current);
		}else while(current->next->next != NULL){
			current = current->next;
			tmp = current->next;
			current->next = NULL;
			free(tmp);
		}
	}
}
int main(int argc, char const *argv[])
{
	char name[25];int opt;
	char pass[25];
	char mail[25];
	while(1){
		printf("\n1 - Adaugare\n");
		printf("2 - Afisare\n");
		printf("3 - Stergere din stiva\n");
		printf("4 - Stergere din coada\n");
		printf("5 - Iesire\n");
		printf("RS: ");
		scanf("%d", &opt);
		switch(opt){
			case 1: printf("Nume: ");scanf("%s", name);
					printf("Parola: ");scanf("%s", pass);
					printf("Email: ");scanf("%s", mail);
					addToList(name, pass, mail);
					break;
			case 2: showList();
					break;
			case 3: removeSt();
					break;
			case 4: removeCo();
					break;
			case 5: exit(1);
			default:printf("\n1..4!"); 
		}
	}
	return 0;
}