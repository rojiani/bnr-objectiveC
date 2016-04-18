//
//  BNRStockHolding.m
//  Stocks
//
//  Created by Navid Rojiani on 6/2/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import "BNRStockHolding.h"

@implementation BNRStockHolding

// Property methods
- (float)purchasedSharePrice
{
    return _purchasedSharePrice;
}

- (void)setPurchasedSharePrice:(float)price
{
    _purchasedSharePrice = price;
}

- (float)currentSharePrice
{
    return _currentSharePrice;
}

- (void)setCurrentSharePrice:(float)price
{
    _currentSharePrice = price;
}

- (int)numberOfShares
{
    return _numberOfShares;
}

- (void)setNumberOfShares:(int)number
{
    _numberOfShares = number;
}

// Extra methods
- (float)costInDollars
{
    return [self purchasedSharePrice] * [self numberOfShares];
}

- (float)valueInDollars
{
    return [self currentSharePrice] * [self numberOfShares];
}

@end
