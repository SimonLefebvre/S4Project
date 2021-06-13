//
// Created by mimon on 2021-06-12.
//


#include <gtest/gtest.h>
#include "../Bank.h"

TEST(test01,testADD){
    int V1=0;
    int V2=0;
    Bank bank;
    EXPECT_EQ(bank.Add(V1,V2),0) <<"Erreur d'addition";
}

TEST(test01,testRemove){
    int V1=1;
    int V2=0;
    Bank bank;
    EXPECT_EQ(bank.Remove(V1,V2),1) <<"Erreur de soustraction";
}
