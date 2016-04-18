//
//  BNRLogger.h
//  Callbacks
//
//  Created by Navid Rojiani on 7/28/15.
//  Copyright (c) 2015 Navid Rojiani. All rights reserved.
//

@import Foundation;

@interface BNRLogger : NSObject
        <NSURLConnectionDelegate, NSURLConnectionDataDelegate>
{
    NSMutableData *_incomingData;
}


@property (nonatomic) NSDate *lastTime;

- (NSString *)lastTimeString;
- (void)updateLastTime:(NSTimer *)t;

/* NSURLConnectionDataDelegate methods */
- (void)connection:(NSURLConnection *)connection
    didReceiveData:(NSData *)data;
- (void)connectionDidFinishLoading:(NSURLConnection *)connection;

/* NSURLConnectionDelegate methods */
- (void)connection:(NSURLConnection *)connection
  didFailWithError:(NSError *)error;

- (void)zoneChange:(NSNotification *)note;




@end
