//
//  BNRPerson.h
//  BMITime
//
//  Created by Navid Rojiani on 4/25/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRPerson : NSObject

{
    /* Convention: instance variables start with an underscore */
    // BNRPerson has two instance variables
    float _heightInMeters;
    int _weightInKilos;
}

// Getters & Setters
- (float)heightInMeters;
- (void)setHeightInMeters:(float)h;
- (int)weightInKilos;
- (void)setWeightInKilos:(int)w;

// BNRPerson has a method that calculates the Body Mass Index
-(float)bodyMassIndex;

@end