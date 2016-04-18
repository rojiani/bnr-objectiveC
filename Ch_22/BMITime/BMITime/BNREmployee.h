//
//  BNREmployee.h
//  BMITime
//
//  Created by Navid Rojiani on 6/4/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

//#import <Foundation/Foundation.h>
@import Foundation;
#import "BNRPerson.h"
@class BNRAsset; // forward declaration - tells compiler that this exists.

@interface BNREmployee : BNRPerson

@property (nonatomic) unsigned int employeeID;
//@property (nonatomic) unsigned int officeAlarmCode;  /* class extension in .m */
@property (nonatomic) NSDate *hireDate;

// Array of assets owned by employee
@property (nonatomic, copy) NSArray *assets;
// why have _assets ivar AND this?
// same member attribute. NSArray here tells outside classes that this can't
// be modified, but behind the scenes (the underlying ivar), it is mutable, so
// it can be added to.

//@property (nonatomic) BNRPerson *spouse;
//@property (nonatomic) NSMutableArray *children;

- (double)yearsOfEmployment;
- (void)addAsset:(BNRAsset *)a;
- (unsigned int)valueOfAssets;

@end
