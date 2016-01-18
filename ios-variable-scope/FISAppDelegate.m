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
    NSMutableArray *copy = [array mutableCopy];
    [copy addObject:string];
    return copy;
}

-(NSUInteger)countOfUppercaseStringsInArray:(NSArray *)array{
    
    NSUInteger countUC = 0;
    
    for(NSUInteger i = 0; i < [array count]; i++)
    {
        BOOL UpperCase = [array[i] isEqualToString:[array[i] uppercaseString]];
        
        if(UpperCase)
        {
            countUC++;
        }
    }
    
    return countUC;
}

-(void)removeAllObjectsFromArray:(NSMutableArray *)array{
    [array removeAllObjects];
}

/*
 
 * Write your method definitions here.
 
 */

@end
