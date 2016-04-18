//
//  main.m
//  InterestingNames
//
//  Created by Navid Rojiani on 4/22/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Read in a file as a huge string (ignoring the possibility of an
        // error)
        NSString *nameString = [NSString stringWithContentsOfFile:@"/usr/share/dict/propernames"
                                                         encoding:NSUTF8StringEncoding
                                                            error:NULL];
        // Break it into an array of strings
        NSArray *names = [nameString componentsSeparatedByString:@"\n"];
        
        // Go through the array one string at a time
        for (NSString *n in names) {
            
            // Look for the string "aa" in a case-insensitive manner
            // returns the index of first occurrence (as NSRange's r.location)
            NSRange r = [n rangeOfString:@"AA" options:NSCaseInsensitiveSearch];
            
            // Was it found?
            if (r.location != NSNotFound) {
                NSLog(@"%@", n);
            }
        }
    }
    return 0;
}
