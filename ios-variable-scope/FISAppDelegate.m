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
    
    NSMutableArray *modifiedArray = [[NSMutableArray alloc] initWithArray:array];
    [modifiedArray addObject:string];
    
    return modifiedArray;
}

- (NSUInteger)countOfUppercaseStringsInArray:(NSArray *)array {
    
    NSUInteger uppercaseCount = 0;
    
    for (NSUInteger i = 0; i < [array count]; i++) {
        NSString *string = array[i];
        NSString *uppercaseString = [array[i] uppercaseString];
        
        if ([string isEqualToString:uppercaseString]) {
            uppercaseCount += 1;
        }
    }
    
    return uppercaseCount;
}

- (void)removeAllObjectsFromArray:(NSMutableArray *)array {
    [array removeAllObjects];
}

@end
