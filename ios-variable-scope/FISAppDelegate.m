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
    NSMutableArray *newArray = [array mutableCopy];
    [newArray addObject:string];
    return newArray;
}

-(NSUInteger)countOfUppercaseStringsInArray:(NSArray *)array{
    NSMutableArray *uppercaseStringsInArray = [@[] mutableCopy];
    for (NSUInteger i = 0; i < array.count; i++){
        NSString *originalString = array[i];
        NSString *upperString = [originalString uppercaseString];
        if([originalString isEqualToString:upperString]){
            [uppercaseStringsInArray addObject:originalString];
        }
    }
    return uppercaseStringsInArray.count;
}

-(void)removeAllObjectsFromArray:(NSMutableArray *)array{
    [array removeAllObjects];
}
@end
