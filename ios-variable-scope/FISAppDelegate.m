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


- (NSMutableArray *)arrayByAddingString: (NSString *)str toArray:(NSMutableArray *)arr {
    NSMutableArray *retArr = [[NSMutableArray alloc] initWithArray:arr copyItems:YES];
    [retArr addObject:str];
    return retArr;
}

- (NSUInteger) countOfUppercaseStringsInArray: (NSArray *)arr {
    NSUInteger count = 0;
    for (NSString *str in arr) {
        if ([str.uppercaseString isEqualToString:str]) {
            count+=1;
        }
    }
    return count;
}

- (void) removeAllObjectsFromArray: (NSMutableArray *)arr {
    [arr removeAllObjects];
}

@end
