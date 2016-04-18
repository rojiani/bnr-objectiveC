//
//  main.m
//  Groceries
//
//  Created by Navid Rojiani on 4/22/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // Groceries
        NSString *kale = @"Kale";
        NSString *potatoes = @"Potatoes";
        NSString *yerba = @"Yerba Mate";
        NSString *steak = @"Steak";
        
        // Add groceries to an array
        NSMutableArray *groceries = [NSMutableArray array];
        [groceries addObject:kale];
        [groceries addObject:yerba];
        [groceries insertObject:potatoes atIndex:1];
        [groceries addObject:steak];
        
        NSLog(@"My grocery list is:");
        for (NSString *item in groceries) {
            NSLog(@"%@", item);
        }
    }
    return 0;
}
