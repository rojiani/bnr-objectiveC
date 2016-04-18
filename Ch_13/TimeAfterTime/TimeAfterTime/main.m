//
//  main.m
//  TimeAfterTime
//
//  Created by Navid Rojiani on 4/14/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        /* Message Send: [receiver selector]
         * receiver - a pointer to the object or class that has the method
         *            that you want to execute
         * selector - the name of the method you want to execute
         */
        //NSDate *now = [NSDate date];
        NSDate *now = [[NSDate alloc] init];
        NSLog(@"This NSDate object (now) lives at %p\n", now);
        NSLog(@"The date is %@", now);
        
        /* Get NSDate's timeIntervalSince1970 property */
        //double seconds = [now timeIntervalSince1970];
        double seconds = [[NSDate date] timeIntervalSince1970];
        NSLog(@"It has been %f seconds since the start of 1970.", seconds);
        
        NSDate *later = [now dateByAddingTimeInterval:100000];
        NSLog(@"In 100,000 seconds it will be %@", later);
        
        NSCalendar *cal = [NSCalendar currentCalendar];
        NSLog(@"My calendar is %@", [cal calendarIdentifier]);
        unsigned long day = [cal ordinalityOfUnit:NSCalendarUnitDay
                                           inUnit:NSCalendarUnitMonth
                                          forDate:now];
        NSLog(@"This is day %lu of the month", day);
        
        
        
        // Challenge Ch. 14
        NSDateComponents *birthComps = [[NSDateComponents alloc] init];
        [birthComps setDay:11];
        [birthComps setMonth:3];
        [birthComps setYear:1987];
        [birthComps setHour:7];
        [birthComps setMinute:0];
        [birthComps setSecond:0];
        NSCalendar *gregorianCal = [[NSCalendar alloc]
                                 initWithCalendarIdentifier:NSGregorianCalendar];
        NSDate *birthDate = [gregorianCal dateFromComponents:birthComps];
        //[birthComps release];
        
        double secondsSinceBirth = [now timeIntervalSinceDate:birthDate];
        NSLog(@"Seconds since birth: %.2f", secondsSinceBirth);
        
        
    }
    return 0;
}

/*
NSDate *now = [NSDate date]
- this is a class method.
    - typically, class methods create an instance of the class and
      initialize its instance variables.
    - vs. a constructor: http://rypress.com/tutorials/objective-c/classes

double seconds = [now timeIntervalSince1970]
 - this is an instance method
*/