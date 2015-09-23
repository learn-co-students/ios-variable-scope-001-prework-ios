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

-(NSMutableArray *)arrayByAddingString:(NSString *)string toArray:(NSMutableArray *)array {
    NSMutableArray *result =[array mutableCopy];
    [result addObject:string];
    return result;
}

-(NSUInteger)countOfUppercaseStringsInArray:(NSArray *)array {
    
    NSUInteger result=0;
    
    for (NSUInteger i=0; i<[array count];i++) {
        NSString *test=[array[i] uppercaseString];
        
        NSLog(@"Original value: %@ /n New value: %@",array[i],test);
        
        if ([test isEqualToString:array[i]]) {
            result +=1;
        }
    }
    
    return result;
}

-(void)removeAllObjectsFromArray:(NSMutableArray *)array {
    [array removeAllObjects];
}

@end
