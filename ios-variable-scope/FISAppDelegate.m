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
    NSMutableArray *array2 = [array mutableCopy];
    [array2 addObject:string];
    return array2;
}

-(NSUInteger)countOfUppercaseStringsInArray:(NSArray *)array{
    
    NSUInteger upperCaseStringCount = 0;
    for (NSString *string in array){
        NSString *upperCaseString = [string uppercaseString];
        if ([string isEqualToString:upperCaseString]){
            upperCaseStringCount++;
        }
    } return upperCaseStringCount;
}


-(void)removeAllObjectsFromArray:(NSMutableArray *)array{
    [array removeAllObjects];
}
@end
