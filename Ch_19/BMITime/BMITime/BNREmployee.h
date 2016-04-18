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

@interface BNREmployee : BNRPerson

@property (nonatomic) unsigned int employeeID;
@property (nonatomic) unsigned int officeAlarmCode;
@property (nonatomic) NSDate *hireDate;

- (double)yearsOfEmployment;

@end
