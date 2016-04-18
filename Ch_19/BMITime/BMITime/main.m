//
//  main.m
//  BMITime
//
//  Created by mikey Rojiani on 4/25/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

//#import <Foundation/Foundation.h>   /* Use module import instead */
@import Foundation;
//#import "BNRPerson.h" /* already in BNREmployee.h */
#import "BNREmployee.h"



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Create an instance of BNREmployee (note: variable type can be superclass)
        // BNRPerson *mikey = [[BNREmployee alloc] init]; // this is ok
        BNREmployee *mikey = [[BNREmployee alloc] init]; // this is ok
        
        // Give the instance variables interesting values using the setters
        //[mikey setWeightInKilos:96];
        //[mikey setHeightInMeters:1.8];
        /* Using dot notation instead */
        mikey.weightInKilos = 96;  // setter doesn't include 'set' prefix
        mikey.heightInMeters = 1.8;
        mikey.employeeID = 12;
        mikey.hireDate = [NSDate dateWithNaturalLanguageString:@"Aug 2nd, 2010"];
        
        // Log the instance variables using the getters
        //NSLog(@"mikey is %.2f meters tall and weighs %d kilograms",
        //      [mikey heightInMeters], [mikey weightInKilos]);
        /* Dot notation */
        NSLog(@"mikey is %.2f meters tall and weighs %d kilograms",
              mikey.heightInMeters, mikey.weightInKilos);
        //NSLog(@"%@ hired on %@", mikey.description, mikey.hireDate);
        /* can put mikey instead of mikey.description */
        NSLog(@"%@ hired on %@", mikey, mikey.hireDate);

        // Log some values using custom methods
        /* Surprisingly, even though bodyMassIndex is an ivar, not a property,
           can still use dot notation -- can use with almost any method that
           doesn't have any arguments */
        //float bmi = [mikey bodyMassIndex];
        float bmi = mikey.bodyMassIndex;
        //NSLog(@"mikey has a BMI of %.2f", bmi);
        double years = [mikey yearsOfEmployment];
        //        double years = mikey.yearsOfEmployment; /* this also works */
        NSLog(@"BMI of %.2f, has worked with us for %.2f years", bmi, years);
    }
    return 0;
}
