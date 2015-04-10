#ifndef FOODITEM_H
#define FOODITEM_H
#include <iostream>
#include <string.h>
#include <stdio.h>
#include <stdlib.h>

using namespace std;
class FoodItem
{
    public:
        FoodItem();
        virtual ~FoodItem();
        FoodItem(const FoodItem& other);
        virtual void printStuff();
    protected:

    private:
        char name[80];
        double price;
        int calorieCount;
        int seatNum;
};

#endif // FOODITEM_H
