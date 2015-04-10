#include "TurkeySandwich.h"

TurkeySandwich::TurkeySandwich(): FoodItem()
{
    //ctor
    bread[0] = '\0';
    conList = new struct condimentList[0];
    numberCon = 0;
}


TurkeySandwich::~TurkeySandwich()
{
    //dtor
    delete[] bread;
    delete[] conList;
}


TurkeySandwich::TurkeySandwich(const TurkeySandwich& other): FoodItem(other)
{
    //copy ctor
    memcpy(bread, other.bread, 80);

    if(other.numberCon > sizeof(conList))
    {
        delete[] conList;
        conList = new struct condimentList[other.numberCon];
    }
        numberCon = other.numberCon;
        memcpy(conList, other.conList, numberCon);
}

void TurkeySandwich::printCondiment()
{
    int n = 0;

    while(n < numberCon)
    {
        cout << conList[n].condiment << endl;
        n++;
    }
}

void TurkeySandwich::printStuff()
{
    this->FoodItem::printStuff();
    cout << "Bread: " << bread << endl;
    cout << "Condiment: " << endl;
    this->printCondiment();
}
