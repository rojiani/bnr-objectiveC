//
//  main.m
//  Ch13Challenge
//
//  Created by Navid Rojiani on 4/14/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSHost *host = [NSHost currentHost];
        //NSString *simpleName = [host name];
        //NSLog(@"The simple name is %@\n", simpleName);
        // Output: Navids-MacBook-Pro.local

        NSString *localizedName = [host localizedName];
        NSLog(@"The localized name is %@\n", localizedName);
        // Output: Navid’s MacBook Pro
    }
    return 0;
}
