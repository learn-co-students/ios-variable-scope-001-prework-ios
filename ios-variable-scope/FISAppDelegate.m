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
    
    NSArray *arrayInit = @[ @"Joe", @"TIM", @"Jim", @"TOM", @"Mark" ];
    NSMutableArray *array = [arrayInit mutableCopy];
    NSString *newString = @"Jake";
    NSArray *arrayWithNewString = [[NSMutableArray alloc] init];
    NSUInteger upperCaseStringCount = 0;
    
    // test the method
    arrayWithNewString = [self arrayByAddingString:newString toArray:array];
    NSLog(@"arrayWithNewString: %@ , %@", newString, arrayWithNewString);
    
    
    upperCaseStringCount = [self countOfUppercaseStringsInArray:array];
    NSLog(@"upperCaseStringCount: %li", upperCaseStringCount);
    
    [self removeAllObjectsFromArray:array];
    NSLog(@"removeAllObjectsFromArray: %@", array);
    
    return YES;
}



-(NSMutableArray *)arrayByAddingString:(NSString *)string toArray:(NSMutableArray *)array{
    NSMutableArray *array2 = [array mutableCopy];
    [array2 addObject:string];
    return array2;
}

-(NSUInteger)countOfUppercaseStringsInArray:(NSArray *)array{
    NSUInteger count = 0;
    
    // evaluate each element in the array and count the upper case strings
    for(NSUInteger i = 0; i < [array count]; i++){
        NSString *currentString = array[i];
        if([currentString.uppercaseString isEqualToString:currentString]){
            count++;
        }
    }
    return count;
}

-(void)removeAllObjectsFromArray:(NSMutableArray *)array{
        [array removeAllObjects];
    }

@end
