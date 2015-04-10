#include "FoodItem.h"

FoodItem::FoodItem()
{
    name[0] = '\0';
    price = 0.0;
    calorieCount = 0;
    seatNum = 0;
    //ctor
}

FoodItem::~FoodItem()
{
    delete[] name;
    //dtor
}

FoodItem::FoodItem(const FoodItem& other)
{
    //copy ctor

    memcpy(this->name,other.name, 80);
    this->price = other.price;
    this->calorieCount = other.calorieCount;
    this->seatNum = other.seatNum;
}

void FoodItem::printStuff()
{
    cout << "The seat Number: " << seatNum << endl;
    cout << "The name: " << name << endl;
    cout << "The price: " << price << endl;
    cout << "The calorie: " << calorieCount << endl;
}
