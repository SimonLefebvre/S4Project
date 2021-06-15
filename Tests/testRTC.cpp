//
// Created by mimon on 2021-06-15.
//

#include <gtest/gtest.h>

TEST(testRTC,testADD){

    EXPECT_EQ(bank.Add(V1,V2),0) <<"Erreur d'addition";
}

TEST(testRTC,testRemove){

    EXPECT_EQ(bank.Remove(V1,V2),1) <<"Erreur de soustraction";
}
