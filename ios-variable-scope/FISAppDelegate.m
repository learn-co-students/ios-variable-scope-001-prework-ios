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
 
 -(NSMutableArray *)arrayByAddingString:(NSString *)string toArray:(NSMutableArray *)array;
 
 -(NSUInteger)countOfUppercaseStringsInArray:(NSArray *)array;
 
 -(void)removeAllObjectsFromArray:(NSMutableArray *)array;
 */

/**
@param NSMutableArray original array
@param NSString string to add to array
@return an array containing all the contents of the original array with string added to it

* Write your method definitions here.
Note: Add the string to the contents of the mutable array w/o modifying the original array
**/
-(NSMutableArray *)arrayByAddingString:(NSString *)string toArray:(NSMutableArray *)array {
    
    NSMutableArray *newArray = [array mutableCopy];
    [newArray addObject:string];
    return newArray;
}

-(NSUInteger)countOfUppercaseStringsInArray:(NSArray *)array{
    NSUInteger countOfUppercaseStrings = 0;
    for (NSUInteger i = 0; i < [array count]; i++) {
        if([array[i] isEqualToString:[array[i] uppercaseString]]) {
            countOfUppercaseStrings++;
        }
    }
    
    return countOfUppercaseStrings;
}

-(void)removeAllObjectsFromArray:(NSMutableArray *)array {
    if (array && [array count] > 0) {
        [array removeAllObjects];
    }
}

@end
