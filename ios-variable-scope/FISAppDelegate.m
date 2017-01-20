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

-(NSMutableArray *)arrayByAddingString:(NSString *)string toArray:(NSMutableArray *)array;{
    NSMutableArray *newArray = [array mutableCopy];
    [newArray addObject:string];
    return newArray;}

-(NSUInteger)countOfUppercaseStringsInArray:(NSArray *)array;{
    NSUInteger x = 0;
    
    for (NSUInteger i = 0; i < [array count]; i++) {
        NSString *stringCheck = array[i];
        
        if ([stringCheck isEqualToString:[stringCheck uppercaseString]]){
            x++;}
        else{
            x = x+0;}
        }
    
    return x;}

-(void)removeAllObjectsFromArray:(NSMutableArray *)array;{
        NSRange r;
        r.location = 0;
        r.length = [array count];
        [array removeObjectsInRange:r];}

@end
