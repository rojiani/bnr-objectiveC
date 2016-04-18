//
//  BNRForeignStockHolding.m
//  Stocks
//
//  Created by Navid Rojiani on 6/9/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import "BNRForeignStockHolding.h"

@implementation BNRForeignStockHolding

// Override
- (float)costInDollars
{
    float normalCost = [super costInDollars];
    return normalCost * self.conversionRate;
}

- (float)valueInDollars
{
    float normalValue = [super valueInDollars];
    return normalValue * self.conversionRate;
}

@end
