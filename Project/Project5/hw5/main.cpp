#include <ItemMenu.h>

int main()
{
    char name[80];
    double price;
    int calorie;
    char cookType[80];
    int chooseCook;
    char sideDish[80];
    char bread[80];
    char condiment[80];
    int ounce;
    int checkSeat[10];
    int n = 0;
    while(n < 10)
    {
        checkSeat[n] = 0;
        n++;
    }
    ItemMenu customerOrder[10];
    char option[80];
    int seat = 0;
    int foodType;
    int seat1, seat2;
    cout << "Welcome to the good restaurant" << endl;
    while(1)
    {
        cout << "Choose any option for next operation: ";
        cin >> option;
        if(strcmp(option, "n") == 0)
        {
            cout << "It is new list operation" << endl;
            cout << "Provide a seat number to see if it available: ";
            cin >> seat;
            if(seat > 10 || seat < 1)
            {
                cout << "This seat is not available" << endl;
            }
            else if(checkSeat[seat - 1] == 0)
            {
                cout << "There is an available seat on " << seat << endl;
                checkSeat[seat - 1] = seat;
            }
            else
            {
                cout << "Sorry there seat has been taken." << endl;
            }
        }
        else if(strcmp(option, "a") == 0)
        {
            cout << "It is add list operation" << endl;
            cout << "Provide a seat number to see if it available: ";
            cin >> seat;
            if(seat > 10 || seat < 1)
            {
                cout << "This seat is not available" << endl;
            }
            else if(checkSeat[seat - 1] == 0)
            {
                cout << "There is an available seat on " << seat << endl;
                checkSeat[seat - 1] = seat;
                cout << "What do you want to add: " << endl;
                cout << "1 for Salmon" << endl;
                cout << "2 for TurkeySandwich" << endl;
                cout << "3 for Eggplant" << endl;
                cin >> foodType;
                if(foodType == 1)
                {
                    cout << "It is Salmon" << endl;
                    cout << "Give a name, price, calorie, how to cook it, and the side dish" << endl;
                    cout << "Name: ";
                    cin >> name;
                    cout << "Price: ";
                    cin >> price;
                    cout << "Calorie count: ";
                    cin >> calorie;
                    cout << "How to cook it, 1 for rare, 2 for medium, 3 for well-down: " ;
                    cin >> chooseCook;
                    while(chooseCook > 3 || chooseCook < 1)
                    {
                        cout << "The cook type is not correct, choose again: ";
                        cin >> chooseCook;
                    }
                    if(chooseCook == 1)
                    {
                        cout << "It is rare" << endl;
                        memcpy(cookType, "rare", 80);
                    }
                    else if(chooseCook == 2)
                    {
                        cout << "It is medium" << endl;
                        memcpy(cookType, "medium", 80);
                    }
                    else
                    {
                        cout << "It is well-down" << endl;
                        memcpy(cookType, "well-down", 80);
                    }
                }
            }
            else
            {
                cout << "Sorry there seat has been taken." << endl;
            }
        }
        else if(strcmp(option, "c") == 0)
        {
            cout << "It is copy operation" << endl;
            cout << "Give two seat number to see if it exists: ";
            cin >> seat1;
            cin >> seat2;
            if(seat1 > 10 || seat1 < 1 || checkSeat[seat1 - 1] == 0)
            {
               cout << "First seat you provided is not valid" << endl;
            }
            else
            {
                if(seat2 > 10 || seat2 < 1 || checkSeat[seat2 - 1] == 0)
                {
                    cout << "Second seat you provided is not valid" << endl;
                }
                else
                {
                    cout << "Both numbers are valid" << endl;
                    cout << "First seat is copied into second seat" << endl;
                }
            }
        }
        else if(strcmp(option, "d") == 0)
        {
            cout << "It is delete operation" << endl;
            cout << "Give a seat number to delete" << endl;
            cin >> seat;
            if(seat > 10 || seat < 1)
            {
                cout << "This seat is not available" << endl;
            }
            else if(checkSeat[seat - 1] == 0)
            {
                cout << "No one is taking this seat " << seat << endl;
            }
            else
            {
                cout << "The seat " << seat << " is deleted" << endl;
            }
        }
        else if(strcmp(option, "l") == 0)
        {
            cout << "It is list operation" << endl;
            cout << "Give a seat number to list the item" << endl;
            cin >> seat;
            if(seat > 10 || seat < 1)
            {
                cout << "This seat is not available" << endl;
            }
            else if(checkSeat[seat - 1] == 0)
            {
                cout << "No one is taking this seat " << seat << endl;
            }
            else
            {
                customerOrder[seat - 1].printStuff();
            }
        }
        else if(strcmp(option, "s") == 0)
        {
            cout << "It is swap operation" << endl;
            cout << "Give two seat number to see if it exists: ";
            cin >> seat1;
            cin >> seat2;
            if(seat1 > 10 || seat1 < 1 || checkSeat[seat1 - 1] == 0)
            {
                cout << "Seat1 you provided is not valid" << endl;
            }
            else
            {
                if(seat2 > 10 || seat2 < 1 || checkSeat[seat2 - 1] == 0)
                {
                    cout <<"Seat2 you provided is not valid" << endl;
                }
                else
                {
                    cout << "Both numbers are valid" << endl;
                    cout << "They are swapped" << endl;
                }
            }
        }
        else if(strcmp(option, "q") == 0)
        {
            cout << "It is quit operation!" << endl;
            delete[] customerOrder;
            exit(0);
        }
        else
        {
            cout << "Wrong operation!" << endl;
        }
    }

    delete[] customerOrder;
}
