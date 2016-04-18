//
//  BNRAsset.h
//  BMITime
//
//  Created by Navid Rojiani on 6/15/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

@import Foundation;
@class BNREmployee;


@interface BNRAsset : NSObject

@property (nonatomic) unsigned int resaleValue;     // value
@property (nonatomic, copy) NSString *label;        // ptr to string obj on heap
/* p. 172 - use weak reference to avoid strong reference cycle */
// if it was an ivar, could write:
// __weak BNREmployee *holder;
@property (nonatomic, weak) BNREmployee *holder;    // owner of the asset

@end
