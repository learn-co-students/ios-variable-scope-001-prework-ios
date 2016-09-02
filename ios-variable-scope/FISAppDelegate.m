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

- (NSMutableArray *)arrayByAddingString:(NSString *)string toArray:(NSMutableArray *)array {
    NSMutableArray *newarray = [array mutableCopy];
    
    [newarray addObject:string];
    return newarray;
}

- (NSUInteger)countOfUppercaseStringsInArray:(NSArray *)array {

    NSUInteger counter = 0;
    
    for (NSUInteger i = 0; i < [array count]; i++) {
        if ([[array[i] uppercaseString] isEqualToString:array[i]]) {
            counter++;
        }
    }
    
    
    return counter;
}

- (void)removeAllObjectsFromArray:(NSMutableArray *)array {
    
    for (NSUInteger i = [array count]; i > 0; i--) {
        [array removeObjectAtIndex:i-1];
    }
    
    return;
}
/*
 
 * Write your method definitions here.
 
 */



@end
