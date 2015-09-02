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

- (NSMutableArray *)arrayByAddingString:(NSString *)string toArray:(NSMutableArray *)array {
    
    NSMutableArray *arrayWithAddedString = [[NSMutableArray alloc] initWithArray:array];
    [arrayWithAddedString addObject:string];
    
    return arrayWithAddedString;
}

- (NSUInteger)countOfUppercaseStringsInArray:(NSArray *)array {
    
    NSUInteger numberUppercaseStrings = 0;
    
    for (NSUInteger i = 0; i < [array count]; i++) {
        NSString *currentString = array[i];
        
        if ([currentString.uppercaseString isEqualToString:array[i]]) {
            numberUppercaseStrings++;
        }
    }
    
    return numberUppercaseStrings;
}

- (void)removeAllObjectsFromArray:(NSMutableArray *)array {
    [array removeAllObjects];
}

@end
