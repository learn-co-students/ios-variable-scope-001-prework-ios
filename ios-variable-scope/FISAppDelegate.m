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
    
    NSArray *uppercaseArray = @[ @"OH", @"YES", @"WOOO" ];
    NSUInteger count = [self countOfUppercaseStringsInArray:uppercaseArray];
    NSLog(@"%lu", count);
    
    NSArray *test = @[ @"Hello", @"THIS", @"is" ];
    NSString *testString = [test[1] uppercaseString];
    if ([testString isEqualToString: test[1]])
    {
        NSLog(@"True");
    }
    else
    {
        NSLog(@"False");
    }
    NSLog(@"%@", testString);
    
    //NSMutableArray *testArray = [[NSMutableArray alloc]init];
    NSMutableArray *testArray = [test copy];
    NSLog(@"%@", testArray[1]);
    
    return YES;
}

/*
 
 * Write your method definitions here.
 
 */
-(NSMutableArray *)arrayByAddingString:(NSString *)string toArray:(NSMutableArray *)array;
{
    NSMutableArray *returnArray = [array mutableCopy];
    //returnArray = [array copy];
    [returnArray addObject: string];
    //[array addObject: string];
    return returnArray;
}

-(NSUInteger)countOfUppercaseStringsInArray:(NSArray *)array;
{
    NSUInteger count = 0;
    for (NSUInteger i = 0; i < [array count]; i++)
    {
        
        NSString *upperCase = array[i];
        upperCase = [upperCase uppercaseString];
        if ([upperCase isEqualToString:array[i]])
        {
            //NSUInteger countScope = 1;
            count++;
        }
    
    }
    return count;
}

-(void)removeAllObjectsFromArray:(NSMutableArray *)array;
{
    [array removeAllObjects];
}

@end
