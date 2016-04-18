//
//  main.c
//  PassByReference
//
//  Created by Navid Rojiani on 4/13/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>
#include <math.h>

#define FEET_PER_METER 3.28084;

static void meters_to_feet_and_inches(double meters, unsigned int *ft_ptr,
                                      double *inches_ptr)
{
    // Convert the number of meters into a floating-point number of feet
    double raw_feet = meters * FEET_PER_METER;
    
    unsigned int feet = (unsigned int) floor(raw_feet);
    if (ft_ptr) {
        *ft_ptr = feet;
        printf("Storing %u to the address %p\n", feet, ft_ptr);
    }
    
    double fractional_part = raw_feet - feet;
    double inches = fractional_part * 12.0;
    if (inches_ptr) {
        printf("Storing %.2f to the address %p\n", inches, inches_ptr);
        *inches_ptr = inches;
    }

}

int main(int argc, const char * argv[])
{
    double pi = 3.14;
    double integerPart;
    double fractionPart;
    
    // Pass the address of integerPart as an argument
    // Note: C is pass-by-value, and a COPY of the address is made, but the
    // target can be modified via its address.
    fractionPart = modf(pi, &integerPart);
    
    // Find the value stored in integerPart
    printf("integerPart = %.0f, fractionPart = %.2f\n", integerPart, fractionPart);
    
    printf("\n\n");
    // FEET TO INCHES
    double meters = 3.0;
    unsigned int feet;
    double inches;
    
    meters_to_feet_and_inches(meters, &feet, &inches);
    printf("%.1f meters is equal to %d feet and %.1f inches.\n", meters, feet,
           inches);
    
    return 0;
}
