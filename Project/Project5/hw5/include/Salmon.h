#ifndef SALMON_H
#define SALMON_H

#include <FoodItem.h>


class Salmon : public FoodItem
{
    public:
        Salmon();
        virtual ~Salmon();
        Salmon(const Salmon& other);
        virtual void printStuff();
    protected:
        char CookWay[80];
        char SideDish[80];
    private:
};

#endif // SALMON_H
