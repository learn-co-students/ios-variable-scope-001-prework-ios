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
    
    NSMutableArray *newArray = [array mutableCopy];
    [newArray addObject: string];
    
    return newArray;
}

-(NSUInteger)countOfUppercaseStringsInArray:(NSArray *)array {
    
    NSMutableArray *upperCaseArray = [NSMutableArray array];
    NSUInteger upperCaseCount = 0;
    NSUInteger i = 0;
    
    while (i < [array count]) {
        i = i + 1;
        NSString *charString = array[i - 1];
        if ([array containsObject:[charString capitalizedString]] || [array containsObject:[charString uppercaseString]]) {
            [upperCaseArray addObject:charString];
            upperCaseCount = [upperCaseArray count];
            
        }
    }
    
    return upperCaseCount;
}

-(void)removeAllObjectsFromArray:(NSMutableArray *)array {
    
    [array removeAllObjects];
}

@end
