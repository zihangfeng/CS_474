#include "Eggplant.h"

Eggplant::Eggplant(): FoodItem()
{
    //ctor
    ounce = 0;
    SideDish[0] = '\0';
}

Eggplant::~Eggplant()
{
    delete[] SideDish;
    //dtor
}

Eggplant::Eggplant(const Eggplant& other): FoodItem(other)
{
    //copy ctor
    ounce = other.ounce;
    memcpy(SideDish, other.SideDish, 80);
}

void Eggplant::printStuff()
{
    this->FoodItem::printStuff();
    cout << "Side dish: " << SideDish << endl;
    cout << "Ounce: " << ounce << endl;
}
