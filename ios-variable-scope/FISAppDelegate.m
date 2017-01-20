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

-(NSMutableArray *)arrayByAddingString:(NSString *)string toArray:(NSMutableArray *)array {
    NSMutableArray *finalArray = [array mutableCopy];
    [finalArray addObject:string];
    return finalArray;
}

-(NSUInteger) countOfUppercaseStringsInArray:(NSArray *)array{
    
    NSUInteger upperCaseAmount = 0;
    
    for (NSUInteger i = 0; i < [array count]; i++) {
        NSString *upperCaseCompare = array[i];
        upperCaseCompare = [upperCaseCompare uppercaseString];
        
        
        
        if ([upperCaseCompare isEqualToString:array[i]]){
            upperCaseAmount++;
            
            
        }
    }
    return upperCaseAmount;
}

-(void)removeAllObjectsFromArray:(NSMutableArray *)array{
    [array removeAllObjects];
}


@end
