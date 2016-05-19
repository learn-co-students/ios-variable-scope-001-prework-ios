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

-(NSMutableArray *)arrayByAddingString:(NSString *)string toArray:(NSMutableArray *)array; {
    
    NSMutableArray *mArray = [array mutableCopy];
    // Original array couldn't be modified so I created a mutableCopy.
    
    [mArray addObject: string];
    
    return mArray;
}

-(NSUInteger)countOfUppercaseStringsInArray:(NSArray *)array; {
    
    NSUInteger stringCount = 0;
    // Declared my stringCount outside of the for loop to ensure I could return it at the end.
    
    NSLog(@"%@", array);
    
    for (NSUInteger i = 0; i < [array count]; i++) {
        
        NSString *arrayString = array[i];
        NSString *uppercaseString = [arrayString uppercaseString];
        // Created these two strings so they can be compared to one another in the next if statement.
        
        if ([arrayString isEqualToString:uppercaseString]) {
            
            stringCount++;
            // stringCount++ just means that the integer will go up 1 every time arrayString isEqualToString:uppercaseString
            
        }
        
    }
    
    return stringCount;
}

-(void)removeAllObjectsFromArray:(NSMutableArray *)array; {
    
    [array removeAllObjects];
    // While the removeAllObjects method isn't given to you, I was able to find it just typing in "remove" into xcode after beginning to format the method.
    
    return;
}

@end
