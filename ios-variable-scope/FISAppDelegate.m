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
    
    NSMutableArray *newArray = [NSMutableArray arrayWithArray:array];
    
    [newArray addObject:string];
    
    return newArray;
}

-(NSUInteger)countOfUppercaseStringsInArray:(NSArray *)array {
    
    NSUInteger uppercaseStringCount = 0;
    
    for (NSUInteger i = 0; i < [array count]; i++) {
        
        if ([array[i] isEqualToString:[array[i] uppercaseString]]) {
            
            uppercaseStringCount += 1;
        }
    }
    
    return uppercaseStringCount;
}

-(void)removeAllObjectsFromArray:(NSMutableArray *)array {
    
    [array removeAllObjects];
}

@end
