#ifndef EGGPLANT_H
#define EGGPLANT_H

#include <FoodItem.h>


class Eggplant : public FoodItem
{
    public:
        Eggplant();
        virtual ~Eggplant();
        Eggplant(const Eggplant& other);
        virtual void printStuff();
    protected:
        int ounce;
        char SideDish[80];
    private:
};

#endif // EGGPLANT_H
