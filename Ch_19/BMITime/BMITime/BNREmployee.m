//
//  BNREmployee.m
//  BMITime
//
//  Created by Navid Rojiani on 6/4/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import "BNREmployee.h"

@implementation BNREmployee

- (double)yearsOfEmployment
{
    if (self.hireDate) {        // check non-nil
        // NSTimeInterval is an alias for double
        NSDate *now = [NSDate date];
        NSTimeInterval hireIntervalSeconds = [now timeIntervalSinceDate:self.hireDate];
        // 60 s/min, 60 min/hr, 24 hr/day, 365.25 days/yr (leap every 4)
        double secondsPerYear = 60 * 60 * 24 * 365.25;
        return hireIntervalSeconds / secondsPerYear;
    } else {
        return 0;
    }
}

/* Overriding a method */
- (float)bodyMassIndex
{
    float normalBMI = [super bodyMassIndex];
    return normalBMI * 0.9;
}


- (NSString *)description
{
    return [NSString stringWithFormat:@"<Employee %d>", self.employeeID];
}

@end
