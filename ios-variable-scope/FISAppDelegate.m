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
    
    NSMutableArray *arrayCopy = [[NSMutableArray alloc] initWithArray:array];
    
    [arrayCopy addObject:string];
    
    return arrayCopy;
    
}

-(NSUInteger)countOfUppercaseStringsInArray:(NSArray *)array{
    
    NSUInteger uppercaseCount = 0;
    
    for(NSUInteger i =0; i < [array count]; i++)
    {
    
        
        BOOL isUpperCase = [[array[i] uppercaseString] isEqualToString:array[i]];
        
        if(isUpperCase)
        {
            uppercaseCount++;
        }
    }
    
    return uppercaseCount;
}

-(void)removeAllObjectsFromArray:(NSMutableArray *)array{
    
    [array removeAllObjects];
}



@end
