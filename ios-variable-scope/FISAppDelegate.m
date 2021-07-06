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
    NSMutableArray *newArray = [array mutableCopy];
    [newArray addObject:string];
    
    return newArray;
}

-(NSUInteger)countOfUppercaseStringsInArray:(NSArray *)array {
    NSUInteger numUpcaseStrings = 0;
    
    for (NSUInteger i = 0; i < [array count]; i++) {
        NSString *string = array[i];
        NSString *upcase = [string uppercaseString];
        
        if ( [string isEqualToString:upcase]) {
            numUpcaseStrings++;
        }
    }
    
    return numUpcaseStrings;
}

-(void)removeAllObjectsFromArray:(NSMutableArray *)array {
    [array removeAllObjects];
}
@end
