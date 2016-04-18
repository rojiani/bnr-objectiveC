//
//  main.m
//  Stocks
//
//  Created by Navid Rojiani on 4/25/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRStockHolding.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BNRStockHolding *s1 = [[BNRStockHolding alloc] init];
        [s1 setPurchasedSharePrice:2.30];
        [s1 setCurrentSharePrice:4.50];
        [s1 setNumberOfShares:40];
        
        BNRStockHolding *s2 = [[BNRStockHolding alloc] init];
        [s2 setPurchasedSharePrice:12.18];
        [s2 setCurrentSharePrice:10.56];
        [s2 setNumberOfShares:90];
        
        BNRStockHolding *s3 = [[BNRStockHolding alloc] init];
        [s3 setPurchasedSharePrice:45.10];
        [s3 setCurrentSharePrice:49.51];
        [s3 setNumberOfShares:210];
        
        NSArray *stocks = [NSArray arrayWithObjects:s1, s2, s3, nil];
        
        for (BNRStockHolding *stock in stocks) {
            NSLog(@"Value of stock: $%.2f", [stock valueInDollars]);
        }
        
        // Add some BNRForeignStockHolding instances to the array.
    }
    return 0;
}
