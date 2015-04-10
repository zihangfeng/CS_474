#include "Salmon.h"


Salmon::Salmon(): FoodItem()
{
        CookWay[0] = '\0';
        SideDish[0] = '\0';
    //ctor
}

Salmon::~Salmon()
{
    delete[] CookWay;
    delete[] SideDish;
    //dtor
}

Salmon::Salmon(const Salmon& other): FoodItem(other)
{
    memcpy(CookWay, other.CookWay, 80);
    memcpy(SideDish, other.SideDish, 80);
//    this->FoodItem(other);
}
void Salmon::printStuff()
{
    this->FoodItem::printStuff();
    cout << "The way to Cook: " << CookWay << endl;
    cout << "The side dish: " << SideDish << endl;
}
