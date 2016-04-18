//
//  BNRPerson.h
//  BMITime
//
//  Created by Navid Rojiani on 4/25/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//


/* NOTE:
 * "From here on out, you will almost always use properties when creating a
 * class. Apple recommends using properties, and so do we."
 */

//#import <Foundation/Foundation.h>   /* Use module import instead */
@import Foundation;

@interface BNRPerson : NSObject

// Replace instance variable & accessor method declarations with properties.
// see p. 137
/* Note: {} around instance variables, but not property declarations. */
@property (nonatomic) float heightInMeters;
@property (nonatomic) int   weightInKilos;

// BNRPerson has a method that calculates the Body Mass Index
-(float)bodyMassIndex;

@end