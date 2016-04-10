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

//description of the method that adds a string to an array without changing the original array
- (NSMutableArray *)arrayByAddingString:(NSString *)string toArray:(NSMutableArray *)array {
    NSMutableArray *returnArray = [[NSMutableArray alloc] init];
    [returnArray addObjectsFromArray:array];
    [returnArray addObject:string];
    return returnArray;
}


//description of the method that counts the uppercased strings in an array
- (NSUInteger)countOfUppercaseStringsInArray:(NSArray *)array {
    NSUInteger count = 0;
    for (NSUInteger i =0; i < [array count]; i++) {
        if ([array[i] isEqualToString:[array[i] uppercaseString]]) {
            count++;
        }
    }
    return count;
}


//description of the method that removes all the objects from an array
- (void)removeAllObjectsFromArray:(NSMutableArray *)array {
    [array removeAllObjects];
}

@end
