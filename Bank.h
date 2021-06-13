//
// Created by mimon on 2021-06-12.
//

#ifndef S4PROJECT_BANK_H
#define S4PROJECT_BANK_H


class Bank {
public:
    Bank();
    ~Bank();

    int Add(int V1, int V2);
    int Remove(int V1, int V2);

private:
    int In_Value1;
    int In_Value2;
};


#endif //S4PROJECT_BANK_H
