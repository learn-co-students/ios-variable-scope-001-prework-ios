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

-(NSMutableArray *)arrayByAddingString:(NSString *)string toArray:(NSMutableArray *)array;{
    NSMutableArray *returnedArray= [array mutableCopy];
    [returnedArray addObject:(string)];
    return returnedArray;
}

-(NSUInteger)countOfUppercaseStringsInArray:(NSArray *)array; {
    NSMutableArray *upperCase= [[NSMutableArray alloc] init];
    
    for(NSUInteger i=0; i<array.count; i++) {
        NSString *originalWord= array[i];
        NSString *upperCaseWord= [originalWord uppercaseString];
        if([originalWord isEqualToString:upperCaseWord ]) {
            [upperCase addObject:upperCaseWord];
        }
        
    }
    NSUInteger totalCount= upperCase.count;
    return totalCount;
}

-(void)removeAllObjectsFromArray:(NSMutableArray *)array; {
    [array removeAllObjects];
}
    




/*
 
 * Write your method definitions here.
 
 */

@end
