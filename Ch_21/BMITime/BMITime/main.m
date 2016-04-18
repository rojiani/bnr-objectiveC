//
//  main.m
//  BMITime
//
//  Created by mikey Rojiani on 4/25/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

//#import <Foundation/Foundation.h>   /* Use module import instead */
@import Foundation;
#import "BNREmployee.h"
#import "BNRAsset.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // Create an array of BNREmployee objects
        NSMutableArray *employees = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < 10; i++) {
            // Create an instance of BNREmployee (note: variable type can be superclass)
            BNREmployee *mikey = [[BNREmployee alloc] init]; // this is ok
            
            // Give the instance variables interesting values using the setters
            mikey.weightInKilos = 90 + i;  // setter doesn't include 'set' prefix
            mikey.heightInMeters = 1.8 - i/10.0;
            mikey.employeeID = i;
            
            // Put the employee in the employees array
            [employees addObject:mikey];
        }
        
        // Create 10 assets
        for (int i = 0; i < 10; i++) {
            // Create an asset
            BNRAsset *asset = [[BNRAsset alloc] init];
            
            // Give it an interesting label
            NSString *currentLabel = [NSString stringWithFormat:@"Laptop %d", i];
            asset.label = currentLabel;
            asset.resaleValue = 350 + i * 17;
            
            // Get a random number between 0 and 9 inclusive
            NSUInteger randomIndex = random() % [employees count];
            
            // Find that employee
            BNREmployee *randomEmployee = [employees objectAtIndex:randomIndex];
            
            // Assign the asset to the employee
            [randomEmployee addAsset:asset];
        }
        
        NSLog(@"Employees: %@", employees);
        NSLog(@"Giving up ownership of one employee");
        [employees removeObjectAtIndex:5];
        NSLog(@"Giving up ownership of arrays");
        employees = nil;
    }
    return 0;
}
