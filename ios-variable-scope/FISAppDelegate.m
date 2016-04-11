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
    
    NSMutableArray *arrayCopy = [NSMutableArray arrayWithArray:array];
    [arrayCopy addObject:string];
    return arrayCopy;
}

-(NSUInteger)countOfStringsInAllCapsInArray:(NSArray *)array
{
    NSUInteger allCapCount = 0;
    for(NSString *string in array) {
        
        NSString *capitalizedString = [string uppercaseString];
        if([string isEqualToString:capitalizedString]) {
            allCapCount++;
        }
    }
    
    return allCapCount;
}

-(void)removeAllElementsFromArray:(NSMutableArray *)array
{
    [array removeAllObjects];
}


- (NSUInteger)countOfUppercaseStringsInArray:(NSArray *)array {
    NSMutableArray *uppercaseStrings = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < array.count; i++) {
        NSString *currentString = array[i];
        NSString *upperString = [currentString uppercaseString];
        
        if ([currentString isEqualToString:upperString]) {
            [uppercaseStrings addObject:currentString];
        }
    }
    
    return uppercaseStrings.count;
}

- (void)removeAllObjectsFromArray:(NSMutableArray *)array {
    [array removeAllObjects];
}

@end
