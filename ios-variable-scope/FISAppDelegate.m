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

-(NSMutableArray *)arrayByAddingString:(NSString *)string toArray:(NSMutableArray *)array{
    
    NSMutableArray *ret = [[NSMutableArray alloc] initWithArray:array];

    [ret addObject:string];
    
    return ret;
}

-(NSUInteger)countOfUppercaseStringsInArray:(NSArray *)array{
    
    NSUInteger count = 0;
    NSUInteger numStrings = [array count];
    
    for(NSUInteger i = 0; i < numStrings; i++){
        if([array[i] isEqualToString:[array[i] uppercaseString]]){
            count += 1;
        }
    }
    
    
    return count;
}

-(void)removeAllObjectsFromArray:(NSMutableArray *)array{
    [array removeAllObjects];
}

@end
