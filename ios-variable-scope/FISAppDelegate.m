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
    NSString *newString = string;
    [newArray addObject:newString];
    
    return newArray;
}

-(NSUInteger)countOfUppercaseStringsInArray:(NSArray *)array {
    
    NSMutableArray *newArray = [array mutableCopy];
    NSUInteger uppercaseStringCount = 0;
    NSUInteger arrayCount = [newArray count];
    
    for (NSUInteger i = 0; i < arrayCount; i++) {
        NSString *stringCopy = [newArray[i] uppercaseString];
        
        if ([stringCopy isEqualToString:newArray[i]]) {
            uppercaseStringCount++;
        }
    }
    return uppercaseStringCount;
}

-(void)removeAllObjectsFromArray:(NSMutableArray *)array {
    [array removeAllObjects];
}

@end
