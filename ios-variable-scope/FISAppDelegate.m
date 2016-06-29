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

- (NSMutableArray *)arrayByAddingString:(NSString *)string toArray:(NSMutableArray *)array {
    
    NSMutableArray *copyMutableArray = [array mutableCopy];
    
    [copyMutableArray addObject:string];
    
    return copyMutableArray;

}


- (NSUInteger)countOfUppercaseStringsInArray:(NSArray *)array {
    
    NSMutableArray *uppercaseStringsArray = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < [array count]; i ++) {
        
        NSString *currentString = array [i];
        
        NSString *upperString = [currentString uppercaseString];
        
        if ([currentString isEqualToString:upperString]) {
            
            [uppercaseStringsArray addObject:currentString];
        }
    }
    
    return [uppercaseStringsArray count];
}

- (void)removeAllObjectsFromArray:(NSMutableArray *)array {
    
    [array removeAllObjects];

}


@end

