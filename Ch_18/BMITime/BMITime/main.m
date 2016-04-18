//
//  main.m
//  BMITime
//
//  Created by Navid Rojiani on 4/25/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRPerson.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Create an instance of BNRPerson
        BNRPerson *navid = [[BNRPerson alloc] init];
        
        // Give the instance variables interesting values using the setters
        [navid setWeightInKilos:81];
        [navid setHeightInMeters:1.8];
        
        // Log the instance variables using the getters
        NSLog(@"navid is %.2f meters tall and weighs %d kilograms",
              [navid heightInMeters], [navid weightInKilos]);
        
        // Log some values using custom methods
        float bmi = [navid bodyMassIndex];
        NSLog(@"navid has a BMI of %.2f", bmi);
        
    }
    return 0;
}
