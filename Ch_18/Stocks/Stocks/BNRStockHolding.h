//
//  BNRStockHolding.h
//  Stocks
//
//  Created by Navid Rojiani on 6/2/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRStockHolding : NSObject

// Instance Variables
/* Public instance variables put in .h file 
   (exposing them as part of interface) */
{
    float _purchasedSharePrice;
    float _currentSharePrice;
    int _numberOfShares;
}

// Property methods
- (float)purchasedSharePrice;
- (void)setPurchasedSharePrice:(float)price;
- (float)currentSharePrice;
- (void)setCurrentSharePrice:(float)price;
- (int)numberOfShares;
- (void)setNumberOfShares:(int)number;

// Extra methods
- (float) costInDollars;     // purchaseSharePrice * numberOfShares
- (float) valueInDollars;    // currentSharePrice * numberOfShares

@end
