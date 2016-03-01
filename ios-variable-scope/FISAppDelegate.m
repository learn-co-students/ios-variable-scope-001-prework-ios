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
    
    NSMutableArray *newArray = [[NSMutableArray alloc]init];
    for (NSUInteger i = 0; i < [array count]; i++) {
        NSString *newString = array[i];
        [newArray addObject:newString];
    }
    [newArray addObject:string];
    return newArray;
}

- (NSUInteger)countOfUppercaseStringsInArray:(NSArray *)array {
    NSUInteger numberOfUppercaseStrings = 0;
    //NSArray *punctuations = @[@".", @",", @"!", @"?", @":", @";", @" "];
    NSUInteger arrayLength = [array count];
    for (NSUInteger i = 0; i < arrayLength; i++) {
        NSString *stringToCheck = array[i];
        NSString *upperCaseString = [array[i] uppercaseString];
        BOOL stringIsUpperCase = [stringToCheck isEqualToString:upperCaseString];
        if (stringIsUpperCase) {
            numberOfUppercaseStrings++;
        }
    }
    return numberOfUppercaseStrings;
}

- (void)removeAllObjectsFromArray:(NSMutableArray *)array {
    for (NSUInteger i = 0; i < [array count]; i++) {
        [array removeObjectAtIndex:i];
        if ([array count] == 1) {
            [array removeObjectAtIndex:0];
        }
    }
    
}

@end
