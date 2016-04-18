//
//  BNRForeignStockHolding.h
//  Stocks
//
//  Created by Navid Rojiani on 6/9/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import "BNRStockHolding.h"

@interface BNRForeignStockHolding : BNRStockHolding

// Factor to multiply to get US valuation
// Assume purchasePrice & currentPrice are in foreign currency
@property (nonatomic) float conversionRate;

@end
