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
  [[NSMutableArray alloc] initWithArray: array];
    [array addObject:string];
        return array;
}

-(NSUInteger)countOfUppercaseStringsInArray:(NSArray *)array{
    NSArray *countOfUppercaseStringsInArray = @[ @"Anita", @"Alan", @"Ada", @"Aaron", @"Alan", @"Michael", @"Grace", @"Charles"];
    //NSArray *countOfLowercaseStringsInArray = [countOfUppercaseStringsInArray lowercaseArray];
    NSArray *lowercaseArray = [countOfUppercaseStringsInArray valueForKey:@"lowercaseString"];
    NSArray *mixedcaseArray = [countOfUppercaseStringsInArray valueForKey:@"mixedcaseString"];
    
    if (!countOfUppercaseStringsInArray == lowercaseArray || mixedcaseArray){

    for (NSUInteger i = 0; i < [countOfUppercaseStringsInArray count]; i++) {
           return countOfUppercaseStringsInArray[i];
    }
    } else {
        return nil;
    }
}

-(void)removeAllObjectsFromArray:(NSMutableArray *)array{
    [array removeAllObjects];
}

@end
