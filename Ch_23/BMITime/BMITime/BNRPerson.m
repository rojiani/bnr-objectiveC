//
//  BNRPerson.m
//  BMITime
//
//  Created by Navid Rojiani on 4/25/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import "BNRPerson.h"

@implementation BNRPerson

// Implementations for ivars deleted (see p. 138)

- (float)bodyMassIndex
{
    float h = self.heightInMeters;
    return self.weightInKilos / (h * h);
}

@end
