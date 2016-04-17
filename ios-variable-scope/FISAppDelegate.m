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
    
    NSMutableArray *cArray = [array mutableCopy];
//Created a NSMutableArray so we don't alter the original array
    
    [cArray addObject:string];
//Adding string to the array
   
     return cArray;
//Returning the array with the string attached.
    }

- (NSUInteger)countOfUppercaseStringsInArray:(NSArray *)array {
    
    NSMutableArray *cArray = [array mutableCopy];
    
    NSUInteger counter = 0;
//Setting the counter to be returned at the end of the definition
    
    
    for (NSUInteger i = 0; i < [cArray count]; i++) {
//Had to add NSUInteger to define i in this 'for' loop, otherwise i came up undeclared.
        
        NSString *upper = [cArray[i] uppercaseString];
//Uppercase string of original array. This has to be made inside of the loop.
        
        if ([upper isEqualToString:cArray[i]]) {
            counter++;
        }
//If uppercase add to the counter.
    }
     return counter;
}

- (void)removeAllObjectsFromArray:(NSMutableArray *)array {
    
    [array removeAllObjects];
//Emptying the array of all its objects.
//Return nothing
}


/*
 
 * Write your method definitions here.
 
 */

@end
