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

// logic for arrayAddingString:toArray method

-(NSMutableArray *)arrayByAddingString:(NSString *)string toArray:(NSMutableArray *)array {
    
    // create copy of incoming array
    
    NSMutableArray *arrayCopy = [array mutableCopy];
    
    [arrayCopy addObject:string];
    
    return arrayCopy;
    
}

-(NSUInteger)countOfUppercaseStringsInArray:(NSArray *)array {
    
    NSUInteger uppcaseStringCount = 0;
    
    NSMutableArray *arrayAgain = [array mutableCopy];
    
    NSUInteger arrayCount = [arrayAgain count];
    
    for (NSUInteger i = 0; i < arrayCount; i++) {
        NSString *stringCopy = [arrayAgain[i] uppercaseString];
        
        if ([stringCopy isEqualToString:arrayAgain[i]]) {
            uppcaseStringCount++;
        }
    }
    
    return uppcaseStringCount;
}

-(void)removeAllObjectsFromArray:(NSMutableArray *)array {
    
    [array removeAllObjects];
}

@end
