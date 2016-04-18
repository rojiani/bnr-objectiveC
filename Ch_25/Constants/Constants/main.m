//
//  main.m
//  Constants
//
//  Created by Navid Rojiani on 7/28/15.
//  Copyright (c) 2015 Navid Rojiani. All rights reserved.
//

@import Foundation;

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"\u03c0 is %f", M_PI);
        NSLog(@"%d is larger", MAX(10,12));     // macro
        
        NSLocale *here = [NSLocale currentLocale];
        NSString *currency = [here objectForKey:NSLocaleCurrencyCode];
        NSLog(@"Money is %@", currency);
    }
    return 0;
}
