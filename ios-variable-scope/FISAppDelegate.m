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

-(NSMutableArray *)arrayByAddingString:(NSString *)string toArray:(NSMutableArray *)array{
    NSMutableArray *result = [[NSMutableArray alloc] init];
    [result addObjectsFromArray:array];
    [result addObject: string];
    
    return result;
}

-(NSUInteger)countOfUppercaseStringsInArray:(NSArray *)array{
    NSUInteger count = 0;
    
    for (NSUInteger i = 0; i < [array count]; i++)
    {
        NSString *upper = [ [array objectAtIndex:i]uppercaseString];
        if([[array objectAtIndex:i] isEqualToString: upper]){
            
            count ++;
        }
    }
    return count;
    
}
-(void)removeAllObjectsFromArray:(NSMutableArray *)array{
    [array removeAllObjects];
}

@end
