#include <iostream>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

using namespace std;

class NODE {
public:
	char data[80];
	NODE* left;
	NODE* right;
};

// List class
class BST {

public:
	BST() { root = NULL; };
	~BST();
	void eraseSet();
	void switchSet(BST& secondTree);
	BST(BST &firstTree);
	void listSet();
	void add(char val[]);
	void unionSet(BST secondTree);
	void intersectionSet(BST secondTree);
	void quit(BST secondTree);
	BST& operator =(const BST& firstTree);
private:
	NODE* root;
	void eraseSet(NODE *set);
	void copySet(NODE *firstSet, NODE *secondSet);
	void listSet(NODE *set);
	void add(NODE *set, char val[]);
	bool search(NODE *set, char val[]);
	void unionSet(NODE *firstSet, NODE *secondSet);
	void intersectionSet(NODE* theRoot, NODE *firstSet, NODE *secondSet);

};


