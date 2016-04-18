//
//  main.m
//  DateList
//
//  Created by Navid Rojiani on 4/16/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Create three NSDate objects
        NSDate *now = [NSDate date];
        NSDate *tomorrow = [now dateByAddingTimeInterval:24.0 * 60.0 * 60.0];
        NSDate *yesterday = [now dateByAddingTimeInterval:-24.0 * 60.0 * 60.0];
        
        /* NSArray
        // Create an array containing all three
        NSArray *dateList = @[now, tomorrow, yesterday];
        
        // Iterate over the array
        NSUInteger dateCount = [dateList count];
        for (int i = 0; i < dateCount; i++) {
            NSDate *d = dateList[i];
            NSLog(@"Here is a date: %@", d);
        }
        
        // Fast enumeration
        for (NSDate *d in dateList) {
            NSLog(@"Here is a date: %@", d);
        }
        */
        
        /* NSMutableArray */
        
        // Create an empty mutable array
        NSMutableArray *dateList = [NSMutableArray array];
        
        // Add 2 dates to the array
        [dateList addObject:now];
        [dateList addObject:tomorrow];
        
        // Add yesterday at the beginning of the list
        [dateList insertObject:yesterday atIndex:0];
        
        // Iterate over the array
        for (NSDate *d in dateList) {
            NSLog(@"Here is a date: %@", d);
        }
        
        // Remove yesterday
        [dateList removeObjectAtIndex:0];
        NSLog(@"Now the first date is %@", dateList[0]);
    }
    return 0;
}
