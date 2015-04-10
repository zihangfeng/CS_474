#include "bst.h"


BST::~BST()
{
  	eraseSet();
}

void BST::eraseSet()
{
	eraseSet(root);
}

void BST::switchSet(BST& secondTree)
{
	NODE* temp = root;
	root = secondTree.root;
	secondTree.root = temp;
}

BST::BST(BST &firstTree)
{
	copySet(firstTree.root, root);
}

BST& BST::operator =(const BST& firstTree)
{
	copySet(firstTree.root, root);
}

void BST::listSet()
{
	listSet(root);
}

void BST::add(char val[])
{
	if(root != NULL)
	add(root, val);
	else
	{
		root = new NODE;
		strcpy(root->data,val);
		root->left = NULL;
		root->right = NULL;
	}
}

void BST::unionSet(BST secondTree)
{
	unionSet(root, secondTree.root);
}

void BST::intersectionSet(BST secondTree)
{
	NODE *temp = root;
	root = NULL;
	intersectionSet(root, temp, secondTree.root);
	eraseSet(temp);
}


void BST::eraseSet(NODE *set)
{
	if(set != NULL)
	{
		eraseSet(set->left);
		eraseSet(set->right);
		free(set);
		set = NULL;
	}
}

void BST::copySet(NODE *firstSet, NODE *secondSet)
{
	if(firstSet != NULL)
	{
		add(secondSet, firstSet->data);
		copySet(firstSet->left, secondSet->left);
		copySet(firstSet->right, secondSet->right);
	}
}

void BST::listSet(NODE *set)
{
	if(set != NULL)
	{
		listSet(set->left);
		listSet(set->right);
		cout << set->data << "\t";
	}
}

void BST::add(NODE *set, char val[])
{
// we know that the root is not null

	if(strcmp(set->data, val) > 0)
	{
		if(set->left != NULL)
    		add(set->left,val);
		else
    		{
      			NODE* temp = new NODE;
			strcpy(temp->data, val);
			temp->left = NULL;
			temp->right = NULL;
			set->left = temp;
    		}
  	}
  	else if(strcmp(set->data, val) < 0)
  	{
    		if(set->right != NULL)
      		add(set->right, val);
    		else
    		{
                        NODE* temp = new NODE;
                        strcpy(temp->data, val);
                        temp->left = NULL;
                        temp->right = NULL;
                        set->right = temp;
		}
  	}
}

bool BST::search(NODE *set, char val[])
{

	if(set != NULL)
	{
		if(!strcmp(set->data, val))
			return true;
		else if(strcmp(set->data, val) > 0)
			return search(set->left, val);
		else
			return search(set->right, val);
	}
		return false;
}

void BST::unionSet(NODE *firstSet, NODE *secondSet)
{
	if(secondSet != NULL)
	{
		if(search(firstSet, secondSet->data))
		{
			unionSet(firstSet, secondSet->left);
			unionSet(firstSet, secondSet->right);
		}
		else
		{
			add(firstSet, secondSet->data);
                        unionSet(firstSet, secondSet->left);
                        unionSet(firstSet, secondSet->right);
		}
	}
}
void BST::intersectionSet(NODE* theRoot, NODE *firstSet, NODE *secondSet)
{
	firstSet;
	if(secondSet != NULL)
	{
		if(search(firstSet, secondSet->data))
		{
			add(theRoot, secondSet->data);
			intersectionSet(theRoot, firstSet, secondSet->left);
			intersectionSet(theRoot, firstSet, secondSet->right);
		}
	}

}
