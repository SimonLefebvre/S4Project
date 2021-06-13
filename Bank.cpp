//
// Created by mimon on 2021-06-12.
//

#include "Bank.h"

Bank::Bank() {
    In_Value1 = 2;
    In_Value2 = 0;
}

Bank::~Bank() {

}

int Bank::Add(int V1, int V2) {
    return V1 + V2;
}

int Bank::Remove(int V1, int V2) {
    return V1-V2;
}
