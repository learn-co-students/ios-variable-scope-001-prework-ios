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
    NSMutableArray *originalArrayCopy = [array mutableCopy];
    
    [originalArrayCopy addObject:string];
    
    return originalArrayCopy;

}


-(NSUInteger)countOfUppercaseStringsInArray:(NSArray *)array{
    NSUInteger upperCaseCount = 0;
    
    for (NSUInteger i = 0; i < [array count]; i++) {
        NSString *stringForComparison = array [i];
        NSString *uppercasedString = [stringForComparison uppercaseString];
        
        if ([stringForComparison isEqualToString:uppercasedString]) {
            upperCaseCount++;
        }
    }
    return upperCaseCount;

}

-(void)removeAllObjectsFromArray:(NSMutableArray *)array{
    [array removeAllObjects];
}




@end
