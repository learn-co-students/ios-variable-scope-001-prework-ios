//
//  FISAppDelegate.m
//  ios-variable-scope
//
//  Created by iOS Staff on 5/12/15
//  Copyright (c) 2015 The Flatiron Scho/Users/wojunfeng/Development/ios-variable-scope-001-prework-ios/ios-variable-scope.xcodeprojol. All rights reserved.
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

-(NSMutableArray *)arrayByAddingString:(NSString *)string toArray:(NSMutableArray *)array{
    NSMutableArray *copyArray =[array mutableCopy];;
    [copyArray addObject:string];
    
    return copyArray;
};

-(NSUInteger)countOfUppercaseStringsInArray:(NSArray *)array{
    NSUInteger count = 0;
    for (NSUInteger i = 0; i < [array count]; i++) {
        if ([array[i] isEqualToString:[array[i] uppercaseString]]) {
            count += 1;
        };
    };

    return count;
};

-(void)removeAllObjectsFromArray:(NSMutableArray *)array{
    [array removeAllObjects];
};

@end
