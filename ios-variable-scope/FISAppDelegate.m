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
    
    NSMutableArray *arrayCopy = [array mutableCopy];
    [arrayCopy addObject:string];
    return arrayCopy;
}

- (NSUInteger)countOfUppercaseStringsInArray:(NSArray *)array {
    
    NSUInteger count = 0;
    NSString *string;
    for (NSUInteger i = 0; i < [array count]; i++) {
        string = array[i];
        count += (string.length == [[string componentsSeparatedByCharactersInSet:[NSCharacterSet lowercaseLetterCharacterSet]] componentsJoinedByString:@""].length);
    }
    return count;
}

- (void)removeAllObjectsFromArray:(NSMutableArray *)array {
    
    //
}

@end
