#include "bst.h"


int main()
{
BST firstTree, secondTree;
char str[80];
char val[80];
while(1)
{
	printf("Enter the operation letter: ");
	scanf("%s",str);
	if(strcmp(str,"e") == 0)
	{
		printf("It is erase operation.\n");
		firstTree.eraseSet();
	}
	else if(strcmp(str,"s") == 0)
	{
		printf("It is switch operation.\n");
		firstTree.switchSet(secondTree);
	}
        else if(strcmp(str,"c") == 0)
        {
                printf("It is copy operation.\n");
		secondTree.eraseSet();

        }
        else if(strcmp(str,"l") == 0)
        {
                printf("It is list operation.\n");
		printf("List 1: ");
                firstTree.listSet();
		printf("\n");
		printf("List 2: ");
		secondTree.listSet();
		printf("\n");
        }
        else if(strcmp(str,"a") == 0)
        {
                printf("It is add operation.\n");
		printf("You need to provide the value: ");
		scanf("%s",val);
                firstTree.add(val);
        }
        else if(strcmp(str,"u") == 0)
        {
                printf("It is union operation.\n");
                firstTree.unionSet(secondTree);
        }
        else if(strcmp(str,"i") == 0)
        {
                printf("It is intersection operation.\n");
                firstTree.intersectionSet(secondTree);
        }
	else if(strcmp(str,"q") == 0)
	{
		printf("It is quit operation.\n");
		exit(0);
	}
	else
	{
		printf("Wrong operation.\n");
	}

}
return 0;
}
