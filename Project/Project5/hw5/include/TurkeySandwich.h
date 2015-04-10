#ifndef TURKEYSANDWICH_H
#define TURKEYSANDWICH_H

#include <FoodItem.h>

class TurkeySandwich : public FoodItem
{
    public:
        TurkeySandwich();
        virtual ~TurkeySandwich();
        TurkeySandwich(const TurkeySandwich& other);
        virtual void printStuff();
    protected:
        struct condimentList{
            char condiment[80];
        };

        char bread[80];
        struct condimentList *conList;
        int numberCon;

    private:
        void printCondiment();
};

#endif // TURKEYSANDWICH_H
