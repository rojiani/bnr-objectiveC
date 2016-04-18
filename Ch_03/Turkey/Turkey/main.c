//
//  main.c
//  Turkey
//
//  Created by Navid Rojiani on 4/13/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>
#include <objc/objc.h>

int main(int argc, const char * argv[]) {
    float weight;
    weight = 14.2;
    printf("The turkey weights %f.\n", weight);
    
    float cookingTime;
    cookingTime = 15.0 + 15.0 * weight;
    printf("Cook it for %f minutes.\n", cookingTime);
    
    BOOL boolVal = true;
    
    if (boolVal) {
        printf("TRUE\n");
    }
    
    return 0;
}
