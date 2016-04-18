//
//  BNRAsset.h
//  BMITime
//
//  Created by Navid Rojiani on 6/15/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

@import Foundation;

@interface BNRAsset : NSObject

@property (nonatomic) unsigned int resaleValue;  // value
@property (nonatomic, copy) NSString *label;     // pointer to object on heap

@end
