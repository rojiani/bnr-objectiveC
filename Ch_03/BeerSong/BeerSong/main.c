//
//  main.c
//  BeerSong
//
//  Created by Navid Rojiani on 4/17/16.
//  Copyright © 2016 nkroji. All rights reserved.
//

#include <stdio.h>

void singSongFor(int numberOfBottles)
{
    if (numberOfBottles == 0) {
        printf("No more bottles of beer on the wall!\n");
    } else {
        printf("%d bottles of beer on the wall, %d bottles of beer!\n",
               numberOfBottles, numberOfBottles);
        printf("Take one down, pass it around, %d bottles of beer on the wall!\n",
                --numberOfBottles);
        singSongFor(numberOfBottles);
    }
}

int main(int argc, const char * argv[])
{
    singSongFor(10);
    return 0;
}
