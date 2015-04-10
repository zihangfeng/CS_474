#include "ItemMenu.h"

ItemMenu::ItemMenu()
{
    //ctor
    maxSeat = 10;
}

ItemMenu::~ItemMenu()
{
    //dtor
}

ItemMenu::ItemMenu(const ItemMenu& other): Salmon(other), TurkeySandwich(other), Eggplant(other)
{
    //copy ctor
}

void ItemMenu::printStuff()
{

}
