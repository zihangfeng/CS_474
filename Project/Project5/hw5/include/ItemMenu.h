#ifndef ITEMMENU_H
#define ITEMMENU_H
#include <Salmon.h>
#include <TurkeySandwich.h>
#include <Eggplant.h>

class ItemMenu: public Salmon, TurkeySandwich, Eggplant
{
    public:
        ItemMenu();
        virtual ~ItemMenu();
        ItemMenu(const ItemMenu& other);
        virtual void printStuff();
        int getMaxSeat(){return maxSeat;};
    protected:
        int maxSeat;
    private:
};

#endif // ITEMMENU_H
