//
//  BNREmployee.m
//  BMITime
//
//  Created by Navid Rojiani on 6/4/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import "BNREmployee.h"
#import "BNRAsset.h"

// A class extension
@interface BNREmployee()

// to-many relationship. Instance variable. See p. 155.
{
    NSMutableArray *_assets;
}

@property (nonatomic) unsigned int officeAlarmCode;

@end

@implementation BNREmployee

// Accessors for assets properties
- (void)setAssets:(NSArray *)a
{
    _assets = [a mutableCopy];
}

- (NSArray *)assets
{
    return [_assets copy];
}

- (void)addAsset:(BNRAsset *)a
{
    // Is assets nil?
    if (!_assets) {
        // Create the array
        _assets = [[NSMutableArray alloc] init];
    }
    [_assets addObject:a];
}

- (unsigned int)valueOfAssets
{
    // Sum up the resale value of the assets
    unsigned int sum = 0;
    for (BNRAsset *a in _assets) {
        sum += [a resaleValue];
    }
    return sum;
}

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
    return [NSString stringWithFormat:@"<Employee %u: $%u in assets>", self.employeeID, self.valueOfAssets];
}

- (void)dealloc
{
    NSLog(@"deallocating %@", self);
}

@end
