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

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    return YES;
}


-(NSMutableArray *)arrayByAddingString:(NSString *)string toArray:(NSMutableArray *)array
{
    NSMutableArray *copy = [NSMutableArray arrayWithArray: (NSMutableArray *)array];
    
    [copy addObject: (NSString *)string];
    
    return copy;
    
}

-(NSUInteger)countOfUppercaseStringsInArray:(NSArray *)array
{
    NSUInteger upperCaseCount = 0;
    
        for (NSString *string in array)
        {
            NSString *upperCaseString = [string uppercaseString];
            if ([upperCaseString isEqualToString:string])
            {
                upperCaseCount ++;
            }
        }
    return upperCaseCount;
}



-(void)removeAllObjectsFromArray:(NSMutableArray *)array
{
    
    [array removeAllObjects];
    
}

@end
