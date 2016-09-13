//
//  FISAppDelegate.m
//  ios-variable-scope
//
//  Created by iOS Staff on 5/12/15
//  Copyright (c) 2015 The Flatiron School. All rights reserved.
//

#import "FISAppDelegate.h"

@interface FISAppDelegate ()

@end


@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    return YES;
}

-(NSMutableArray *)arrayByAddingString:(NSString *)string toArray:(NSMutableArray *)array {
    NSMutableArray *mArray = [array mutableCopy];
    [mArray addObject:string];
    return mArray;
}

-(NSUInteger)countOfUppercaseStringsInArray:(NSArray *)array {
    NSUInteger t = 0;
    NSUInteger count = [array count] - 1;
    for (NSUInteger i = 0; i <= count; i++) {
        NSString *firstword = array[i];
        NSString *allCaps = [firstword uppercaseString];
        if ([firstword isEqualToString:allCaps]) {
            t++;
        };
    };
    return t;
}

-(void)removeAllObjectsFromArray:(NSMutableArray *)array {
    NSUInteger arrayCount = [array count] - 1;
    for (NSUInteger i = arrayCount; i >= 0; i--) {
        [array removeObjectAtIndex:i];
    }
}

@end
