//
//  main.c
//  Degrees
//
//  Created by Navid Rojiani on 4/13/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>


// Declare a global variable
//float lastTemperature;

// static variable: doesn't matter since only 1 file
static float lastTemperature = 50.0;

float fahrenheitFromCelsius(float cel)
{
    lastTemperature = cel;
    float fahr = cel * 1.8 + 32.0;
    printf("%.2f Celsius is %.2f Fahrenheit\n", cel, fahr);
    return fahr;
}

int main(int argc, const char * argv[])
{
    float freezeInC = 0;
    float freezeInF = fahrenheitFromCelsius(freezeInC);
    printf("Water freezes at %.2f degrees Fahrenheit.\n", freezeInF);
    printf("The last temperature converted was %.2f.\n", lastTemperature);
    return 0;
}

