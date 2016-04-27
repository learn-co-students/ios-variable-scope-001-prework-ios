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

/*
 
 * Write your method definitions here.
 
 */

- (NSMutableArray *)arrayByAddingString:(NSString *)string toArray:(NSMutableArray *)array
{
    NSMutableArray *newArray = [[NSMutableArray alloc] initWithArray:array];
    [newArray addObject:string];
    return newArray;
}

- (NSUInteger)countOfUppercaseStringsInArray:(NSArray *)array
{
    NSUInteger uppercaseStringCount = 0;
    for (NSString *string in array) {
        // remove whitespace, punctuation
        NSCharacterSet *lowercaseCharacterSet = [NSCharacterSet lowercaseLetterCharacterSet];
        if ([string rangeOfCharacterFromSet:lowercaseCharacterSet].location == NSNotFound) {
            uppercaseStringCount++;
        }
    }
    return uppercaseStringCount;
}

- (void)removeAllObjectsFromArray:(NSMutableArray *)array
{
    [array removeAllObjects];
}

@end
