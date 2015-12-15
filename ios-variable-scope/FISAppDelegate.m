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
    NSMutableArray * tempArray = [[NSMutableArray alloc] init];
    for (NSUInteger i = 0; i < [array count]; i++) {
        [tempArray addObject:array[i]];
    }
    [tempArray addObject:string];
    return tempArray;
}

-(NSUInteger)countOfUppercaseStringsInArray:(NSArray *)array {
    NSUInteger count = 0;
    for (NSUInteger i = 0; i < [array count]; i++) {
        NSString * stringToCheck = (NSString *) array[i];
        if ([self isUppercase:stringToCheck]) {
            count++;
        }
    }
    return count;
}

- (void)removeAllObjectsFromArray:(NSMutableArray *)array {
    [array removeAllObjects];
}

- (BOOL)isUppercase:(NSString *)string {
    NSString * uppercaseString = [string uppercaseString];
    return [string isEqualToString:uppercaseString];
}

@end
